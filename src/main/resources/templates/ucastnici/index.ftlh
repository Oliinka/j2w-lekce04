[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>
<body>

<div class="container">
    [#include '/_common/header.ftlh']

    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col"></th>
            <th scope="col">Jméno</th>
            <th scope="col">Příjmení</th>
            <th scope="col">Bydliště</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list seznamUcastniku as ucastnik]


            <tr>
                <td>${ucastnik?counter}</td>

                <td>
                    [#if ucastnik.gender =="žena"]
                    <i class="las la-venus" style="color: pink;"></i></td>
                    [#elseif ucastnik.gender=="muž"]
                    <i class="las la-mars" style="color: blue;"></i></td>
                    [#else ]
                    <i style="color: black;">non</i></td>
                    [/#if]
                <td>${ucastnik.jmeno}</td>
                <td>${ucastnik.prijmeni}</td>
                <td>[#if ucastnik.bydliste??]${ucastnik.bydliste} [#else]<em><small style ="color: red;" >neuvedeno</small></em>[/#if]</td>
                <td><a href="/ucastnici/detail/${ucastnik?index}" class="btn btn-primary">Detail</a></td>
            </tr>
        [/#list]

        </tbody>
    </table>
</div>
</body>
</html>
