Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_asn?download=true
inline.NumInlined: 12
begin_hunk_0
@.str.135 = private unnamed_addr constant [11 x i8] c"*.evil.com\00", align 1
@.str.136 = private unnamed_addr constant [46 x i8] c"dnsWildPermitted(\22*.evil.com\22, \22example.com\22)\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c".sub.example.com\00", align 1
@.str.138 = private unnamed_addr constant [54 x i8] c"dnsWildPermitted(\22*.example.com\22, \22.sub.example.com\22)\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.140 = private unnamed_addr constant [29 x i8] c"dnsWildPermitted(\22*\22, \22com\22)\00", align 1
@.str.141 = private unnamed_addr constant [52 x i8] c"dnsWildExcluded(\22*.example.com\22, \22foo.example.com\22)\00", align 1
@.str.142 = private unnamed_addr constant [53 x i8] c"dnsWildExcluded(\22*.example.com.\22, \22foo.example.com\22)\00", align 1
@.str.143 = private unnamed_addr constant [53 x i8] c"dnsWildExcluded(\22*.example.com\22, \22foo.example.com.\22)\00", align 1
@.str.144 = private unnamed_addr constant [54 x i8] c"dnsWildExcluded(\22*.example.com.\22, \22foo.example.com.\22)\00", align 1
@.str.145 = private unnamed_addr constant [48 x i8] c"dnsWildExcluded(\22*.example.com\22, \22example.com\22)\00", align 1
@.str.146 = private unnamed_addr constant [40 x i8] c"dnsWildExcluded(\22*.example.com\22, \22com\22)\00", align 1
@.str.147 = private unnamed_addr constant [49 x i8] c"dnsWildExcluded(\22*.example.com\22, \22.example.com\22)\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"foo.*.example.com\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"bar.example.com\00", align 1
@.str.150 = private unnamed_addr constant [56 x i8] c"dnsWildExcluded(\22foo.*.example.com\22, \22bar.example.com\22)\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"ex*.example.com\00", align 1
@.str.152 = private unnamed_addr constant [54 x i8] c"dnsWildExcluded(\22ex*.example.com\22, \22foo.example.com\22)\00", align 1
@.str.153 = private unnamed_addr constant [28 x i8] c"dnsWildExcluded(\22*\22, \22com\22)\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"foo.other.com\00", align 1
@.str.155 = private unnamed_addr constant [50 x i8] c"dnsWildExcluded(\22*.example.com\22, \22foo.other.com\22)\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"*.other.com\00", align 1
@.str.157 = private unnamed_addr constant [46 x i8] c"dnsWildExcluded(\22*.other.com\22, \22example.com\22)\00", align 1
@.str.158 = private unnamed_addr constant [48 x i8] c"dnsWildExcluded(\22*.example.com\22, \22example.org\22)\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c".foo.example.com\00", align 1
@.str.160 = private unnamed_addr constant [53 x i8] c"dnsWildExcluded(\22*.example.com\22, \22.foo.example.com\22)\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"*.com\00", align 1
@.str.162 = private unnamed_addr constant [40 x i8] c"dnsWildExcluded(\22*.com\22, \22example.com\22)\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"a.example.com\00", align 1
@.str.164 = private unnamed_addr constant [42 x i8] c"dnsWildExcluded(\22*.com\22, \22a.example.com\22)\00", align 1
@.str.165 = private unnamed_addr constant [69 x i8] c"wolfssl_local_MatchDnsConstraintWildcard(((void*)0), 5, \22com\22, 3, 1)\00", align 1
@.str.166 = private unnamed_addr constant [71 x i8] c"wolfssl_local_MatchDnsConstraintWildcard(\22*.com\22, 5, ((void*)0), 3, 1)\00", align 1
@.str.167 = private unnamed_addr constant [66 x i8] c"wolfssl_local_MatchDnsConstraintWildcard(\22*.com\22, 0, \22com\22, 3, 1)\00", align 1
@.str.168 = private unnamed_addr constant [66 x i8] c"wolfssl_local_MatchDnsConstraintWildcard(\22*.com\22, 5, \22com\22, 0, 1)\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c".x.com\00", align 1
@.str.170 = private unnamed_addr constant [34 x i8] c"dnsWildPermitted(\22.x.com\22, \22com\22)\00", align 1
@.str.171 = private unnamed_addr constant [33 x i8] c"dnsWildExcluded(\22.x.com\22, \22com\22)\00", align 1
@.str.172 = private unnamed_addr constant [38 x i8] c"dnsWildExcluded(\22*.example.com\22, \22.\22)\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.174 = private unnamed_addr constant [39 x i8] c"dnsWildExcluded(\22*.example.com\22, \22..\22)\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"*..com\00", align 1
@.str.176 = private unnamed_addr constant [33 x i8] c"dnsWildExcluded(\22*..com\22, \22com\22)\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c"https://host.com/path\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"host.com\00", align 1
@.str.179 = private unnamed_addr constant [43 x i8] c"uriNC(\22https://host.com/path\22, \22host.com\22)\00", align 1
@.str.180 = private unnamed_addr constant [17 x i8] c"https://host.com\00", align 1
@.str.181 = private unnamed_addr constant [38 x i8] c"uriNC(\22https://host.com\22, \22host.com\22)\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"https://host.com:8443/x\00", align 1
@.str.183 = private unnamed_addr constant [45 x i8] c"uriNC(\22https://host.com:8443/x\22, \22host.com\22)\00", align 1
@.str.184 = private unnamed_addr constant [22 x i8] c"ftp://user@host.com/x\00", align 1
@.str.185 = private unnamed_addr constant [43 x i8] c"uriNC(\22ftp://user@host.com/x\22, \22host.com\22)\00", align 1
@.str.186 = private unnamed_addr constant [17 x i8] c"https://HOST.COM\00", align 1
@.str.187 = private unnamed_addr constant [38 x i8] c"uriNC(\22https://HOST.COM\22, \22host.com\22)\00", align 1
@.str.188 = private unnamed_addr constant [21 x i8] c"https://host.com?q=1\00", align 1
@.str.189 = private unnamed_addr constant [42 x i8] c"uriNC(\22https://host.com?q=1\22, \22host.com\22)\00", align 1
@.str.190 = private unnamed_addr constant [22 x i8] c"https://host.com#frag\00", align 1
@.str.191 = private unnamed_addr constant [43 x i8] c"uriNC(\22https://host.com#frag\22, \22host.com\22)\00", align 1
@.str.192 = private unnamed_addr constant [22 x i8] c"https://www.host.com/\00", align 1
@.str.193 = private unnamed_addr constant [43 x i8] c"uriNC(\22https://www.host.com/\22, \22host.com\22)\00", align 1
@.str.194 = private unnamed_addr constant [21 x i8] c"https://a.b.host.com\00", align 1
@.str.195 = private unnamed_addr constant [42 x i8] c"uriNC(\22https://a.b.host.com\22, \22host.com\22)\00", align 1
@.str.196 = private unnamed_addr constant [18 x i8] c"https://xhost.com\00", align 1
@.str.197 = private unnamed_addr constant [39 x i8] c"uriNC(\22https://xhost.com\22, \22host.com\22)\00", align 1
@.str.198 = private unnamed_addr constant [26 x i8] c"https://host.com.evil.com\00", align 1
@.str.199 = private unnamed_addr constant [47 x i8] c"uriNC(\22https://host.com.evil.com\22, \22host.com\22)\00", align 1
@.str.200 = private unnamed_addr constant [18 x i8] c"https://other.com\00", align 1
@.str.201 = private unnamed_addr constant [39 x i8] c"uriNC(\22https://other.com\22, \22host.com\22)\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c".host.com\00", align 1
@.str.203 = private unnamed_addr constant [44 x i8] c"uriNC(\22https://www.host.com/\22, \22.host.com\22)\00", align 1
@.str.204 = private unnamed_addr constant [43 x i8] c"uriNC(\22https://a.b.host.com\22, \22.host.com\22)\00", align 1
@.str.205 = private unnamed_addr constant [25 x i8] c"https://www.host.com:443\00", align 1
@.str.206 = private unnamed_addr constant [47 x i8] c"uriNC(\22https://www.host.com:443\22, \22.host.com\22)\00", align 1
@.str.207 = private unnamed_addr constant [39 x i8] c"uriNC(\22https://host.com\22, \22.host.com\22)\00", align 1
@.str.208 = private unnamed_addr constant [21 x i8] c"https://evilhost.com\00", align 1
@.str.209 = private unnamed_addr constant [43 x i8] c"uriNC(\22https://evilhost.com\22, \22.host.com\22)\00", align 1
@.str.210 = private unnamed_addr constant [28 x i8] c"https://[2001:db8::1]:443/x\00", align 1
@.str.211 = private unnamed_addr constant [12 x i8] c"2001:db8::1\00", align 1
@.str.212 = private unnamed_addr constant [52 x i8] c"uriNC(\22https://[2001:db8::1]:443/x\22, \222001:db8::1\22)\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"https://[2001:db8::1]\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"2001:db8::2\00", align 1
@.str.215 = private unnamed_addr constant [46 x i8] c"uriNC(\22https://[2001:db8::1]\22, \222001:db8::2\22)\00", align 1
@.str.216 = private unnamed_addr constant [19 x i8] c"no-scheme-host.com\00", align 1
@.str.217 = private unnamed_addr constant [40 x i8] c"uriNC(\22no-scheme-host.com\22, \22host.com\22)\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.219 = private unnamed_addr constant [30 x i8] c"uriNC(\22https://\22, \22host.com\22)\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"https:///path\00", align 1
@.str.221 = private unnamed_addr constant [38 x i8] c"uriNC(\22https://\22 \22/path\22, \22host.com\22)\00", align 1
@.str.222 = private unnamed_addr constant [68 x i8] c"wolfssl_local_MatchUriNameConstraint(((void*)0), 10, \22host.com\22, 8)\00", align 1
@.str.223 = private unnamed_addr constant [76 x i8] c"wolfssl_local_MatchUriNameConstraint(\22https://host.com\22, 16, ((void*)0), 8)\00", align 1
@.str.224 = private unnamed_addr constant [75 x i8] c"wolfssl_local_MatchUriNameConstraint(\22https://host.com\22, 0, \22host.com\22, 8)\00", align 1
@.str.225 = private unnamed_addr constant [76 x i8] c"wolfssl_local_MatchUriNameConstraint(\22https://host.com\22, 16, \22host.com\22, 0)\00", align 1
@test_wc_DecodeRsaPssParams.pssParamsSha256 = internal constant [54 x i8] c"04\A0\0F0\0D\06\09`\86H\01e\03\04\02\01\05\00\A1\1C0\1A\06\09*\86H\86\F7\0D\01\01\080\0D\06\09`\86H\01e\03\04\02\01\05\00\A2\03\02\01 ", align 16
@test_wc_DecodeRsaPssParams.pssParamsHashOnly = internal constant [19 x i8] c"0\11\A0\0F0\0D\06\09`\86H\01e\03\04\02\01\05\00", align 16
@test_wc_DecodeRsaPssParams.pssParamsSaltOnly = internal constant [7 x i8] c"0\05\A2\03\02\010", align 1
@test_wc_DecodeRsaPssParams.pssParamsNull = internal constant [2 x i8] c"\05\00", align 1
@.str.226 = private unnamed_addr constant [65 x i8] c"wc_DecodeRsaPssParams((const byte*)\22\22, 0, &hash, &mgf, &saltLen)\00", align 1
@.str.227 = private unnamed_addr constant [10 x i8] c"(int)hash\00", align 1
@.str.228 = private unnamed_addr constant [22 x i8] c"(int)WC_HASH_TYPE_SHA\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"mgf\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c"26\00", align 1
@.str.231 = private unnamed_addr constant [8 x i8] c"saltLen\00", align 1
@.str.232 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.233 = private unnamed_addr constant [91 x i8] c"wc_DecodeRsaPssParams(pssParamsNull, (word32)sizeof(pssParamsNull), &hash, &mgf, &saltLen)\00", align 1
@.str.234 = private unnamed_addr constant [99 x i8] c"wc_DecodeRsaPssParams(pssParamsEmptySeq, (word32)sizeof(pssParamsEmptySeq), &hash, &mgf, &saltLen)\00", align 1
@.str.235 = private unnamed_addr constant [95 x i8] c"wc_DecodeRsaPssParams(pssParamsSha256, (word32)sizeof(pssParamsSha256), &hash, &mgf, &saltLen)\00", align 1
@.str.236 = private unnamed_addr constant [25 x i8] c"(int)WC_HASH_TYPE_SHA256\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.238 = private unnamed_addr constant [99 x i8] c"wc_DecodeRsaPssParams(pssParamsHashOnly, (word32)sizeof(pssParamsHashOnly), &hash, &mgf, &saltLen)\00", align 1
@.str.239 = private unnamed_addr constant [99 x i8] c"wc_DecodeRsaPssParams(pssParamsSaltOnly, (word32)sizeof(pssParamsSaltOnly), &hash, &mgf, &saltLen)\00", align 1
@.str.240 = private unnamed_addr constant [3 x i8] c"48\00", align 1
@.str.241 = private unnamed_addr constant [61 x i8] c"wc_DecodeRsaPssParams(((void*)0), 10, &hash, &mgf, &saltLen)\00", align 1
@.str.242 = private unnamed_addr constant [15 x i8] c"(BAD_FUNC_ARG)\00", align 1
@test_wc_DecodeRsaPssParams.badTag = internal constant [2 x i8] c"\01\00", align 1
@.str.243 = private unnamed_addr constant [77 x i8] c"wc_DecodeRsaPssParams(badTag, (word32)sizeof(badTag), &hash, &mgf, &saltLen)\00", align 1
@test_wc_DecodeRsaPssParams.trailerValid = internal constant [7 x i8] c"0\05\A3\03\02\01\01", align 1
@.str.244 = private unnamed_addr constant [89 x i8] c"wc_DecodeRsaPssParams(trailerValid, (word32)sizeof(trailerValid), &hash, &mgf, &saltLen)\00", align 1
@test_wc_DecodeRsaPssParams.trailerTwo = internal constant [7 x i8] c"0\05\A3\03\02\01\02", align 1
@.str.245 = private unnamed_addr constant [85 x i8] c"wc_DecodeRsaPssParams(trailerTwo, (word32)sizeof(trailerTwo), &hash, &mgf, &saltLen)\00", align 1
@test_wc_DecodeRsaPssParams.trailerZero = internal constant [7 x i8] c"0\05\A3\03\02\01\00", align 1
@.str.246 = private unnamed_addr constant [87 x i8] c"wc_DecodeRsaPssParams(trailerZero, (word32)sizeof(trailerZero), &hash, &mgf, &saltLen)\00", align 1
@test_wc_DecodeRsaPssParams.trailerMultiByte = internal constant [8 x i8] c"0\06\A3\04\02\02\01\00", align 1
@.str.247 = private unnamed_addr constant [97 x i8] c"wc_DecodeRsaPssParams(trailerMultiByte, (word32)sizeof(trailerMultiByte), &hash, &mgf, &saltLen)\00", align 1
@test_DecodeAltNames_length_underflow.good_san_cert = internal constant [765 x i8] c"0\82\02\F90\82\01\E1\A0\03\02\01\02\02\02\10!0\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\0F1\0D0\0B\06\03U\04\03\13\04aa110\1E\17\0D160207172400Z\17\0D340214062653Z0\0F1\0D0\0B\06\03U\04\03\13\04aaaa0\82\01 0\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\82\01\0D\000\82\01\08\02\82\01\01\00\A8\8A^&#\1B1\D37\1Ap\B2\EC?t\D4\B4D\E3z\A5\C0\F5\AA\97&\9A\04\FF\DA\BE\E5\09\03\98=\B5\BF\01,\9A\0A:\FB\BC<\E7\BE\83\\\B3p\E8\\\E3\D1\83\C3\94\08\CD\1A\87\E5\E0[\9C\\n\B0}\E2Xl\C3\B5\C8\9D\11\F1]\96\0Df\1EV\7F\8FY\A7\A5\E1\C5\E7\81L\09\9D^\96\F0\9A\C2\8Bp\D5\AByX]\B7X\AA\FDuR\AAK\A7%hvY\00\EEx+\91\C6Y\91\998>\A1v\C3\F5#k\E6\07\EAc\1C\97I\EF\A0\FE\FD\13\C9\A9\9F\C2\0B\E6\87\92[\CC\F5B\95J\A4md\BA}\CE\CB\04\D0\F8\E7\E3\DAu`\D3\8Bjd\FCxV!iZ\E8\A7\8F\FB\8F\82\E3\AE6\A2\93f\92\CB\82\A3\BE\84\00\86\DC~mSw\84\17\B9UC\0D\F1\16\1F\D5Cu\99f\19R\D0\AC_t\AD\B2\90\15P\04tC\DFl5\D0\FD27\B3\8D\F5\E5\09\02\01\03\A3a0_0\0C\06\03U\1D\13\01\01\FF\04\020\000\0F\06\03U\1D\11\04\080\06\82\04a*b*0\1D\06\03U\1D\0E\04\16\04\14\92j\1ER:\1AW\9F\C9\82\9A\CE\C8\C0\A9Q\9D/\C7r0\1F\06\03U\1D#\04\180\16\80\14k\F9\A4-\A5\E99\89\A8$Xy\87\11\FCo\07\91\EF\A60\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\82\01\01\00?\D57/\C7\F8\8B9\1C\E3\DFw\EE\C6K_\84\CF\FA3,\B2\B5K\09\EEV\C0\F2\F0\EB\AD\1C\02\EF\AE\09S\C0\06\ADN\FD>\8C\13\B3\BF\80\056\B5?+\C7`S\14\BF3cG\C3\C6(\DA\10\12\E2\C4\EB\C5df\C0\CCk\84\DA\0C\E9\F6\E3\F8\8E=\95_\BA\9F\E1\C7\EDn\97\CC\BD}\E5N\AB\BC\1B\F1:\093\09\E1\CC\EC!\16\8E\B1t\9E\C8\13|\DF\07\AA\EBp\D7\91\\\C4\EF\83\88\C3\E4\97\FA\E4\DF\D7\0D\FF\BAx\22\FC?\DC\D8\02\8D\93W\F9\9E9:w\00\D9\19\AAh\A1\E6\9E\13\EB7\16\F5w\A4\0B@\04\D3\A5Ix5\FA;\F6\02\AB\85\EE\CB\9Bb\DA\05\00\22/\F8\BD\0B\E5,\B2Sx\0A\CBi\C0\B6\9F\96\FFX\22p\9C\01.V`]7\E3@%\C9\90\C8\0FAh\B4\FD\10\E2\09\99\08]{\C9\E3)\D4Z\CF\C94U\A1@D\D6\88\16\BB\DD", align 16
@.str.248 = private unnamed_addr constant [54 x i8] c"wc_ParseCert(&cert, CERT_TYPE, NO_VERIFY, ((void*)0))\00", align 1
@.str.249 = private unnamed_addr constant [38 x i8] c"./certs/test-serial0/root_serial0.pem\00", align 1
@.str.250 = private unnamed_addr constant [50 x i8] c"./certs/test-serial0/selfsigned_nonca_serial0.pem\00", align 1
@.str.251 = private unnamed_addr constant [15 x i8] c"%s is not null\00", align 1
@.str.252 = private unnamed_addr constant [30 x i8] c"cm = wolfSSL_CertManagerNew()\00", align 1
@.str.253 = private unnamed_addr constant [38 x i8] c"cm = wolfSSL_CertManagerNew() => NULL\00", align 1
@.str.254 = private unnamed_addr constant [59 x i8] c"wolfSSL_CertManagerLoadCA(cm, rootSerial0File, ((void*)0))\00", align 1
@.str.255 = private unnamed_addr constant [16 x i8] c"WOLFSSL_SUCCESS\00", align 1
@.str.256 = private unnamed_addr constant [36 x i8] c"./certs/test-serial0/ee_serial0.pem\00", align 1
@.str.257 = private unnamed_addr constant [35 x i8] c"./certs/test-serial0/ee_normal.pem\00", align 1
@.str.258 = private unnamed_addr constant [67 x i8] c"wolfSSL_CertManagerVerify(cm, eeSerial0File, WOLFSSL_FILETYPE_PEM)\00", align 1
@.str.259 = private unnamed_addr constant [66 x i8] c"wolfSSL_CertManagerVerify(cm, eeNormalFile, WOLFSSL_FILETYPE_PEM)\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"%s != %s\00", align 1
@.str.261 = private unnamed_addr constant [70 x i8] c"wolfSSL_CertManagerLoadCA(cm, selfSignedNonCASerial0File, ((void*)0))\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"%d == %d\00", align 1
@.str.263 = private unnamed_addr constant [46 x i8] c"./certs/test-serial0/intermediate_serial0.pem\00", align 1
@.str.264 = private unnamed_addr constant [67 x i8] c"wolfSSL_CertManagerLoadCA(cm, intermediateSerial0File, ((void*)0))\00", align 1
@.str.266 = private unnamed_addr constant [13 x i8] c"2 + valDerSz\00", align 1
@.str.269 = private unnamed_addr constant [55 x i8] c"outDerSz = SetShortInt(outDer, &inOutIdx, val, maxIdx)\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"outDer[0]\00", align 1
@.str.271 = private unnamed_addr constant [12 x i8] c"ASN_INTEGER\00", align 1
@.str.272 = private unnamed_addr constant [10 x i8] c"outDer[1]\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"valDerSz\00", align 1
@.str.274 = private unnamed_addr constant [41 x i8] c"memcmp((outDer + 2),(valDer),(valDerSz))\00", align 1
@.str.275 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.276 = private unnamed_addr constant [47 x i8] c"GetShortInt(outDer, &inOutIdx, &value, maxIdx)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_SetAsymKeyDer() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_DecodeAsymKey_lenient_versions() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_DecodeAsymKey_negative() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_GetSetShortInt() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [7 x i8], align 4                 ; 49 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.a, i8 0, i64 7, i1 false)
  %i.f = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 0, ptr noundef %i.a, i32 noundef 1)
  store i8 0, ptr %i.a, align 4, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 12 uses
  store i8 -1, ptr %i.g, align 1, !tbaa !9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.thread301, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 255, ptr noundef %i.a, i32 noundef 2)
  store i8 1, ptr %i.a, align 4, !tbaa !9
  store i8 0, ptr %i.g, align 1, !tbaa !9
  %.not275 = icmp eq i32 %i.h, 0
  br i1 %.not275, label %.thread301, label %bb.c

.thread301:                                       ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %.thread310

bb.c:                                             ; preds = %bb.b
  %i.j = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 256, ptr noundef %i.a, i32 noundef 2)
  store i8 0, ptr %i.a, align 4, !tbaa !9
  store i8 -1, ptr %i.g, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 22 uses
  store i8 -1, ptr %i.k, align 2, !tbaa !9
  %.not276 = icmp eq i32 %i.j, 0
  br i1 %.not276, label %.thread310, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 65535, ptr noundef %i.a, i32 noundef 3)
  store i8 1, ptr %i.a, align 4, !tbaa !9
  store i8 0, ptr %i.g, align 1, !tbaa !9
  store i8 0, ptr %i.k, align 2, !tbaa !9
  %.not277 = icmp eq i32 %i.l, 0
  br i1 %.not277, label %.thread310, label %bb.e

.thread310:                                       ; preds = %.thread301, %bb.c, %bb.d
  %.ph309 = phi ptr [ %i.k, %bb.d ], [ %i.i, %.thread301 ], [ %i.k, %bb.c ] ; 2 uses
  store i8 -1, ptr %.ph309, align 1, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %.thread322

bb.e:                                             ; preds = %bb.d
  %i.n = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 65536, ptr noundef %i.a, i32 noundef 3)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 14 uses
  store <4 x i8> <i8 0, i8 -1, i8 -1, i8 -1>, ptr %i.a, align 4, !tbaa !9
  %.not278 = icmp eq i32 %i.n, 0
  br i1 %.not278, label %.thread322, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 16777215, ptr noundef %i.a, i32 noundef 4)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.a, align 4, !tbaa !9
  %.not279 = icmp eq i32 %i.p, 0
  br i1 %.not279, label %.thread322, label %bb.g

.thread322:                                       ; preds = %.thread310, %bb.e, %bb.f
  %.ph320 = phi ptr [ %i.k, %bb.f ], [ %.ph309, %.thread310 ], [ %i.k, %bb.e ]
  %.ph321 = phi ptr [ %i.o, %bb.f ], [ %i.m, %.thread310 ], [ %i.o, %bb.e ] ; 2 uses
  store i8 -1, ptr %.ph321, align 1, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.thread350

bb.g:                                             ; preds = %bb.f
  %i.r = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 16777216, ptr noundef %i.a, i32 noundef 4)
  store i8 0, ptr %i.a, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 13 uses
  %.not280 = icmp eq i32 %i.r, 0
  store i32 -1, ptr %i.g, align 1
  br i1 %.not280, label %.thread350, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call fastcc i32 @test_GetSetShortInt_once(i32 noundef -1, ptr noundef %i.a, i32 noundef 5)
  store i8 127, ptr %i.a, align 4, !tbaa !9
  %.not281 = icmp eq i32 %i.t, 0
  br i1 %.not281, label %.thread350, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 127, ptr noundef %i.a, i32 noundef 1)
  store i8 0, ptr %i.a, align 4, !tbaa !9
  store i8 -128, ptr %i.g, align 1, !tbaa !9
  %.not282 = icmp eq i32 %i.u, 0
  br i1 %.not282, label %.thread350, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 128, ptr noundef %i.a, i32 noundef 2)
  store i8 127, ptr %i.a, align 4, !tbaa !9
  store i8 -1, ptr %i.g, align 1, !tbaa !9
  %.not283 = icmp eq i32 %i.v, 0
  br i1 %.not283, label %.thread350, label %bb.k

.thread350:                                       ; preds = %bb.i, %.thread322, %bb.g, %bb.h, %bb.j
  %.ph347 = phi ptr [ %i.k, %bb.j ], [ %i.k, %bb.i ], [ %i.k, %bb.h ], [ %.ph320, %.thread322 ], [ %i.k, %bb.g ] ; 2 uses
  %.ph348 = phi ptr [ %i.o, %bb.j ], [ %i.o, %bb.i ], [ %i.o, %bb.h ], [ %.ph321, %.thread322 ], [ %i.o, %bb.g ]
  %.ph349 = phi ptr [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ %i.s, %bb.h ], [ %i.q, %.thread322 ], [ %i.s, %bb.g ]
  store i8 0, ptr %.ph347, align 1, !tbaa !9
  br label %.thread371

bb.k:                                             ; preds = %bb.j
  %i.w = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 32767, ptr noundef %i.a, i32 noundef 2)
  store i8 0, ptr %i.a, align 4, !tbaa !9
  store i8 -128, ptr %i.g, align 1, !tbaa !9
  store i8 0, ptr %i.k, align 2, !tbaa !9
  %.not284 = icmp eq i32 %i.w, 0
  br i1 %.not284, label %.thread371, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 32768, ptr noundef %i.a, i32 noundef 3)
  store i8 127, ptr %i.a, align 4, !tbaa !9
  store i8 -1, ptr %i.g, align 1, !tbaa !9
  store i8 -1, ptr %i.k, align 2, !tbaa !9
  %.not285 = icmp eq i32 %i.x, 0
  br i1 %.not285, label %.thread371, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 8388607, ptr noundef %i.a, i32 noundef 3)
  store <4 x i8> <i8 0, i8 -128, i8 0, i8 0>, ptr %i.a, align 4, !tbaa !9
  %.not286 = icmp eq i32 %i.y, 0
  br i1 %.not286, label %.thread371, label %bb.n

.thread371:                                       ; preds = %bb.l, %bb.k, %.thread350, %bb.m
  %.ph368 = phi ptr [ %i.s, %bb.m ], [ %i.s, %bb.l ], [ %.ph349, %.thread350 ], [ %i.s, %bb.k ]
  %.ph369 = phi ptr [ %i.o, %bb.m ], [ %i.o, %bb.l ], [ %.ph348, %.thread350 ], [ %i.o, %bb.k ] ; 2 uses
  %.ph370 = phi ptr [ %i.k, %bb.m ], [ %i.k, %bb.l ], [ %.ph347, %.thread350 ], [ %i.k, %bb.k ]
  store i8 -1, ptr %.ph369, align 1, !tbaa !9
  br label %.thread378

bb.n:                                             ; preds = %bb.m
  %i.z = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 8388608, ptr noundef %i.a, i32 noundef 4)
  store <4 x i8> <i8 127, i8 -1, i8 -1, i8 -1>, ptr %i.a, align 4, !tbaa !9
  %.not287 = icmp eq i32 %i.z, 0
  br i1 %.not287, label %.thread378, label %bb.o

.thread378:                                       ; preds = %bb.n, %.thread371
  %.ph375 = phi ptr [ %.ph370, %.thread371 ], [ %i.k, %bb.n ] ; 2 uses
  %.ph376 = phi ptr [ %.ph369, %.thread371 ], [ %i.o, %bb.n ]
  %.ph377 = phi ptr [ %.ph368, %.thread371 ], [ %i.s, %bb.n ]
  store i8 0, ptr %.ph375, align 1, !tbaa !9
  br label %.thread392

bb.o:                                             ; preds = %bb.n
  %i.aa = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 2147483647, ptr noundef %i.a, i32 noundef 4)
  store <4 x i8> <i8 0, i8 -128, i8 0, i8 0>, ptr %i.a, align 4, !tbaa !9
  store i8 0, ptr %i.s, align 4, !tbaa !9
  %.not288 = icmp eq i32 %i.aa, 0
  br i1 %.not288, label %.thread392, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = call fastcc i32 @test_GetSetShortInt_once(i32 noundef -2147483648, ptr noundef %i.a, i32 noundef 5)
  store i8 1, ptr %i.a, align 4, !tbaa !9
  %.not289 = icmp eq i32 %i.ab, 0
  br i1 %.not289, label %.thread392, label %bb.q

.thread392:                                       ; preds = %.thread378, %bb.o, %bb.p
  %.ph389 = phi ptr [ %i.k, %bb.p ], [ %.ph375, %.thread378 ], [ %i.k, %bb.o ]
  %.ph390 = phi ptr [ %i.o, %bb.p ], [ %.ph376, %.thread378 ], [ %i.o, %bb.o ]
  %.ph391 = phi ptr [ %i.s, %bb.p ], [ %.ph377, %.thread378 ], [ %i.s, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  br label %.thread396.critedge

bb.q:                                             ; preds = %bb.p
  %i.ac = call fastcc i32 @test_GetSetShortInt_once(i32 noundef 1, ptr noundef %i.a, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i8 2, ptr %i.a, align 4, !tbaa !9
  store i8 1, ptr %i.g, align 1, !tbaa !9
  store i8 -128, ptr %i.k, align 2, !tbaa !9
  %.not290 = icmp eq i32 %i.ac, 0
  br i1 %.not290, label %.thread396.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = call i32 @GetShortInt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 3) #8 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -146
  br i1 %i.ae, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 750) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite291 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ai) ; 0 uses
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ad, i32 noundef -146) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite292 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ak) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.am = call i32 @fflush(ptr noundef %i.al)     ; 0 uses
  br label %.thread396.critedge

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %i.b, align 4, !tbaa !10
  store i8 2, ptr %i.a, align 4, !tbaa !9
  store i8 4, ptr %i.g, align 1, !tbaa !9
  store i32 -1, ptr %i.k, align 2
  %i.an = call i32 @GetShortInt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 6) #8 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -146
  br i1 %i.ao, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 760) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite293 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.aq) ; 0 uses
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite294 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.as) ; 0 uses
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.an, i32 noundef -146) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite295 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.au) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.aw = call i32 @fflush(ptr noundef %i.av)     ; 0 uses
  br label %.thread396

.thread396.critedge:                              ; preds = %.thread392, %bb.s, %bb.q
  %.ph398 = phi ptr [ %.ph391, %.thread392 ], [ %i.s, %bb.s ], [ %i.s, %bb.q ]
  %.ph399 = phi ptr [ %.ph390, %.thread392 ], [ %i.o, %bb.s ], [ %i.o, %bb.q ]
  %.ph400 = phi ptr [ %.ph389, %.thread392 ], [ %i.k, %bb.s ], [ %i.k, %bb.q ]
  store i8 -1, ptr %.ph400, align 1, !tbaa !9
  store i8 -1, ptr %.ph399, align 1, !tbaa !9
  store i8 -1, ptr %.ph398, align 1, !tbaa !9
  br label %.thread396

.thread396:                                       ; preds = %.thread396.critedge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 0, ptr %i.e, align 4, !tbaa !10
  store i8 2, ptr %i.a, align 4, !tbaa !9
  store i8 0, ptr %i.g, align 1, !tbaa !9
  %i.ax = call i32 @GetShortInt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 2) #8 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -140
  br i1 %i.ay, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 772) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite296 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ba) ; 0 uses
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite297 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bc) ; 0 uses
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ax, i32 noundef -140) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite298 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.be) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bg = call i32 @fflush(ptr noundef %i.bf)     ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.thread396, %bb.v, %bb.w
  %.22 = phi i32 [ 0, %.thread396 ], [ 0, %bb.w ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_GetSetShortInt_once(i32 noundef range(i32 -1, -2147483647) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 1, 6) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = call i32 @SetShortInt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %0, i32 noundef 7) #8 ; 2 uses
  %i.e = add nuw nsw i32 %2, 2                    ; 2 uses
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 600) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.h) ; 0 uses
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.266) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite222 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.j) ; 0 uses
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.d, i32 noundef %i.e) ; 0 uses
  br label %.sink.split

.critedge:                                        ; preds = %bb.a
  %i.l = load i8, ptr %i.a, align 1, !tbaa !9     ; 2 uses
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %.critedge239, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.n = zext i8 %i.l to i32
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 601) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite224 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.p) ; 0 uses
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.271) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite225 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.r) ; 0 uses
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.n, i32 noundef 2) ; 0 uses
  br label %.sink.split

.critedge239:                                     ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = icmp eq i32 %2, %i.v
  br i1 %i.w, label %.critedge241, label %.critedge237

.critedge237:                                     ; preds = %.critedge239
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 602) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite227 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.y) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.273) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite228 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.aa) ; 0 uses
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.v, i32 noundef %2) ; 0 uses
  br label %.sink.split

.critedge241:                                     ; preds = %.critedge239
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ad = zext nneg i32 %2 to i64
  %i.ae = call i32 @memcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) %1, i64 noundef %i.ad) #9 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.critedge240.thread, label %bb.d

bb.d:                                             ; preds = %.critedge241
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 603) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite230 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.13) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite231 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.aj) ; 0 uses
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ae, i32 noundef 0) ; 0 uses
  br label %.sink.split

.critedge240.thread:                              ; preds = %.critedge241
  %i.al = icmp sgt i32 %0, -1
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.critedge240.thread
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.am = call i32 @GetShortInt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 7) #8 ; 2 uses
  %i.an = icmp eq i32 %0, %i.am
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 607) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite233 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ap) ; 0 uses
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !13
end_hunk_0
