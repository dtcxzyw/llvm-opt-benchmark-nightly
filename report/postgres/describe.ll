Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/describe?download=true
inline.NumInlined: 47
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@describeOneTableDetails:bb.a

bb.ik:                                            ; preds = %bb.ij
  %i.yp = load i8, ptr %i.yn, align 1
  switch i8 %i.yp, label %.critedge1193 [
    i8 79, label %.critedge1195
    i8 116, label %.critedge1195
  ]

bb.il:                                            ; preds = %bb.ij
  %i.yq = load i8, ptr %i.yn, align 1
  switch i8 %i.yq, label %.critedge1193 [
    i8 68, label %.split1251
    i8 102, label %.split1251
  ]

.split1251:                                       ; preds = %bb.il, %bb.il
  %i.yr = load i8, ptr %i.yo, align 1
  %.not1283 = icmp eq i8 %i.yr, 102
  br i1 %.not1283, label %.critedge1195, label %.critedge1193

bb.im:                                            ; preds = %bb.ij
  %i.ys = load i8, ptr %i.yn, align 1
  switch i8 %i.ys, label %.critedge1193 [
    i8 68, label %bb.in
    i8 102, label %bb.in
  ]

.split1253:                                       ; preds = %bb.ij
  %i.yt = load i8, ptr %i.yn, align 1
  %.not1279 = icmp eq i8 %i.yt, 65
  br i1 %.not1279, label %.critedge1195, label %.critedge1193

.split1252:                                       ; preds = %bb.ij
  %i.yu = load i8, ptr %i.yn, align 1
  %.not1277 = icmp eq i8 %i.yu, 82
  br i1 %.not1277, label %.critedge1195, label %.critedge1193

bb.in:                                            ; preds = %bb.im, %bb.im
  %i.yv = load i8, ptr %i.yo, align 1
  %.not1281 = icmp eq i8 %i.yv, 116
  br i1 %.not1281, label %.critedge1195, label %.critedge1193

.critedge1195:                                    ; preds = %.split1253, %.split1252, %.split1251, %bb.ik, %bb.ik, %bb.in
  %i.yw = icmp eq i8 %.09921477, 0
  br i1 %i.yw, label %switch.lookup1647, label %bb.io

switch.lookup1647:                                ; preds = %.critedge1195
  %switch.load1649 = load ptr, ptr %switch.gep1648, align 8
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull %switch.load1649) #7
  %i.yx = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.yx) #7
  br label %bb.io

bb.io:                                            ; preds = %switch.lookup1647, %.critedge1195
  %.1993 = phi i8 [ 1, %switch.lookup1647 ], [ %.09921477, %.critedge1195 ]
  %i.yy = call ptr @PQgetvalue(ptr noundef nonnull %i.yj, i32 noundef %.151476, i32 noundef 1) #7 ; 2 uses
  %i.yz = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.yy, ptr noundef nonnull dereferenceable(1) @.str.966) #8 ; 2 uses
  %.not1168 = icmp eq ptr %i.yz, null
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 9
  %spec.select1196 = select i1 %.not1168, ptr %i.yy, ptr %i.za
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.929, ptr noundef nonnull %spec.select1196) #7
  %i.zb = call i32 @PQgetisnull(ptr noundef nonnull %i.yj, i32 noundef %.151476, i32 noundef 4) #7
  %.not1169 = icmp eq i32 %i.zb, 0
  br i1 %.not1169, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.zc = call ptr @PQgetvalue(ptr noundef nonnull %i.yj, i32 noundef %.151476, i32 noundef 4) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.967, ptr noundef %i.zc) #7
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.zd = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.zd) #7
  br label %.critedge1193

.critedge1193:                                    ; preds = %.split1253, %.split1252, %.split1251, %bb.ij, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.iq
  %.2994 = phi i8 [ %.1993, %bb.iq ], [ %.09921477, %bb.in ], [ %.09921477, %bb.im ], [ %.09921477, %bb.il ], [ %.09921477, %bb.ik ], [ %.09921477, %bb.ij ], [ %.09921477, %.split1251 ], [ %.09921477, %.split1252 ], [ %.09921477, %.split1253 ]
  %i.ze = add nuw nsw i32 %.151476, 1             ; 2 uses
  %exitcond1545.not = icmp eq i32 %i.ze, %i.yk
  br i1 %exitcond1545.not, label %._crit_edge1479, label %bb.ij, !llvm.loop !27

._crit_edge1479:                                  ; preds = %.critedge1193
  %i.zf = add nuw nsw i32 %.09911480, 1           ; 2 uses
  %exitcond1546.not = icmp eq i32 %i.zf, 5
  br i1 %exitcond1546.not, label %.thread1254, label %.preheader, !llvm.loop !28

.thread1254:                                      ; preds = %._crit_edge1479, %bb.ii
  call void @PQclear(ptr noundef nonnull %i.yj) #7
  br label %bb.ir

bb.ir:                                            ; preds = %.thread1254, %.thread1241
  %or.cond152 = or i1 %i.eq, %i.es
  switch i8 %i.x, label %bb.jt [
    i8 116, label %bb.is
    i8 114, label %bb.is
    i8 112, label %bb.is
    i8 109, label %bb.is
    i8 102, label %bb.is
    i8 73, label %bb.is
  ]

bb.is:                                            ; preds = %bb.ir, %bb.ir, %bb.ir, %bb.ir, %bb.ir, %bb.ir
  %i.zg = or i1 %i.eu, %i.fa                      ; 2 uses
  br i1 %i.et, label %bb.it, label %bb.ja

bb.it:                                            ; preds = %bb.is
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.968) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.969, ptr noundef %2) #7
  %i.zh = load ptr, ptr %4, align 8
  %i.zi = call ptr @PSQLexec(ptr noundef %i.zh) #7 ; 6 uses
  %.not1159 = icmp eq ptr %i.zi, null
  br i1 %.not1159, label %.thread1213, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.zj = call i32 @PQntuples(ptr noundef nonnull %i.zi) #7
  %.not1160 = icmp eq i32 %i.zj, 1
  br i1 %.not1160, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  call void @PQclear(ptr noundef nonnull %i.zi) #7
  br label %.thread1213

bb.iw:                                            ; preds = %bb.iu
  %i.zk = call ptr @PQgetvalue(ptr noundef nonnull %i.zi, i32 noundef 0, i32 noundef 0) #7
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.970, ptr noundef %i.zk) #7
  %i.zl = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.zl) #7
  %i.zm = call ptr @PQgetvalue(ptr noundef nonnull %i.zi, i32 noundef 0, i32 noundef 1) #7 ; 3 uses
  %.not1161 = icmp eq ptr %i.zm, null
  br i1 %.not1161, label %bb.iz, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.zn = load i8, ptr %i.zm, align 1
  %.not1162 = icmp eq i8 %i.zn, 0
  br i1 %.not1162, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.971, ptr noundef nonnull %i.zm) #7
  %i.zo = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.zo) #7
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iw, %bb.ix, %bb.iy
  call void @PQclear(ptr noundef nonnull %i.zi) #7
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.is
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.972) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.973, ptr noundef %2) #7
  %i.zp = load ptr, ptr %4, align 8
  %i.zq = call ptr @PSQLexec(ptr noundef %i.zp) #7 ; 4 uses
  %.not1163 = icmp eq ptr %i.zq, null
  br i1 %.not1163, label %.thread1213, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.zr = call i32 @PQntuples(ptr noundef nonnull %i.zq) #7 ; 2 uses
  %i.zs = icmp sgt i32 %i.zr, 0
  br i1 %i.zs, label %.lr.ph1483.preheader, label %._crit_edge1484

.lr.ph1483.preheader:                             ; preds = %bb.jb
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.975, ptr noundef nonnull @.str.974) #7
  %i.zt = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.zt) #7
  br label %.lr.ph1483

.lr.ph1483:                                       ; preds = %.lr.ph1483.preheader, %.lr.ph1483
  %.161481 = phi i32 [ %i.zw, %.lr.ph1483 ], [ 0, %.lr.ph1483.preheader ] ; 2 uses
  %i.zu = call ptr @PQgetvalue(ptr noundef nonnull %i.zq, i32 noundef %.161481, i32 noundef 0) #7
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.929, ptr noundef %i.zu) #7
  %i.zv = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.zv) #7
  %i.zw = add nuw nsw i32 %.161481, 1             ; 2 uses
  %exitcond1547.not = icmp eq i32 %i.zw, %i.zr
  br i1 %exitcond1547.not, label %._crit_edge1484, label %.lr.ph1483, !llvm.loop !29

._crit_edge1484:                                  ; preds = %.lr.ph1483, %bb.jb
  call void @PQclear(ptr noundef nonnull %i.zq) #7
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.976) #7
  %i.zx = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 364), align 4 ; 2 uses
  %i.zy = icmp sgt i32 %i.zx, 139999
  %i.zz = icmp sgt i32 %i.zx, 99999
  %.str.978..str.979 = select i1 %i.zz, ptr @.str.978, ptr @.str.979
  %.str.978.sink = select i1 %i.zy, ptr @.str.977, ptr %.str.978..str.979
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull %.str.978.sink, ptr noundef %2) #7
  %i.aaa = load ptr, ptr %4, align 8
  %i.aab = call ptr @PSQLexec(ptr noundef %i.aaa) #7 ; 8 uses
  %.not1164 = icmp eq ptr %i.aab, null
  br i1 %.not1164, label %.thread1213, label %bb.jc

bb.jc:                                            ; preds = %._crit_edge1484
  %i.aac = call i32 @PQntuples(ptr noundef nonnull %i.aab) #7 ; 4 uses
  %i.aad = icmp eq i32 %i.aac, 0
  %or.cond170 = select i1 %i.zg, i1 %i.aad, i1 false
  br i1 %or.cond170, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.980, i32 noundef 0) #7
  br label %.loopexit.sink.split

bb.je:                                            ; preds = %bb.jc
  %i.aae = icmp sgt i32 %i.aac, 0                 ; 2 uses
  br i1 %3, label %bb.jg, label %11

11:                                               ; preds = %bb.je
  br i1 %i.aae, label %bb.jf, label %.loopexit

bb.jf:                                            ; preds = %11
  %switch.selectcmp.case1 = icmp eq i8 %i.x, 112
  %switch.selectcmp.case2 = icmp eq i8 %i.x, 73
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.aaf = select i1 %switch.selectcmp, ptr @.str.981, ptr @.str.982
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull %i.aaf, i32 noundef %i.aac) #7
  br label %.loopexit.sink.split

bb.jg:                                            ; preds = %bb.je
  br i1 %i.aae, label %.lr.ph1487.preheader, label %.loopexit

.lr.ph1487.preheader:                             ; preds = %bb.jg
  %i.aag = select i1 %i.zg, ptr @.str.983, ptr @.str.984
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.975, ptr noundef nonnull %i.aag) #7
  %i.aah = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.aah) #7
  br label %.lr.ph1487

.lr.ph1487:                                       ; preds = %.lr.ph1487.preheader, %.tail1425.thread
  %.171485 = phi i32 [ %i.aat, %.tail1425.thread ], [ 0, %.lr.ph1487.preheader ] ; 6 uses
  %i.aai = call ptr @PQgetvalue(ptr noundef nonnull %i.aab, i32 noundef %.171485, i32 noundef 1) #7
  %i.aaj = load i8, ptr %i.aai, align 1
  %i.aak = call ptr @PQgetvalue(ptr noundef nonnull %i.aab, i32 noundef %.171485, i32 noundef 0) #7
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.929, ptr noundef %i.aak) #7
  %i.aal = call i32 @PQgetisnull(ptr noundef nonnull %i.aab, i32 noundef %.171485, i32 noundef 3) #7
  %.not1165 = icmp eq i32 %i.aal, 0
  br i1 %.not1165, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %.lr.ph1487
  %i.aam = call ptr @PQgetvalue(ptr noundef nonnull %i.aab, i32 noundef %.171485, i32 noundef 3) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.857, ptr noundef %i.aam) #7
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %.lr.ph1487
  switch i8 %i.aaj, label %sub_01426 [
    i8 112, label %sub_01426.sink.split
    i8 73, label %sub_01426.sink.split
    i8 102, label %bb.jj
  ]

bb.jj:                                            ; preds = %bb.ji
  br label %sub_01426.sink.split

sub_01426.sink.split:                             ; preds = %bb.ji, %bb.ji, %bb.jj
  %.str.986.sink = phi ptr [ @.str.986, %bb.jj ], [ @.str.985, %bb.ji ], [ @.str.985, %bb.ji ]
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull %.str.986.sink) #7
  br label %sub_01426

sub_01426:                                        ; preds = %sub_01426.sink.split, %bb.ji
  %i.aan = call ptr @PQgetvalue(ptr noundef nonnull %i.aab, i32 noundef %.171485, i32 noundef 2) #7 ; 2 uses
  %i.aao = load i8, ptr %i.aan, align 1
  %.not1526 = icmp eq i8 %i.aao, 116
  br i1 %.not1526, label %.tail1425, label %.tail1425.thread

.tail1425:                                        ; preds = %sub_01426
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 1
  %i.aaq = load i8, ptr %i.aap, align 1
  %i.aar = icmp eq i8 %i.aaq, 0
  br i1 %i.aar, label %bb.jk, label %.tail1425.thread

bb.jk:                                            ; preds = %.tail1425
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull @.str.987) #7
  br label %.tail1425.thread

.tail1425.thread:                                 ; preds = %sub_01426, %bb.jk, %.tail1425
  %i.aas = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.aas) #7
  %i.aat = add nuw nsw i32 %.171485, 1            ; 2 uses
  %exitcond1548.not = icmp eq i32 %i.aat, %i.aac
  br i1 %exitcond1548.not, label %.loopexit, label %.lr.ph1487, !llvm.loop !30

.loopexit.sink.split:                             ; preds = %bb.jd, %bb.jf
  %i.aau = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.aau) #7
  br label %.loopexit

.loopexit:                                        ; preds = %.tail1425.thread, %.loopexit.sink.split, %bb.jg, %11
  call void @PQclear(ptr noundef nonnull %i.aab) #7
  %.not1166 = icmp eq ptr %i.bw, null
  br i1 %.not1166, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %.loopexit
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.988, ptr noundef nonnull %i.bw) #7
  %i.aav = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.aav) #7
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %.loopexit
  %i.aaw = icmp ne i32 %i.ci, 105
  %i.aax = select i1 %3, i1 %or.cond152, i1 false
  %or.cond1198 = select i1 %i.aax, i1 %i.aaw, i1 false
  br i1 %or.cond1198, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.aay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.989) #8
  %.not1645 = icmp eq i32 %i.aay, 0
  %or.cond1642.v = select i1 %.not1645, i32 110, i32 100
  %or.cond1642 = icmp eq i32 %i.ci, %or.cond1642.v
  br i1 %or.cond1642, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.aaz = icmp eq i32 %i.ci, 100
  %i.aba = icmp eq i32 %i.ci, 102
  %i.abb = select i1 %i.aaz, ptr @.str.993, ptr @.str.811
  %i.abc = select i1 %i.aba, ptr @.str.992, ptr %i.abb
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.991, ptr noundef nonnull @.str.990, ptr noundef nonnull %i.abc) #7
  %i.abd = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.abd) #7
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jn, %bb.jo, %bb.jm
  %.not1552 = xor i1 %i.es, true
  %or.cond193 = select i1 %3, i1 %.not1552, i1 false
  %or.cond196 = select i1 %or.cond193, i1 %i.bh, i1 false
  br i1 %or.cond196, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef nonnull @.str.994) #7
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  call fastcc void @add_tablespace_footer(ptr noundef %6, i8 noundef signext %i.x, i32 noundef %i.bs, i1 noundef zeroext true)
  %i.abe = icmp eq ptr %.sroa.107636.0, null
  %not. = xor i1 %3, true
  %or.cond199 = select i1 %not., i1 true, i1 %i.abe
  %i.abf = load i8, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 438), align 2, !range !6
  %i.abg = trunc nuw i8 %i.abf to i1
  %or.cond201 = select i1 %or.cond199, i1 true, i1 %i.abg
  br i1 %or.cond201, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.995, ptr noundef nonnull %.sroa.107636.0) #7
  %i.abh = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.abh) #7
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr, %bb.ir
  %i.abi = icmp ne ptr %i.bp, null
  %or.cond204 = select i1 %3, i1 %i.abi, i1 false
  br i1 %or.cond204, label %bb.ju, label %bb.jw

bb.ju:                                            ; preds = %bb.jt
  %i.abj = load i8, ptr %i.bp, align 1
  %.not1167 = icmp eq i8 %i.abj, 0
  br i1 %.not1167, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str.991, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.bp) #7
  %i.abk = load ptr, ptr %4, align 8
  call void @printTableAddFooter(ptr noundef nonnull %6, ptr noundef %i.abk) #7
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju, %bb.jt
  %i.abl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 16), align 8
  %i.abm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 408), align 8
  call void @printTable(ptr noundef nonnull %6, ptr noundef %i.abl, i1 noundef zeroext false, ptr noundef %i.abm) #7
  br label %.thread1213

.thread1213:                                      ; preds = %bb.it, %bb.iv, %bb.ja, %._crit_edge1484, %bb.ei, %bb.er, %bb.fa, %bb.fh, %bb.gb, %bb.fl, %bb.go, %bb.gv, %bb.hp, %bb.hv, %bb.hx, %bb.dv, %bb.dx, %bb.jw, %bb.ie, %bb.ia, %bb.ds, %bb.do, %bb.dg, %bb.ih
  %.31013.ph = phi ptr [ %.210121244, %bb.ih ], [ null, %bb.dg ], [ null, %bb.do ], [ null, %bb.dv ], [ %.210121244, %bb.jw ], [ null, %bb.ds ], [ null, %bb.ia ], [ %i.xr, %bb.ie ], [ null, %bb.ei ], [ null, %bb.dx ], [ null, %bb.hx ], [ null, %bb.hv ], [ null, %bb.hp ], [ null, %bb.gv ], [ null, %bb.go ], [ null, %bb.fl ], [ null, %bb.gb ], [ null, %bb.fh ], [ null, %bb.fa ], [ null, %bb.er ], [ %.210121244, %._crit_edge1484 ], [ %.210121244, %bb.ja ], [ %.210121244, %bb.iv ], [ %.210121244, %bb.it ]
  %.2.ph = phi i1 [ false, %bb.ih ], [ false, %bb.dg ], [ false, %bb.do ], [ false, %bb.dv ], [ true, %bb.jw ], [ false, %bb.ds ], [ false, %bb.ia ], [ false, %bb.ie ], [ false, %bb.ei ], [ false, %bb.dx ], [ false, %bb.hx ], [ false, %bb.hv ], [ false, %bb.hp ], [ false, %bb.gv ], [ false, %bb.go ], [ false, %bb.fl ], [ false, %bb.gb ], [ false, %bb.fh ], [ false, %bb.fa ], [ false, %bb.er ], [ false, %._crit_edge1484 ], [ false, %bb.ja ], [ false, %bb.iv ], [ false, %bb.it ]
  call void @printTableCleanup(ptr noundef nonnull %6) #7
  br label %bb.jx

bb.jx:                                            ; preds = %bb.j, %bb.m, %bb.l, %bb.bj, %bb.al, %bb.at, %.thread1213
  %.21273 = phi i1 [ %.2.ph, %.thread1213 ], [ false, %bb.l ], [ false, %bb.m ], [ %.0988, %bb.al ], [ %.not1170, %bb.at ], [ false, %bb.bj ], [ false, %bb.j ]
  %.09951271 = phi ptr [ %i.fo, %.thread1213 ], [ %i.p, %bb.l ], [ %i.p, %bb.m ], [ %i.cp, %bb.al ], [ %i.dx, %bb.at ], [ null, %bb.bj ], [ null, %bb.j ]
  %.310131269 = phi ptr [ %.31013.ph, %.thread1213 ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.al ], [ null, %bb.at ], [ null, %bb.bj ], [ null, %bb.j ]
  call void @termPQExpBuffer(ptr noundef nonnull %4) #7
  call void @termPQExpBuffer(ptr noundef nonnull %7) #7
  call void @termPQExpBuffer(ptr noundef nonnull %8) #7
  call void @free(ptr noundef %.310131269) #7
  call void @PQclear(ptr noundef %.09951271) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i1 %.21273
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @describeRoles(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PQExpBufferData, align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.PQExpBufferData, align 8    ; 39 uses
  %5 = alloca %struct.printTableContent, align 8  ; 13 uses
  %6 = alloca %struct.printTableOpt, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(120) getelementptr inbounds nuw (i8, ptr @pset, i64 48), i64 120, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.b, align 1
  call void @initPQExpBuffer(ptr noundef nonnull %4) #7
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.217) #7
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull @.str.218) #7
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull @.str.219) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.057 = phi i32 [ 3, %bb.b ], [ 2, %bb.a ]
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull @.str.220) #7
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 364), align 4
  %i.d = icmp sgt i32 %i.c, 90499
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull @.str.221) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull @.str.222) #7
  %i.e = icmp ne ptr %0, null
  %or.cond = or i1 %i.e, %2
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull @.str.223) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @initPQExpBuffer(ptr noundef nonnull %3) #7
  %i.f = load ptr, ptr @pset, align 8
  %i.g = call zeroext i1 @processSQLNamePattern(ptr noundef %i.f, ptr noundef nonnull %4, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4
  %.not19.i = icmp slt i32 %i.h, 1
  br i1 %.not19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.1035, ptr noundef %0) #7
  call void @termPQExpBuffer(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @termPQExpBuffer(ptr noundef nonnull %4) #7
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  call void @termPQExpBuffer(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull @.str.26) #7
  %i.i = load ptr, ptr %4, align 8
  %i.j = call ptr @PSQLexec(ptr noundef %i.i) #7  ; 15 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = call i32 @PQntuples(ptr noundef nonnull %i.j) #7 ; 5 uses
  %i.l = add i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = call ptr @pg_malloc0_mul(i64 noundef 8, i64 noundef %i.m) #7 ; 3 uses
  call void @printTableInit(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @.str.225, i32 noundef %.057, i32 noundef %i.k) #7
  call void @printTableAddHeader(ptr noundef nonnull %5, ptr noundef nonnull @.str.226, i1 noundef zeroext true, i8 noundef signext 108) #7
  call void @printTableAddHeader(ptr noundef nonnull %5, ptr noundef nonnull @.str.227, i1 noundef zeroext true, i8 noundef signext 108) #7
  br i1 %1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @printTableAddHeader(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, i1 noundef zeroext true, i8 noundef signext 108) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %sub_0.lr.ph, label %._crit_edge107.critedge

sub_0.lr.ph:                                      ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.q = select i1 %1, i32 9, i32 8
  %i.r = select i1 %1, i32 10, i32 9
  %wide.trip.count = zext nneg i32 %i.k to i64
end_hunk_0
