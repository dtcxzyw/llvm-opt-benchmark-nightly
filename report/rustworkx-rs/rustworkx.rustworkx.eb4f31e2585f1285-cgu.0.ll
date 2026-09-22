Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_NtB1m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB2r_3err5PyErrEB3Q_:bb.a

bb.kn:                                            ; preds = %bb.kr, %bb.kq, %bb.kx, %bb.kv, %bb.ko, %bb.km
  %i.bey = icmp ult i64 %i.bca, %i.gb
  br i1 %i.bey, label %bb.jk, label %._crit_edge4389

bb.ko:                                            ; preds = %bb.km
  %i.bez = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.sroa.0170.04387
  %i.bfa = load i64, ptr %i.bez, align 8, !range !68, !noundef !67
  %.not341 = icmp eq i64 %i.bfa, 0
  br i1 %.not341, label %bb.kp, label %bb.kn

bb.kp:                                            ; preds = %bb.ko
  %i.bfb = load i64, ptr %.sroa.6132.0..sroa_idx, align 8, !noundef !67 ; 2 uses
  %i.bfc = icmp ult i64 %.sroa.0170.04387, %i.bfb
  br i1 %i.bfc, label %bb.kq, label %.invoke14883

bb.kq:                                            ; preds = %bb.kp
  %i.bfd = load ptr, ptr %i.md, align 8, !nonnull !67, !noundef !67
  %i.bfe = getelementptr inbounds nuw [16 x i8], ptr %i.bfd, i64 %.sroa.0170.04387 ; 2 uses
  %i.bff = load i64, ptr %i.bfe, align 8, !range !68, !noundef !67
  %i.bfg = trunc nuw i64 %i.bff to i1
  br i1 %i.bfg, label %bb.kr, label %bb.kn

bb.kr:                                            ; preds = %bb.kq
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfe, i64 8
  %i.bfi = load i64, ptr %i.bfh, align 8, !noundef !67
  switch i64 %i.bfi, label %bb.kn [
    i64 1, label %bb.ks
    i64 2, label %bb.kt
  ]

bb.ks:                                            ; preds = %bb.kr
  br i1 %i.bbx, label %bb.kw, label %.invoke14887, !prof !77

bb.kt:                                            ; preds = %bb.kr
  br i1 %i.bbx, label %bb.ku, label %.invoke14887, !prof !77

bb.ku:                                            ; preds = %bb.kt
  %i.bfj = icmp ult i64 %.sroa.0170.04387, %i.bby
  br i1 %i.bfj, label %bb.kv, label %.invoke14883

bb.kv:                                            ; preds = %bb.ku
  %i.bfk = getelementptr inbounds nuw [16 x i8], ptr %i.bbz, i64 %.sroa.0170.04387 ; 2 uses
  %i.bfl = load i128, ptr %i.bfk, align 16, !noundef !67
  %i.bfm = sub i128 %i.bfl, %.sroa.13.4
  store i128 %i.bfm, ptr %i.bfk, align 16
  br label %bb.kn

bb.kw:                                            ; preds = %bb.ks
  %i.bfn = icmp ult i64 %.sroa.0170.04387, %i.bby
  br i1 %i.bfn, label %bb.kx, label %.invoke14883

bb.kx:                                            ; preds = %bb.kw
  %i.bfo = getelementptr inbounds nuw [16 x i8], ptr %i.bbz, i64 %.sroa.0170.04387 ; 2 uses
  %i.bfp = load i128, ptr %i.bfo, align 16, !noundef !67
  %i.bfq = add i128 %i.bfp, %.sroa.13.4
  store i128 %i.bfq, ptr %i.bfo, align 16
  br label %bb.kn

bb.ky:                                            ; preds = %bb.lf, %.lr.ph4386
  %.sroa.0168.04384 = phi i64 [ 0, %.lr.ph4386 ], [ %i.bfr, %bb.lf ] ; 8 uses
  %i.bfr = add nuw i64 %.sroa.0168.04384, 1       ; 2 uses
  %i.bfs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0168.04384
  %i.bft = load i64, ptr %i.bfs, align 8, !noundef !67 ; 3 uses
  %i.bfu = load i64, ptr %.sroa.6132.0..sroa_idx, align 8, !noundef !67 ; 2 uses
  %i.bfv = icmp ult i64 %i.bft, %i.bfu
  br i1 %i.bfv, label %bb.kz, label %.invoke14883

bb.kz:                                            ; preds = %bb.ky
  %i.bfw = load ptr, ptr %i.md, align 8, !nonnull !67, !noundef !67
  %i.bfx = getelementptr inbounds nuw [16 x i8], ptr %i.bfw, i64 %i.bft ; 2 uses
  %i.bfy = load i64, ptr %i.bfx, align 8, !range !68, !noundef !67
  %i.bfz = trunc nuw i64 %i.bfy to i1
  br i1 %i.bfz, label %bb.la, label %bb.lf

bb.la:                                            ; preds = %bb.kz
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8
  %i.bgb = load i64, ptr %i.bga, align 8, !noundef !67
  switch i64 %i.bgb, label %bb.lf [
    i64 1, label %bb.lb
    i64 2, label %bb.lc
  ]

bb.lb:                                            ; preds = %bb.la
  br i1 %i.bbu, label %bb.lg, label %.invoke14887, !prof !77

bb.lc:                                            ; preds = %bb.la
  br i1 %i.bbu, label %bb.ld, label %.invoke14887, !prof !77

bb.ld:                                            ; preds = %bb.lc
  %i.bgc = icmp ult i64 %.sroa.0168.04384, %i.bbv
  br i1 %i.bgc, label %bb.le, label %.invoke14883

bb.le:                                            ; preds = %bb.ld
  %i.bgd = getelementptr inbounds nuw [16 x i8], ptr %i.bbw, i64 %.sroa.0168.04384 ; 2 uses
  %i.bge = load i128, ptr %i.bgd, align 16, !noundef !67
  %i.bgf = add i128 %i.bge, %.sroa.13.4
  store i128 %i.bgf, ptr %i.bgd, align 16
  br label %bb.lf

bb.lf:                                            ; preds = %bb.la, %bb.kz, %bb.le, %bb.lh
  %exitcond7471.not = icmp eq i64 %i.bfr, %.val.i491
  br i1 %exitcond7471.not, label %.lr.ph4388, label %bb.ky

bb.lg:                                            ; preds = %bb.lb
  %i.bgg = icmp ult i64 %.sroa.0168.04384, %i.bbv
  br i1 %i.bgg, label %bb.lh, label %.invoke14883

bb.lh:                                            ; preds = %bb.lg
  %i.bgh = getelementptr inbounds nuw [16 x i8], ptr %i.bbw, i64 %.sroa.0168.04384 ; 2 uses
  %i.bgi = load i128, ptr %i.bgh, align 16, !noundef !67
  %i.bgj = sub i128 %i.bgi, %.sroa.13.4
  store i128 %i.bgj, ptr %i.bgh, align 16
  br label %bb.lf

bb.li:                                            ; preds = %bb.jf
  %i.bgk = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %.sroa.0166.04371
  %i.bgl = load i64, ptr %i.bgk, align 8, !range !68, !noundef !67
  %.not342 = icmp eq i64 %i.bgl, 0
  br i1 %.not342, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.ls, %bb.lm, %bb.ln, %bb.lk, %bb.li
  %.sroa.078.5.off0 = phi i64 [ %.sroa.078.3.off04373, %bb.li ], [ 1, %bb.ls ], [ %.sroa.078.3.off04373, %bb.ln ], [ %.sroa.078.3.off04373, %bb.lm ], [ %.sroa.078.3.off04373, %bb.lk ] ; 2 uses
  %i.bgm = icmp ult i64 %i.bay, %i.gb
  br i1 %i.bgm, label %bb.jf, label %._crit_edge4378

.thread7836:                                      ; preds = %bb.lq
  %i.bgn = getelementptr inbounds nuw [16 x i8], ptr %i.baw, i64 %.sroa.0166.04371
  %i.bgo = load i128, ptr %i.bgn, align 16, !noundef !67 ; 2 uses
  %i.bgp = icmp ult i64 %i.bay, %i.gb
  br i1 %i.bgp, label %.outer, label %.lr.ph4386

.outer:                                           ; preds = %.thread7836, %.lr.ph4377
  %.sroa.040.34376.ph = phi i32 [ 4, %.thread7836 ], [ %.sroa.040.6, %.lr.ph4377 ] ; 3 uses
  %.sroa.075.04375.ph = phi i1 [ true, %.thread7836 ], [ false, %.lr.ph4377 ] ; 2 uses
  %.sroa.376.04374.ph = phi i64 [ %.sroa.0166.04371, %.thread7836 ], [ undef, %.lr.ph4377 ] ; 2 uses
  %.sroa.078.3.off04373.ph = phi i64 [ 1, %.thread7836 ], [ %.sroa.078.6.off0, %.lr.ph4377 ]
  %.sroa.13.34372.ph = phi i128 [ %i.bgo, %.thread7836 ], [ %.sroa.13.6, %.lr.ph4377 ] ; 2 uses
  %.sroa.0166.04371.ph = phi i64 [ %i.bay, %.thread7836 ], [ %.val.i491, %.lr.ph4377 ]
  %i.bgq = icmp eq i32 %.sroa.040.34376.ph, -1
  br label %bb.jf

bb.lk:                                            ; preds = %bb.li
  %i.bgr = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.sroa.0166.04371
  %i.bgs = load i64, ptr %i.bgr, align 8, !range !68, !noundef !67
  %.not343 = icmp eq i64 %i.bgs, 0
  br i1 %.not343, label %bb.ll, label %bb.lj

bb.ll:                                            ; preds = %bb.lk
  %i.bgt = icmp ult i64 %.sroa.0166.04371, %i.bat
  br i1 %i.bgt, label %bb.lm, label %.invoke14883

bb.lm:                                            ; preds = %bb.ll
  %i.bgu = getelementptr inbounds nuw [16 x i8], ptr %i.bau, i64 %.sroa.0166.04371 ; 2 uses
  %i.bgv = load i64, ptr %i.bgu, align 8, !range !68, !noundef !67
  %i.bgw = trunc nuw i64 %i.bgv to i1
  br i1 %i.bgw, label %bb.ln, label %bb.lj

bb.ln:                                            ; preds = %bb.lm
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgu, i64 8
  %i.bgy = load i64, ptr %i.bgx, align 8, !noundef !67
  %i.bgz = icmp eq i64 %i.bgy, 2
  br i1 %i.bgz, label %bb.lo, label %bb.lj

bb.lo:                                            ; preds = %bb.ln
  br i1 %i.bgq, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.bha = icmp ult i64 %.sroa.0166.04371, %.pre7483
  br i1 %i.bha, label %bb.lr, label %.invoke14883

bb.lq:                                            ; preds = %bb.ls, %bb.lo
  %i.bhb = icmp ult i64 %.sroa.0166.04371, %.pre7483
  br i1 %i.bhb, label %.thread7836, label %.invoke14883

bb.lr:                                            ; preds = %bb.lp
  %i.bhc = trunc nuw i64 %.sroa.078.3.off04373 to i1
  br i1 %i.bhc, label %bb.ls, label %.invoke14887, !prof !77

bb.ls:                                            ; preds = %bb.lr
  %i.bhd = getelementptr inbounds nuw [16 x i8], ptr %i.baw, i64 %.sroa.0166.04371
  %i.bhe = load i128, ptr %i.bhd, align 16, !noundef !67
  %i.bhf = icmp slt i128 %i.bhe, %.sroa.13.34372.ph
  br i1 %i.bhf, label %bb.lq, label %bb.lj

.invoke14887:                                     ; preds = %bb.kh, %bb.jy, %bb.jl, %bb.lb, %bb.lc, %bb.ks, %bb.kt, %bb.lr
  %i.bhg = phi ptr [ @448, %bb.lb ], [ @453, %bb.lr ], [ @443, %bb.ks ], [ @441, %bb.kt ], [ @446, %bb.lc ], [ @438, %bb.kh ], [ @423, %bb.jl ], [ @432, %bb.jy ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bhg) #61
          to label %.cont14888 unwind label %.loopexit.split-lp463.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont14888:                                       ; preds = %.invoke14887
  unreachable

bb.lt:                                            ; preds = %.lr.ph4365, %bb.lu
  %.sroa.040.24364 = phi i32 [ %.sroa.040.7, %.lr.ph4365 ], [ %.sroa.040.6, %bb.lu ] ; 6 uses
  %.sroa.060.14363 = phi i64 [ %.sroa.060.3, %.lr.ph4365 ], [ %.sroa.060.2, %bb.lu ] ; 5 uses
  %.sroa.764.14362 = phi i64 [ %.sroa.764.3, %.lr.ph4365 ], [ %.sroa.764.2, %bb.lu ] ; 5 uses
  %.sroa.078.2.off04361 = phi i64 [ %.sroa.078.7.off0, %.lr.ph4365 ], [ %.sroa.078.6.off0, %bb.lu ] ; 6 uses
  %.sroa.13.24360 = phi i128 [ %.sroa.13.7, %.lr.ph4365 ], [ %.sroa.13.6, %bb.lu ] ; 6 uses
  %.sroa.0163.04359 = phi i64 [ 0, %.lr.ph4365 ], [ %i.bhh, %bb.lu ] ; 8 uses
  %i.bhh = add nuw i64 %.sroa.0163.04359, 1       ; 2 uses
  %i.bhi = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.sroa.0163.04359
  %i.bhj = load i64, ptr %i.bhi, align 8, !range !68, !noundef !67
  %.not344 = icmp eq i64 %i.bhj, 0
  br i1 %.not344, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.me, %bb.mf, %bb.lw, %bb.lz, %bb.lx, %bb.lt
  %.sroa.13.6 = phi i128 [ %i.bio, %bb.mf ], [ %.sroa.13.24360, %bb.me ], [ %.sroa.13.24360, %bb.lz ], [ %.sroa.13.24360, %bb.lx ], [ %.sroa.13.24360, %bb.lw ], [ %.sroa.13.24360, %bb.lt ] ; 2 uses
  %.sroa.078.6.off0 = phi i64 [ 1, %bb.mf ], [ %.sroa.078.2.off04361, %bb.me ], [ %.sroa.078.2.off04361, %bb.lz ], [ %.sroa.078.2.off04361, %bb.lx ], [ %.sroa.078.2.off04361, %bb.lw ], [ %.sroa.078.2.off04361, %bb.lt ] ; 2 uses
  %.sroa.764.2 = phi i64 [ %i.bhv, %bb.mf ], [ %.sroa.764.14362, %bb.me ], [ %.sroa.764.14362, %bb.lz ], [ %.sroa.764.14362, %bb.lx ], [ %.sroa.764.14362, %bb.lw ], [ %.sroa.764.14362, %bb.lt ] ; 13 uses
  %.sroa.060.2 = phi i64 [ 1, %bb.mf ], [ %.sroa.060.14363, %bb.me ], [ %.sroa.060.14363, %bb.lz ], [ %.sroa.060.14363, %bb.lx ], [ %.sroa.060.14363, %bb.lw ], [ %.sroa.060.14363, %bb.lt ] ; 3 uses
  %.sroa.040.6 = phi i32 [ 3, %bb.mf ], [ %.sroa.040.24364, %bb.me ], [ %.sroa.040.24364, %bb.lz ], [ %.sroa.040.24364, %bb.lx ], [ %.sroa.040.24364, %bb.lw ], [ %.sroa.040.24364, %bb.lt ] ; 2 uses
  %exitcond7468.not = icmp eq i64 %i.bhh, %i.gb
  br i1 %exitcond7468.not, label %.lr.ph4377, label %bb.lt

bb.lv:                                            ; preds = %bb.lt
  %i.bhk = icmp ult i64 %.sroa.0163.04359, %i.bak
  br i1 %i.bhk, label %bb.lw, label %.invoke14883

bb.lw:                                            ; preds = %bb.lv
  %i.bhl = getelementptr inbounds nuw [16 x i8], ptr %i.bal, i64 %.sroa.0163.04359 ; 2 uses
  %i.bhm = load i64, ptr %i.bhl, align 8, !range !68, !noundef !67
  %i.bhn = trunc nuw i64 %i.bhm to i1
  br i1 %i.bhn, label %bb.lx, label %bb.lu

bb.lx:                                            ; preds = %bb.lw
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  %i.bhp = load i64, ptr %i.bho, align 8, !noundef !67
  %i.bhq = icmp eq i64 %i.bhp, 1
  br i1 %i.bhq, label %bb.ly, label %bb.lu

bb.ly:                                            ; preds = %bb.lx
  %i.bhr = icmp ult i64 %.sroa.0163.04359, %i.bam
  br i1 %i.bhr, label %bb.lz, label %.invoke14883

bb.lz:                                            ; preds = %bb.ly
  %i.bhs = getelementptr inbounds nuw [16 x i8], ptr %i.ban, i64 %.sroa.0163.04359 ; 2 uses
  %i.bht = load i64, ptr %i.bhs, align 8, !range !68, !noundef !67
  %.not345 = icmp eq i64 %i.bht, 0
  br i1 %.not345, label %bb.lu, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhs, i64 8
  %i.bhv = load i64, ptr %i.bhu, align 8          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15672)
  call void @llvm.experimental.noalias.scope.decl(metadata !15673)
  %i.bhw = icmp ult i64 %i.bhv, %i.bap
  br i1 %i.bhw, label %bb.mb, label %.invoke14879

bb.mb:                                            ; preds = %bb.ma
  %i.bhx = getelementptr inbounds nuw [32 x i8], ptr %i.bao, i64 %i.bhv ; 3 uses
  %i.bhy = load i64, ptr %i.bhx, align 16, !alias.scope !15673, !noalias !15672, !noundef !67 ; 3 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhx, i64 8
  %i.bia = load i64, ptr %i.bhz, align 8, !alias.scope !15673, !noalias !15672, !noundef !67 ; 3 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhx, i64 16
  %i.bic = load i128, ptr %i.bib, align 16, !alias.scope !15673, !noalias !15672, !noundef !67
  %i.bid = icmp ult i64 %i.bhy, %i.bar
  br i1 %i.bid, label %bb.mc, label %.invoke14879

bb.mc:                                            ; preds = %bb.mb
  %i.bie = icmp ult i64 %i.bia, %i.bar
  br i1 %i.bie, label %bb.md, label %.invoke14879

bb.md:                                            ; preds = %bb.mc
  %i.bif = getelementptr inbounds nuw [16 x i8], ptr %i.baq, i64 %i.bhy
  %i.big = load i128, ptr %i.bif, align 16, !alias.scope !15672, !noalias !15673, !noundef !67
  %i.bih = getelementptr inbounds nuw [16 x i8], ptr %i.baq, i64 %i.bia
  %i.bii = load i128, ptr %i.bih, align 16, !alias.scope !15672, !noalias !15673, !noundef !67
  %i.bij = shl i128 %i.bic, 1
  %i.bik = sub i128 %i.big, %i.bij
  %i.bil = add i128 %i.bik, %i.bii                ; 2 uses
  %i.bim = and i128 %i.bil, 1
  %i.bin = icmp eq i128 %i.bim, 0
  br i1 %i.bin, label %bb.me, label %.invoke14885, !prof !77

bb.me:                                            ; preds = %bb.md
  %i.bio = ashr exact i128 %i.bil, 1              ; 2 uses
  %i.bip = icmp eq i32 %.sroa.040.24364, -1
  %i.biq = trunc nuw i64 %.sroa.078.2.off04361 to i1
  %i.bir = icmp slt i128 %i.bio, %.sroa.13.24360
  %.sroa.0165.0 = select i1 %i.biq, i1 %i.bir, i1 false
  %or.cond381 = select i1 %i.bip, i1 true, i1 %.sroa.0165.0
  br i1 %or.cond381, label %bb.mf, label %bb.lu

.invoke14885:                                     ; preds = %bb.ke, %bb.kd, %bb.jv, %bb.ju, %bb.jg, %bb.cd, %bb.cc, %bb.ds, %bb.dr, %bb.md
  %i.bis = phi ptr [ @416, %bb.ds ], [ @457, %bb.md ], [ @416, %bb.dr ], [ @430, %bb.ju ], [ @404, %bb.cc ], [ @404, %bb.cd ], [ @430, %bb.kd ], [ @420, %bb.jg ], [ @430, %bb.jv ], [ @430, %bb.ke ]
  %i.bit = phi i64 [ 51, %bb.ds ], [ 33, %bb.md ], [ 51, %bb.dr ], [ 51, %bb.ju ], [ 51, %bb.cc ], [ 51, %bb.cd ], [ 51, %bb.kd ], [ 33, %bb.jg ], [ 51, %bb.jv ], [ 51, %bb.ke ]
  %i.biu = phi ptr [ @417, %bb.ds ], [ @458, %bb.md ], [ @417, %bb.dr ], [ @431, %bb.ju ], [ @405, %bb.cc ], [ @405, %bb.cd ], [ @437, %bb.kd ], [ @421, %bb.jg ], [ @431, %bb.jv ], [ @437, %bb.ke ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bis, i64 noundef %i.bit, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.biu) #61
          to label %.cont14886 unwind label %.loopexit.split-lp463.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont14886:                                       ; preds = %.invoke14885
  unreachable

bb.mf:                                            ; preds = %bb.me
  br label %bb.lu

bb.mg:                                            ; preds = %bb.mk, %.lr.ph4353
  %.sroa.040.14351 = phi i32 [ %.sroa.040.0, %.lr.ph4353 ], [ %.sroa.040.7, %bb.mk ] ; 5 uses
  %.sroa.060.04350 = phi i64 [ 0, %.lr.ph4353 ], [ %.sroa.060.3, %bb.mk ] ; 4 uses
  %.sroa.764.04349 = phi i64 [ undef, %.lr.ph4353 ], [ %.sroa.764.3, %bb.mk ] ; 4 uses
  %.sroa.078.1.off04348 = phi i64 [ %.sroa.078.0.off0, %.lr.ph4353 ], [ %.sroa.078.7.off0, %bb.mk ] ; 5 uses
  %.sroa.13.14347 = phi i128 [ %.sroa.13.0, %.lr.ph4353 ], [ %.sroa.13.7, %bb.mk ] ; 5 uses
  %.sroa.0160.04346 = phi i64 [ 0, %.lr.ph4353 ], [ %i.biv, %bb.mk ] ; 5 uses
  %i.biv = add nuw i64 %.sroa.0160.04346, 1       ; 2 uses
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0160.04346
  %i.bix = load i64, ptr %i.biw, align 8, !noundef !67 ; 3 uses
  %i.biy = icmp ult i64 %i.bix, %i.azl
  br i1 %i.biy, label %bb.mh, label %.invoke14883

bb.mh:                                            ; preds = %bb.mg
  %i.biz = getelementptr inbounds nuw [16 x i8], ptr %i.azm, i64 %i.bix ; 2 uses
  %i.bja = load i64, ptr %i.biz, align 8, !range !68, !noundef !67
  %i.bjb = trunc nuw i64 %i.bja to i1
  br i1 %i.bjb, label %bb.mi, label %bb.mk

bb.mi:                                            ; preds = %bb.mh
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.biz, i64 8
  %i.bjd = load i64, ptr %i.bjc, align 8, !noundef !67
  %i.bje = icmp eq i64 %i.bjd, 0
  br i1 %i.bje, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.bjf = icmp ult i64 %.sroa.0160.04346, %i.azn
  br i1 %i.bjf, label %bb.ml, label %.invoke14883

bb.mk:                                            ; preds = %bb.mp, %bb.mq, %bb.mi, %bb.mh, %bb.ml
  %.sroa.13.7 = phi i128 [ %i.bkc, %bb.mq ], [ %.sroa.13.14347, %bb.mp ], [ %.sroa.13.14347, %bb.ml ], [ %.sroa.13.14347, %bb.mi ], [ %.sroa.13.14347, %bb.mh ] ; 2 uses
  %.sroa.078.7.off0 = phi i64 [ 1, %bb.mq ], [ %.sroa.078.1.off04348, %bb.mp ], [ %.sroa.078.1.off04348, %bb.ml ], [ %.sroa.078.1.off04348, %bb.mi ], [ %.sroa.078.1.off04348, %bb.mh ] ; 2 uses
  %.sroa.764.3 = phi i64 [ %i.bjj, %bb.mq ], [ %.sroa.764.04349, %bb.mp ], [ %.sroa.764.04349, %bb.ml ], [ %.sroa.764.04349, %bb.mi ], [ %.sroa.764.04349, %bb.mh ] ; 2 uses
  %.sroa.060.3 = phi i64 [ 1, %bb.mq ], [ %.sroa.060.04350, %bb.mp ], [ %.sroa.060.04350, %bb.ml ], [ %.sroa.060.04350, %bb.mi ], [ %.sroa.060.04350, %bb.mh ] ; 2 uses
  %.sroa.040.7 = phi i32 [ 2, %bb.mq ], [ %.sroa.040.14351, %bb.mp ], [ %.sroa.040.14351, %bb.ml ], [ %.sroa.040.14351, %bb.mi ], [ %.sroa.040.14351, %bb.mh ] ; 2 uses
  %exitcond7466.not = icmp eq i64 %i.biv, %.val.i491
  br i1 %exitcond7466.not, label %.lr.ph4365, label %bb.mg

bb.ml:                                            ; preds = %bb.mj
  %i.bjg = getelementptr inbounds nuw [16 x i8], ptr %i.azo, i64 %.sroa.0160.04346 ; 2 uses
  %i.bjh = load i64, ptr %i.bjg, align 8, !range !68, !noundef !67
  %.not346 = icmp eq i64 %i.bjh, 0
  br i1 %.not346, label %bb.mk, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjg, i64 8
  %i.bjj = load i64, ptr %i.bji, align 8          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15674)
  call void @llvm.experimental.noalias.scope.decl(metadata !15675)
  %i.bjk = icmp ult i64 %i.bjj, %i.azq
  br i1 %i.bjk, label %bb.mn, label %.invoke14879

bb.mn:                                            ; preds = %bb.mm
  %i.bjl = getelementptr inbounds nuw [32 x i8], ptr %i.azp, i64 %i.bjj ; 3 uses
  %i.bjm = load i64, ptr %i.bjl, align 16, !alias.scope !15675, !noalias !15674, !noundef !67 ; 3 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjl, i64 8
  %i.bjo = load i64, ptr %i.bjn, align 8, !alias.scope !15675, !noalias !15674, !noundef !67 ; 3 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjl, i64 16
  %i.bjq = load i128, ptr %i.bjp, align 16, !alias.scope !15675, !noalias !15674, !noundef !67
  %i.bjr = icmp ult i64 %i.bjm, %i.azs
  br i1 %i.bjr, label %bb.mo, label %.invoke14879

bb.mo:                                            ; preds = %bb.mn
  %i.bjs = icmp ult i64 %i.bjo, %i.azs
  br i1 %i.bjs, label %bb.mp, label %.invoke14879

.invoke14879:                                     ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en, %._crit_edge836.i, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dg, %bb.df, %bb.de, %bb.cz, %bb.cy, %bb.cx, %bb.cm, %bb.cl, %bb.ck, %bb.mo, %bb.mn, %bb.mm, %bb.mc, %bb.mb, %bb.ma, %bb.it, %.thread500.i, %bb.im, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit373.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit372.i, %bb.eh, %bb.id, %.thread494.i, %bb.hw, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit368.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit367.i, %bb.ek
  %i.bjt = phi i64 [ %i.avz, %bb.id ], [ %i.bia, %bb.mc ], [ %i.ayv, %bb.it ], [ %i.bjm, %bb.mn ], [ %.sroa.041.0834.i, %bb.ek ], [ %.sroa.041.0834.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit367.i ], [ %.sroa.041.0834.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit368.i ], [ %.sroa.041.0834.i, %bb.hw ], [ %i.atw, %.thread494.i ], [ %.sroa.015.0832.i, %bb.eh ], [ %.sroa.015.0832.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit372.i ], [ %.sroa.015.0832.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit373.i ], [ %.sroa.015.0832.i, %bb.im ], [ %i.awp, %.thread500.i ], [ %i.bhv, %bb.ma ], [ %i.bhy, %bb.mb ], [ %i.bjo, %bb.mo ], [ %i.bjj, %bb.mm ], [ %i.zd, %bb.ec ], [ %i.yo, %bb.ed ], [ %i.zd, %bb.ee ], [ %i.zd, %bb.ef ], [ %i.yo, %._crit_edge836.i ], [ %i.zd, %bb.en ], [ %i.yo, %bb.eo ], [ %i.zd, %bb.ep ], [ %i.zd, %bb.eq ], [ %i.sa, %bb.ck ], [ %i.ss, %bb.cl ], [ %i.su, %bb.cm ], [ %i.ue, %bb.cx ], [ %i.ul, %bb.cy ], [ %i.un, %bb.cz ], [ %i.vh, %bb.de ], [ %i.vo, %bb.df ], [ %i.vq, %bb.dg ], [ %i.sa, %bb.dw ], [ %i.xo, %bb.dx ], [ %i.yj, %bb.dy ], [ %i.yl, %bb.dz ], [ %i.zd, %bb.eb ]
  %i.bju = phi i64 [ %.val.i491, %bb.id ], [ %i.bar, %bb.mc ], [ %.val.i491, %bb.it ], [ %i.azs, %bb.mn ], [ %i.gb, %bb.ek ], [ %i.xy, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit367.i ], [ %i.xw, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit368.i ], [ %i.yc, %bb.hw ], [ %i.dr, %.thread494.i ], [ %i.gb, %bb.eh ], [ %i.xy, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit372.i ], [ %i.xw, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit373.i ], [ %i.yc, %bb.im ], [ %i.dr, %.thread500.i ], [ %i.bap, %bb.ma ], [ %i.bar, %bb.mb ], [ %i.azs, %bb.mo ], [ %i.azq, %bb.mm ], [ %i.gb, %bb.ec ], [ %i.gb, %bb.ed ], [ %i.xq, %bb.ee ], [ %i.ye, %bb.ef ], [ %i.xw, %._crit_edge836.i ], [ %i.xw, %bb.en ], [ %i.xy, %bb.eo ], [ %i.xy, %bb.ep ], [ %i.xu, %bb.eq ], [ %i.sp, %bb.ck ], [ %i.sn, %bb.cl ], [ %i.sn, %bb.cm ], [ %i.ui, %bb.cx ], [ %i.ug, %bb.cy ], [ %i.ug, %bb.cz ], [ %i.vl, %bb.de ], [ %i.vj, %bb.df ], [ %i.vj, %bb.dg ], [ %i.xs, %bb.dw ], [ %.val.i491, %bb.dx ], [ %.val.i491, %bb.dy ], [ %.val.i491, %bb.dz ], [ %i.yc, %bb.eb ]
  %i.bjv = phi ptr [ @319, %bb.id ], [ @2349, %bb.mc ], [ @329, %bb.it ], [ @2348, %bb.mn ], [ @310, %bb.ek ], [ @311, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit367.i ], [ @313, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit368.i ], [ @314, %bb.hw ], [ @318, %.thread494.i ], [ @320, %bb.eh ], [ @321, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit372.i ], [ @323, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit373.i ], [ @324, %bb.im ], [ @328, %.thread500.i ], [ @2347, %bb.ma ], [ @2348, %bb.mb ], [ @2349, %bb.mo ], [ @2347, %bb.mm ], [ @287, %bb.ec ], [ @288, %bb.ed ], [ @289, %bb.ee ], [ @290, %bb.ef ], [ @291, %._crit_edge836.i ], [ @294, %bb.en ], [ @295, %bb.eo ], [ @296, %bb.ep ], [ @297, %bb.eq ], [ @2347, %bb.ck ], [ @2348, %bb.cl ], [ @2349, %bb.cm ], [ @2347, %bb.cx ], [ @2348, %bb.cy ], [ @2349, %bb.cz ], [ @2347, %bb.de ], [ @2348, %bb.df ], [ @2349, %bb.dg ], [ @281, %bb.dw ], [ @282, %bb.dx ], [ @283, %bb.dy ], [ @284, %bb.dz ], [ @286, %bb.eb ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.bjt, i64 noundef range(i64 0, 1152921504606846976) %i.bju, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bjv) #60
          to label %.cont14880 unwind label %.loopexit.split-lp463.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont14880:                                       ; preds = %.invoke14879
  unreachable

bb.mp:                                            ; preds = %bb.mo
  %i.bjw = getelementptr inbounds nuw [16 x i8], ptr %i.azr, i64 %i.bjm
  %i.bjx = load i128, ptr %i.bjw, align 16, !alias.scope !15674, !noalias !15675, !noundef !67
  %i.bjy = getelementptr inbounds nuw [16 x i8], ptr %i.azr, i64 %i.bjo
  %i.bjz = load i128, ptr %i.bjy, align 16, !alias.scope !15674, !noalias !15675, !noundef !67
  %i.bka = shl i128 %i.bjq, 1
  %i.bkb = sub i128 %i.bjx, %i.bka
  %i.bkc = add i128 %i.bkb, %i.bjz                ; 2 uses
  %i.bkd = icmp eq i32 %.sroa.040.14351, -1
  %i.bke = trunc nuw i64 %.sroa.078.1.off04348 to i1
  %i.bkf = icmp slt i128 %i.bkc, %.sroa.13.14347
  %.sroa.0162.0 = select i1 %i.bke, i1 %i.bkf, i1 false
  %or.cond383 = select i1 %i.bkd, i1 true, i1 %.sroa.0162.0
  br i1 %or.cond383, label %bb.mq, label %bb.mk

bb.mq:                                            ; preds = %bb.mp
  br label %bb.mk

bb.mr:                                            ; preds = %bb.ms, %.loopexit488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNvMs_NtCs3sCKvcUjPpt_9hashbrown3mapINtB4_7HashMapTjjEuE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.i, i64 noundef %i.gb)
          to label %bb.mu unwind label %.loopexit.split-lp463.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ms:                                            ; preds = %.loopexit488
  %i.bkg = load ptr, ptr %i.ca, align 8, !nonnull !67, !noundef !67
  %i.bkh = load i64, ptr %i.cb, align 8, !noundef !67
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB19_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1c_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4U_5types3any5PyAnyEB4P_NtB1e_10UndirectedENCINvB2Y_9is_planarB4e_Es_0NtB2Y_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx:._crit_edge.i
  %..i.i.2 = select i1 %i.bb, ptr %i.an, ptr %i.am
  %i.bc = xor i1 %i.bb, true
  %i.bd = load i64, ptr %..i.i.2, align 4, !alias.scope !37165, !noalias !37168
  store i64 %i.bd, ptr %i.ao, align 4, !noalias !37169
  %.neg.i.i.2 = sext i1 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr %i.am, i64 %.neg.i.i.2 ; 4 uses
  %.neg13.i.i.2 = sext i1 %i.bb to i64
  %i.bf = getelementptr [8 x i8], ptr %i.an, i64 %.neg13.i.i.2 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.09.0.val.i.3 = load i32, ptr %i.av, align 4, !alias.scope !37165
  %i.bh = getelementptr i8, ptr %i.av, i64 4
  %.sroa.09.0.val22.i.3 = load i32, ptr %i.bh, align 4, !alias.scope !37165
  %.sroa.04.0.val.i.3 = load i32, ptr %i.ax, align 4, !alias.scope !37165
  %i.bi = getelementptr i8, ptr %i.ax, i64 4
  %.sroa.04.0.val23.i.3 = load i32, ptr %i.bi, align 4, !alias.scope !37165
  %i.bj = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.sroa.09.0.val.i.3, i32 %.sroa.09.0.val22.i.3, i32 %.sroa.04.0.val.i.3, i32 %.sroa.04.0.val23.i.3) #64, !noalias !37165 ; 3 uses
  %..i21.i.3 = select i1 %i.bj, ptr %i.av, ptr %i.ax
  %i.bk = xor i1 %i.bj, true
  %i.bl = load i64, ptr %..i21.i.3, align 4, !alias.scope !37165, !noalias !37166
  store i64 %i.bl, ptr %i.ay, align 4, !noalias !37167
  %i.bm = zext i1 %i.bj to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bm
  %i.bo = zext i1 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bo
  %.sroa.015.0.val.i.3 = load i32, ptr %i.be, align 4, !alias.scope !37165
  %i.bq = getelementptr i8, ptr %i.be, i64 4
  %.sroa.015.0.val25.i.3 = load i32, ptr %i.bq, align 4, !alias.scope !37165
  %.sroa.013.0.val.i.3 = load i32, ptr %i.bf, align 4, !alias.scope !37165
  %i.br = getelementptr i8, ptr %i.bf, i64 4
  %.sroa.013.0.val26.i.3 = load i32, ptr %i.br, align 4, !alias.scope !37165
  %i.bs = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.sroa.015.0.val.i.3, i32 %.sroa.015.0.val25.i.3, i32 %.sroa.013.0.val.i.3, i32 %.sroa.013.0.val26.i.3) #64, !noalias !37165 ; 3 uses
  %..i.i.3 = select i1 %i.bs, ptr %i.bf, ptr %i.be
  %i.bt = xor i1 %i.bs, true
  %i.bu = load i64, ptr %..i.i.3, align 4, !alias.scope !37165, !noalias !37168
  store i64 %i.bu, ptr %i.bg, align 4, !noalias !37169
  %.neg.i.i.3 = sext i1 %i.bt to i64
  %i.bv = getelementptr [8 x i8], ptr %i.be, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.bs to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bf, i64 %.neg13.i.i.3
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %i.bz = icmp ne ptr %i.bp, %i.bx
  %i.ca = icmp ne ptr %i.bn, %i.by
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.ca, !prof !90
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1h_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1g_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1j_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB1l_10UndirectedENCINvB35_9is_planarB4l_Es_0NtB35_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit, !prof !90

bb.a:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #60, !noalias !37165
  unreachable

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1h_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1g_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1j_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB1l_10UndirectedENCINvB35_9is_planarB4l_Es_0NtB35_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjjdENCINvMB8_SB1m_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2g_10TriMatIterINtNtB8_4iter4IterjEB3f_IB3g_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ %0, %.lr.ph.preheader ] ; 7 uses
  %.val11.i = load i64, ptr %.sroa.0.04, align 8, !noundef !67 ; 5 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 32
  %.val12.i = load i64, ptr %i.b, align 8, !noundef !67 ; 3 uses
  %.val13.i = load i64, ptr %.pn3, align 8, !noundef !67 ; 2 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 8
  %.val14.i = load i64, ptr %i.c, align 8, !noundef !67
  %i.d = icmp eq i64 %.val11.i, %.val13.i
  %i.e = icmp ult i64 %.val11.i, %.val13.i
  %i.f = icmp ult i64 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.d, i1 %i.f, i1 %i.e
  br i1 %.sroa.0.0.i.i.i, label %bb.a, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.a:                                             ; preds = %.lr.ph
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 40
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(24) %.pn3, i64 24, i1 false)
  %i.g = icmp eq ptr %.pn3, %0
  br i1 %i.g, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.i, %bb.b ], [ %.pn3, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -24 ; 4 uses
  %.val9.i = load i64, ptr %i.i, align 8, !noundef !67 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.0.i1, i64 -16
  %.val10.i = load i64, ptr %i.j, align 8, !noundef !67
  %i.k = icmp eq i64 %.val11.i, %.val9.i
  %i.l = icmp ult i64 %.val11.i, %.val9.i
  %i.m = icmp ult i64 %.val12.i, %.val10.i
  %.sroa.0.0.i.i15.i = select i1 %i.k, i1 %i.m, i1 %i.l
  br i1 %.sroa.0.0.i.i15.i, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ] ; 3 uses
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !37174
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !37174
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.59.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !37174
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailTjjdENCINvMB8_SB18_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB22_10TriMatIterINtNtB8_4iter4IterjEB31_IB32_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 21, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i87 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i92 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.dy, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.dw, %bb.z ] ; 3 uses
  %i.i = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.val8.i = load i8, ptr %i.o, align 1, !range !149, !alias.scope !37196, !noalias !37197, !noundef !67 ; 3 uses
  %.val9.i = load i8, ptr %i.m, align 1, !range !149, !alias.scope !37196, !noalias !37197, !noundef !67
  %i.p = icmp samesign ult i8 %.val8.i, %.val9.i  ; 2 uses
  %.not66 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.j
  br i1 %.not66, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.j
  br i1 %.not66, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, label %.lr.ph54

.lr.ph:                                           ; preds = %.preheader45, %bb.k
  %.val7.i = phi i8 [ %.val6.i, %bb.k ], [ %.val8.i, %.preheader45 ]
  %.sroa.01.0.i.i50 = phi i64 [ %i.s, %bb.k ], [ 2, %.preheader45 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i50
  %.val6.i = load i8, ptr %i.q, align 1, !range !149, !alias.scope !37196, !noalias !37197, !noundef !67 ; 2 uses
  %i.r = icmp samesign ult i8 %.val6.i, %.val7.i
  br i1 %i.r, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i50, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph

.lr.ph54:                                         ; preds = %.preheader, %bb.l
  %.val5.i = phi i8 [ %.val.i, %bb.l ], [ %.val8.i, %.preheader ]
  %.sroa.01.1.i.i53 = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.1.i.i53
  %.val.i = load i8, ptr %i.t, align 1, !range !149, !alias.scope !37196, !noalias !37197, !noundef !67 ; 2 uses
  %i.u = icmp samesign ult i8 %.val.i, %.val5.i
  br i1 %i.u, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i

bb.l:                                             ; preds = %.lr.ph54
  %i.v = add nuw i64 %.sroa.01.1.i.i53, 1         ; 2 uses
  %exitcond73.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond73.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph54

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph54
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i53, %.lr.ph54 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i50, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.w = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90: ; preds = %.preheader
  br i1 %.not4.i92, label %bb.h, label %iter.check

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread: ; preds = %.preheader45
  br i1 %.not4.i87, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i
  br i1 %i.p, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit

bb.n:                                             ; preds = %bb.h
  %i.x = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, -9223372036854775808) %i.l)
  %i.y = shl nuw i64 %i.x, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.o:                                             ; preds = %bb.h
  %i.z = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.m, i64 noundef %i.z, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef 0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i, %middle.block, %vec.epilog.middle.block, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i4043 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread ], [ %.sroa.0.0.i.i889599, %middle.block ], [ %.sroa.0.0.i.i889599, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i889599, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i ]
  %i.ac = shl nuw i64 %.sroa.0.0.i.i4043, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37199)
  %.not.i35 = icmp eq i64 %i.ae, 0
  br i1 %.not.i35, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %iter.check

iter.check:                                       ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90, %bb.p
  %i.af = phi i64 [ %i.ae, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90 ] ; 8 uses
  %.sroa.0.0.i.i889599 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread90 ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i889599 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp samesign ult i64 %i.af, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.af, 12
  %n.vec = and i64 %i.af, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = xor i64 %index, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 %i.ai
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !37198, !noalias !37200
  %i.al = getelementptr i8, ptr %i.ak, i64 -15    ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.al, align 1, !alias.scope !37199, !noalias !37201
  %reverse = shufflevector <16 x i8> %wide.load8, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.aj, align 1, !alias.scope !37198, !noalias !37200
  %reverse9 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse9, ptr %i.al, align 1, !alias.scope !37199, !noalias !37201
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !37182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, label %vec.epilog.ph, !prof !37202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.af, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.an = xor i64 %index11, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %index11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.an
  %wide.load12 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !37198, !noalias !37200
  %i.aq = getelementptr i8, ptr %i.ap, i64 -3     ; 2 uses
  %wide.load13 = load <4 x i8>, ptr %i.aq, align 1, !alias.scope !37199, !noalias !37201
  %reverse14 = shufflevector <4 x i8> %wide.load13, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse14, ptr %i.ao, align 1, !alias.scope !37198, !noalias !37200
  %reverse15 = shufflevector <4 x i8> %wide.load12, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse15, ptr %i.aq, align 1, !alias.scope !37199, !noalias !37201
  %index.next16 = add nuw i64 %index11, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next16, %n.vec10
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37183

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.af, %n.vec10
  br i1 %cmp.n17, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ax, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.ag, i64 %i.as  ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !range !149, !alias.scope !37198, !noalias !37200, !noundef !67
  %i.aw = load i8, ptr %i.au, align 1, !alias.scope !37199, !noalias !37201
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !37198, !noalias !37200
  store i8 %i.av, ptr %i.au, align 1, !alias.scope !37199, !noalias !37201
  %i.ax = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i, !llvm.loop !37184

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.n, %bb.o, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit ], [ %i.ab, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw i64 %.sroa.09.0, 1            ; 2 uses
  %i.ba = sub i64 %factor, %i.ay
  %i.bb = add i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph60, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.02.159 = phi i64 [ %.sroa.02.0, %.lr.ph60 ], [ %i.bh, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.023.158 = phi i64 [ %.sroa.023.0, %.lr.ph60 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.159, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !67
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.158, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.159, %bb.q ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.i, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !67 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.158, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.158 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.158
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37204)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bo, i64 %i.bp) ; 3 uses
  %i.cn = icmp samesign ult i64 %3, %i.cm
  br i1 %i.cn, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.co, ptr %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !37205
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cq = phi ptr [ %i.db, %.preheader.i ], [ %i.cp, %.critedge.i ]
  %i.cr = phi ptr [ %i.cz, %.preheader.i ], [ %i.co, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.cu, %.preheader.i ], [ %i.k, %.critedge.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -1 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -1 ; 2 uses
  %.val.i.i = load i8, ptr %i.ct, align 1, !range !149, !alias.scope !37204, !noalias !37206, !noundef !67 ; 2 uses
  %.val12.i.i = load i8, ptr %i.cs, align 1, !range !149, !alias.scope !37203, !noalias !37207, !noundef !67 ; 2 uses
  %i.cv = icmp samesign ult i8 %.val.i.i, %.val12.i.i ; 2 uses
  %i.cw = tail call i8 @llvm.umax.i8(i8 %.val.i.i, i8 %.val12.i.i)
  store i8 %i.cw, ptr %i.cu, align 1, !alias.scope !37203, !noalias !37207
  %i.cx = xor i1 %i.cv, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cv to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bs
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.de = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.bs, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.co, %.critedge.i ] ; 2 uses
  %i.df = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.04.i.i, align 1, !range !149, !alias.scope !37203, !noalias !37208, !noundef !67 ; 2 uses
  %.val.i18.i = load i8, ptr %i.df, align 1, !range !149, !alias.scope !37204, !noalias !37209, !noundef !67 ; 2 uses
  %i.dg = icmp samesign ult i8 %.sroa.0.0.val.i.i, %.val.i18.i ; 2 uses
  %i.dh = xor i1 %i.dg, true
  %i.di = tail call i8 @llvm.umin.i8(i8 %.sroa.0.0.val.i.i, i8 %.val.i18.i)
  store i8 %i.di, ptr %i.de, align 1, !alias.scope !37203, !noalias !37208
  %i.dj = zext i1 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dg to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.do = icmp ne ptr %i.dk, %i.cp
  %i.dp = icmp ne ptr %i.dm, %i.k
  %or.cond.i19.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i

_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cz, %.preheader.i ], [ %i.dn, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.db, %.preheader.i ], [ %i.cp, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.dq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dr = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ds = sub nuw i64 %i.dq, %i.dr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.13.1.i, ptr align 1 %.sroa.0.1.i, i64 %i.ds, i1 false), !alias.scope !37205, !noalias !37210
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i
  %i.dt = shl nuw i64 %i.bq, 1
  %i.du = or disjoint i64 %i.dt, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.t, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit ], [ %i.by, %bb.t ] ; 2 uses
  %i.dv = icmp ugt i64 %i.bh, 1
  br i1 %i.dv, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dw = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dx = lshr i64 %.sroa.018.0, 1
  %i.dy = add nuw i64 %i.dx, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.dz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dz, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = or i64 %1, 1
  %i.eb = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.ee, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i260 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i265 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %bb.ap, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.kn, %bb.ap ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.kl, %bb.ap ] ; 3 uses
  %i.i = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.021.0 = phi i8 [ %i.by, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph181, label %._crit_edge

.lr.ph181:                                        ; preds = %bb.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37288)
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val14.i = load ptr, ptr %5, align 8, !alias.scope !37288, !noalias !37289, !nonnull !67, !align !98, !noundef !67 ; 3 uses
  %.val15.i = load i32, ptr %i.o, align 4, !alias.scope !37287, !noalias !37290 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 12
  %.val16.i = load i32, ptr %i.p, align 4, !alias.scope !37287, !noalias !37290 ; 3 uses
  %.val17.i = load i32, ptr %i.m, align 4, !alias.scope !37287, !noalias !37290
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %.val18.i = load i32, ptr %i.q, align 4, !alias.scope !37287, !noalias !37290
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val15.i, i32 %.val16.i, i32 %.val17.i, i32 %.val18.i) #64, !noalias !37291, !inline_history !37215 ; 2 uses
  %.not187 = icmp eq i64 %i.l, 2                  ; 2 uses
  br i1 %i.r, label %.preheader80, label %.preheader81

.preheader81:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, label %.lr.ph

.preheader80:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, label %.lr.ph136

.lr.ph:                                           ; preds = %.preheader81, %bb.k
  %.val13.i = phi i32 [ %.val11.i, %bb.k ], [ %.val16.i, %.preheader81 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.k ], [ %.val15.i, %.preheader81 ]
  %.sroa.01.0.i.i132 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader81 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i132 ; 2 uses
  %.val10.i = load i32, ptr %i.s, align 4, !alias.scope !37287, !noalias !37290 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !37287, !noalias !37290 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val10.i, i32 %.val11.i, i32 %.val12.i, i32 %.val13.i) #64, !noalias !37291, !inline_history !37215
  br i1 %i.u, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i132, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph

.lr.ph136:                                        ; preds = %.preheader80, %bb.l
  %.val8.i = phi i32 [ %.val6.i, %bb.l ], [ %.val16.i, %.preheader80 ]
  %.val7.i = phi i32 [ %.val5.i, %bb.l ], [ %.val15.i, %.preheader80 ]
  %.sroa.01.1.i.i135 = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader80 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i135 ; 2 uses
  %.val5.i = load i32, ptr %i.w, align 4, !alias.scope !37287, !noalias !37290 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val6.i = load i32, ptr %i.x, align 4, !alias.scope !37287, !noalias !37290 ; 2 uses
  %i.y = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val5.i, i32 %.val6.i, i32 %.val7.i, i32 %.val8.i) #64, !noalias !37291, !inline_history !37215
  br i1 %i.y, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

bb.l:                                             ; preds = %.lr.ph136
  %i.z = add nuw i64 %.sroa.01.1.i.i135, 1        ; 2 uses
  %exitcond228.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond228.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph136

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph136
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i135, %.lr.ph136 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i132, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263: ; preds = %.preheader80
  br i1 %.not4.i265, label %bb.h, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread: ; preds = %.preheader81
  br i1 %.not4.i260, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %i.r, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.h
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.l)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.h
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37215
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i7376 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread ], [ %.sroa.0.0.i.i261268272, %middle.block ], [ %.sroa.0.0.i.i261268272, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.0.i.i261268272, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37293)
  %.not.i36 = icmp eq i64 %i.ai, 0
  br i1 %.not.i36, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, %bb.p
  %i.aj = phi i64 [ %i.ai, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263 ] ; 7 uses
  %.sroa.0.0.i.i261268272 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i261268272 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 18
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %i.al = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.am = add i64 %.sroa.0.0.i.i261268272, %.sroa.09.0
  %i.an = shl i64 %i.am, 3
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %i.an ; 2 uses
  %mul.result.neg = mul i64 %i.al, -8
  %mul.overflow = icmp ugt i64 %i.al, 2305843009213693951
  %i.ao = getelementptr i8, ptr %scevgep353, i64 %mul.result.neg
  %i.ap = icmp ugt ptr %i.ao, %scevgep353
  %i.aq = or i1 %i.ap, %mul.overflow
  br i1 %i.aq, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.aj, 4611686018427387902     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.as, align 4, !alias.scope !37292, !noalias !37294
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %wide.load = load <2 x i64>, ptr %i.au, align 4, !alias.scope !37293, !noalias !37295
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.as, align 4, !alias.scope !37292, !noalias !37294
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.av, align 4, !alias.scope !37293, !noalias !37295
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !37219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.ph, 1
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader
  %i.ax = xor i64 %.sroa.0.016.i.ph, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i.ph ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ba = load i64, ptr %i.az, align 4, !alias.scope !37293, !noalias !37295
  %i.bb = load <2 x i32>, ptr %i.ay, align 4, !alias.scope !37292, !noalias !37294
  store i64 %i.ba, ptr %i.ay, align 4, !alias.scope !37292, !noalias !37294
  store <2 x i32> %i.bb, ptr %i.az, align 4, !alias.scope !37293, !noalias !37295
  %i.bc = or disjoint i64 %.sroa.0.016.i.ph, 1
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader
  %.sroa.0.016.i.unr = phi i64 [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ], [ %i.bc, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol ]
  %i.bd = icmp eq i64 %i.aj, %.neg
  br i1 %i.bd, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bp, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.unr, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit ] ; 5 uses
  %i.be = xor i64 %.sroa.0.016.i, -1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ak, i64 %i.be ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 4, !alias.scope !37293, !noalias !37295
  %i.bi = load <2 x i32>, ptr %i.bf, align 4, !alias.scope !37292, !noalias !37294
  store i64 %i.bh, ptr %i.bf, align 4, !alias.scope !37292, !noalias !37294
  store <2 x i32> %i.bi, ptr %i.bg, align 4, !alias.scope !37293, !noalias !37295
  %i.bj = sub i64 -2, %.sroa.0.016.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ak, i64 %i.bj ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 4, !alias.scope !37293, !noalias !37295
  %i.bo = load <2 x i32>, ptr %i.bl, align 4, !alias.scope !37292, !noalias !37294
  store i64 %i.bn, ptr %i.bl, align 4, !alias.scope !37292, !noalias !37294
  store <2 x i32> %i.bo, ptr %i.bm, align 4, !alias.scope !37293, !noalias !37295
  %i.bp = add nuw nsw i64 %.sroa.0.016.i, 2       ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %i.aj
  br i1 %exitcond.not.i.1, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !37220

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.n, %bb.o, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit ], [ %i.af, %bb.o ], [ %i.ac, %bb.n ] ; 2 uses
  %i.bq = lshr i64 %.sroa.023.0, 1
  %i.br = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bs = sub nsw i64 %factor, %i.bq
  %i.bt = add nuw nsw i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph181, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.02.1180 = phi i64 [ %.sroa.02.0, %.lr.ph181 ], [ %i.bz, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.023.1179 = phi i64 [ %.sroa.023.0, %.lr.ph181 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %i.bz = add i64 %.sroa.02.1180, -1              ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !67
  %.not28 = icmp ult i8 %i.cb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.1179, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.1180, %bb.q ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cd, align 1
  br i1 %i.i, label %bb.ap, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !67 ; 3 uses
  %i.cg = lshr i64 %i.cf, 1                       ; 8 uses
  %i.ch = lshr i64 %.sroa.023.1179, 1             ; 6 uses
  %i.ci = add nuw i64 %i.cg, %i.ch                ; 4 uses
  %i.cj = sub i64 %.sroa.09.0, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 7 uses
  %i.cl = icmp samesign ugt i64 %i.ci, %3
  %i.cm = trunc i64 %.sroa.023.1179 to i1
  %i.cn = or i64 %i.cf, %.sroa.023.1179
  %i.co = trunc i64 %i.cn to i1
  %or.cond3.i = or i1 %i.cl, %i.co
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %i.cf to i1
  br i1 %i.cp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i64 %i.ci, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cr = or i64 %i.cg, 1
  %i.cs = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.cg, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cv, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37221
  br label %bb.u

bb.w:                                             ; preds = %bb.u
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx:bb.a

bb.am:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jm = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jn = and i16 %i.jm, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i17.i = icmp eq i16 %i.jn, 0
  br i1 %.not.i.not.i.i.i17.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i12.i

bb.an:                                            ; preds = %._crit_edge.i.i.i18.i
  %i.jo = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jp = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jo
  br label %bb.al

select.unfold.i19.i:                              ; preds = %._crit_edge.i.i.i18.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1259) #60
          to label %.noexc37 unwind label %.loopexit.split-lp.i

.noexc37:                                         ; preds = %select.unfold.i19.i
  unreachable

.noexc20.i:                                       ; preds = %.lr.ph.i.i.i12.i
  %i.jq = getelementptr inbounds i8, ptr %i.je, i64 -8
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !37298, !noundef !67
  %i.js = icmp ult i64 %i.il, %i.jr               ; 3 uses
  %i.jt = xor i1 %i.js, true
  %.sroa.05.0.i.i = select i1 %i.js, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.ju = load i64, ptr %.sroa.05.0.i.i, align 4, !alias.scope !37298, !noalias !37326
  store i64 %i.ju, ptr %.sroa.13.1.i, align 4, !alias.scope !37296, !noalias !37318
  %i.jv = zext i1 %i.jt to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.jv ; 3 uses
  %i.jx = zext i1 %i.js to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.ka = icmp ne ptr %i.jw, %i.di
  %i.kb = icmp ne ptr %i.jy, %i.k
  %or.cond.i19.i = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.gv, %.noexc.i ], [ %i.jz, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.gx, %.noexc.i ], [ %i.di, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.jw, %.noexc20.i ] ; 2 uses
  %i.kc = ptrtoint ptr %.sroa.7.2.i to i64
  %i.kd = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ke = sub nuw i64 %i.kc, %i.kd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.ke, i1 false), !alias.scope !37298, !noalias !37327
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

.loopexit.i:                                      ; preds = %select.unfold.i19.i65, %select.unfold.i.i52
  %.sroa.13.0.i110 = phi ptr [ %.sroa.13.0.i, %select.unfold.i19.i65 ], [ %.sroa.13.0.i111, %select.unfold.i.i52 ]
  %.sroa.7.0.i105 = phi ptr [ %.sroa.7.0.i, %select.unfold.i19.i65 ], [ %.sroa.7.0.i106, %select.unfold.i.i52 ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.i:                             ; preds = %select.unfold.i19.i, %select.unfold.i.i
  %.sroa.13.1.i94 = phi ptr [ %.sroa.13.1.i, %select.unfold.i19.i ], [ %.sroa.13.1.i95, %select.unfold.i.i ]
  %.sroa.0.0.i3489 = phi ptr [ %.sroa.0.0.i34, %select.unfold.i19.i ], [ %.sroa.0.0.i3490, %select.unfold.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i110, %.loopexit.i ], [ %.sroa.13.1.i94, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i105, %.loopexit.i ], [ %i.di, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i3489, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.kf = ptrtoint ptr %.sroa.7.1.i to i64
  %i.kg = ptrtoint ptr %.sroa.0.2.i to i64
  %i.kh = sub nuw i64 %i.kf, %i.kg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.13.3.i, ptr nonnull align 4 %.sroa.0.2.i, i64 %i.kh, i1 false), !alias.scope !37298, !noalias !37328
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  %i.ki = shl nuw nsw i64 %i.ci, 1
  %i.kj = or disjoint i64 %i.ki, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.t, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.i = phi i64 [ %i.kj, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ %i.cq, %bb.t ] ; 2 uses
  %i.kk = icmp ugt i64 %i.bz, 1
  br i1 %i.kk, label %bb.q, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge
  %i.kl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.km = lshr i64 %.sroa.018.0, 1
  %i.kn = add nuw nsw i64 %i.km, %.sroa.09.0
  br label %bb.e

bb.aq:                                            ; preds = %._crit_edge
  %i.ko = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ko, 0
  br i1 %.not30, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kp = or i64 %1, 1
  %i.kq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.kp, i1 true)
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = shl nuw nsw i32 %i.kr, 1
  %i.kt = xor i32 %i.ks, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.kt, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37221
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i260 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i265 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %bb.ap, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.kn, %bb.ap ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.kl, %bb.ap ] ; 3 uses
  %i.i = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.021.0 = phi i8 [ %i.by, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph181, label %._crit_edge

.lr.ph181:                                        ; preds = %bb.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37406)
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val14.i = load ptr, ptr %5, align 8, !alias.scope !37406, !noalias !37407, !nonnull !67, !align !98, !noundef !67 ; 3 uses
  %.val15.i = load i32, ptr %i.o, align 4, !alias.scope !37405, !noalias !37408 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 12
  %.val16.i = load i32, ptr %i.p, align 4, !alias.scope !37405, !noalias !37408 ; 3 uses
  %.val17.i = load i32, ptr %i.m, align 4, !alias.scope !37405, !noalias !37408
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %.val18.i = load i32, ptr %i.q, align 4, !alias.scope !37405, !noalias !37408
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val15.i, i32 %.val16.i, i32 %.val17.i, i32 %.val18.i) #64, !noalias !37409, !inline_history !37333 ; 2 uses
  %.not187 = icmp eq i64 %i.l, 2                  ; 2 uses
  br i1 %i.r, label %.preheader80, label %.preheader81

.preheader81:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, label %.lr.ph

.preheader80:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, label %.lr.ph136

.lr.ph:                                           ; preds = %.preheader81, %bb.k
  %.val13.i = phi i32 [ %.val11.i, %bb.k ], [ %.val16.i, %.preheader81 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.k ], [ %.val15.i, %.preheader81 ]
  %.sroa.01.0.i.i132 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader81 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i132 ; 2 uses
  %.val10.i = load i32, ptr %i.s, align 4, !alias.scope !37405, !noalias !37408 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !37405, !noalias !37408 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val10.i, i32 %.val11.i, i32 %.val12.i, i32 %.val13.i) #64, !noalias !37409, !inline_history !37333
  br i1 %i.u, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i132, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph

.lr.ph136:                                        ; preds = %.preheader80, %bb.l
  %.val8.i = phi i32 [ %.val6.i, %bb.l ], [ %.val16.i, %.preheader80 ]
  %.val7.i = phi i32 [ %.val5.i, %bb.l ], [ %.val15.i, %.preheader80 ]
  %.sroa.01.1.i.i135 = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader80 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i135 ; 2 uses
  %.val5.i = load i32, ptr %i.w, align 4, !alias.scope !37405, !noalias !37408 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val6.i = load i32, ptr %i.x, align 4, !alias.scope !37405, !noalias !37408 ; 2 uses
  %i.y = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val5.i, i32 %.val6.i, i32 %.val7.i, i32 %.val8.i) #64, !noalias !37409, !inline_history !37333
  br i1 %i.y, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

bb.l:                                             ; preds = %.lr.ph136
  %i.z = add nuw i64 %.sroa.01.1.i.i135, 1        ; 2 uses
  %exitcond228.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond228.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph136

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph136
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i135, %.lr.ph136 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i132, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263: ; preds = %.preheader80
  br i1 %.not4.i265, label %bb.h, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread: ; preds = %.preheader81
  br i1 %.not4.i260, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %i.r, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.h
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.l)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.h
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37333
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i7376 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread ], [ %.sroa.0.0.i.i261268272, %middle.block ], [ %.sroa.0.0.i.i261268272, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.0.i.i261268272, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37411)
  %.not.i36 = icmp eq i64 %i.ai, 0
  br i1 %.not.i36, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, %bb.p
  %i.aj = phi i64 [ %i.ai, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263 ] ; 7 uses
  %.sroa.0.0.i.i261268272 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i261268272 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 18
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %i.al = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.am = add i64 %.sroa.0.0.i.i261268272, %.sroa.09.0
  %i.an = shl i64 %i.am, 3
  %scevgep353 = getelementptr i8, ptr %scevgep, i64 %i.an ; 2 uses
  %mul.result.neg = mul i64 %i.al, -8
  %mul.overflow = icmp ugt i64 %i.al, 2305843009213693951
  %i.ao = getelementptr i8, ptr %scevgep353, i64 %mul.result.neg
  %i.ap = icmp ugt ptr %i.ao, %scevgep353
  %i.aq = or i1 %i.ap, %mul.overflow
  br i1 %i.aq, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.aj, 4611686018427387902     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.as, align 4, !alias.scope !37410, !noalias !37412
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %wide.load = load <2 x i64>, ptr %i.au, align 4, !alias.scope !37411, !noalias !37413
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.as, align 4, !alias.scope !37410, !noalias !37412
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.av, align 4, !alias.scope !37411, !noalias !37413
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !37337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.ph, 1
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader
  %i.ax = xor i64 %.sroa.0.016.i.ph, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i.ph ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ba = load i64, ptr %i.az, align 4, !alias.scope !37411, !noalias !37413
  %i.bb = load <2 x i32>, ptr %i.ay, align 4, !alias.scope !37410, !noalias !37412
  store i64 %i.ba, ptr %i.ay, align 4, !alias.scope !37410, !noalias !37412
  store <2 x i32> %i.bb, ptr %i.az, align 4, !alias.scope !37411, !noalias !37413
  %i.bc = or disjoint i64 %.sroa.0.016.i.ph, 1
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader
  %.sroa.0.016.i.unr = phi i64 [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ], [ %i.bc, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol ]
  %i.bd = icmp eq i64 %i.aj, %.neg
  br i1 %i.bd, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.bp, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.unr, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.prol.loopexit ] ; 5 uses
  %i.be = xor i64 %.sroa.0.016.i, -1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ak, i64 %i.be ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 4, !alias.scope !37411, !noalias !37413
  %i.bi = load <2 x i32>, ptr %i.bf, align 4, !alias.scope !37410, !noalias !37412
  store i64 %i.bh, ptr %i.bf, align 4, !alias.scope !37410, !noalias !37412
  store <2 x i32> %i.bi, ptr %i.bg, align 4, !alias.scope !37411, !noalias !37413
  %i.bj = sub i64 -2, %.sroa.0.016.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ak, i64 %i.bj ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 4, !alias.scope !37411, !noalias !37413
  %i.bo = load <2 x i32>, ptr %i.bl, align 4, !alias.scope !37410, !noalias !37412
  store i64 %i.bn, ptr %i.bl, align 4, !alias.scope !37410, !noalias !37412
  store <2 x i32> %i.bo, ptr %i.bm, align 4, !alias.scope !37411, !noalias !37413
  %i.bp = add nuw nsw i64 %.sroa.0.016.i, 2       ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %i.aj
  br i1 %exitcond.not.i.1, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !37338

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.n, %bb.o, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit ], [ %i.af, %bb.o ], [ %i.ac, %bb.n ] ; 2 uses
  %i.bq = lshr i64 %.sroa.023.0, 1
  %i.br = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bs = sub nsw i64 %factor, %i.bq
  %i.bt = add nuw nsw i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph181, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.02.1180 = phi i64 [ %.sroa.02.0, %.lr.ph181 ], [ %i.bz, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.023.1179 = phi i64 [ %.sroa.023.0, %.lr.ph181 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %i.bz = add i64 %.sroa.02.1180, -1              ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !67
  %.not28 = icmp ult i8 %i.cb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.1179, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.1180, %bb.q ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cd, align 1
  br i1 %i.i, label %bb.ap, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !67 ; 3 uses
  %i.cg = lshr i64 %i.cf, 1                       ; 8 uses
  %i.ch = lshr i64 %.sroa.023.1179, 1             ; 6 uses
  %i.ci = add nuw i64 %i.cg, %i.ch                ; 4 uses
  %i.cj = sub i64 %.sroa.09.0, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 7 uses
  %i.cl = icmp samesign ugt i64 %i.ci, %3
  %i.cm = trunc i64 %.sroa.023.1179 to i1
  %i.cn = or i64 %i.cf, %.sroa.023.1179
  %i.co = trunc i64 %i.cn to i1
  %or.cond3.i = or i1 %i.cl, %i.co
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %i.cf to i1
  br i1 %i.cp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i64 %i.ci, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cr = or i64 %i.cg, 1
  %i.cs = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.cg, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cv, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37339
  br label %bb.u

bb.w:                                             ; preds = %bb.u
end_hunk_3
