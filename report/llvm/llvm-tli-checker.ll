Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-tli-checker?download=true
inline.NumInlined: 1435
inline.NumDeleted: 803
begin_hunk_0_@main:bb.a

bb.o:                                             ; preds = %bb.n
  %i.bl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.bl, ptr %2, align 8, !tbaa !133, !alias.scope !193
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !68, !noalias !193
  store i64 %i.bm, ptr %i.bi, align 8, !tbaa !26, !alias.scope !193
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.o, %bb.n
  %i.bn = phi ptr [ %i.bl, %bb.o ], [ %i.bi, %bb.n ] ; 2 uses
  switch i64 %i.bh, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !26
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !68, !noalias !193 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !129, !alias.scope !193
  %i.br = load ptr, ptr %2, align 8, !tbaa !133, !alias.scope !193
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !193
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i, %bb.m
  call void @_ZN4llvm6TripleC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  %i.bt = load ptr, ptr %2, align 8, !tbaa !133   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bi
  br i1 %i.bu, label %_ZN4llvm6TripleC2ENS_9StringRefE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i
  %i.bv = load i64, ptr %i.bi, align 8, !tbaa !26
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZN4llvm6TripleC2ENS_9StringRefE.exit

_ZN4llvm6TripleC2ENS_9StringRefE.exit:            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZN4llvm21TargetLibraryInfoImplC1ERKNS_6TripleENS_13VectorLibraryE(ptr noundef nonnull align 8 dereferenceable(216) %14, ptr noundef nonnull align 8 dereferenceable(56) %13, i32 noundef 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr %14, ptr %15, align 8, !tbaa !196
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i8 0, i64 72, i1 false)
  br label %bb.ad

bb.r:                                             ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i
  %i.by = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !81
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85 ; 2 uses
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cf, 10
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull @.str.56, i64 noundef 10) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.cc, ptr noundef nonnull align 1 dereferenceable(10) @.str.56, i64 10, i1 false)
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store ptr %i.cj, ptr %i.cb, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.t, %bb.s
  %.0.i.i.i = phi ptr [ %i.ch, %bb.s ], [ %i.by, %bb.t ]
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i64 noundef 528) #23 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !85 ; 2 uses
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ult i64 %i.cr, 10
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ct = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull @.str.57, i64 noundef 10) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10.i

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.co, ptr noundef nonnull align 1 dereferenceable(10) @.str.57, i64 10, i1 false)
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !85
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 10
  store ptr %i.cv, ptr %i.cn, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10.i

_ZN4llvm11raw_ostreamlsEPKc.exit10.i:             ; preds = %bb.v, %bb.u
  %.0.i.i9.i = phi ptr [ %i.ct, %bb.u ], [ %i.ck, %bb.v ]
  %i.cw = zext i32 %i.ev to i64
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i9.i, i64 noundef %i.cw) #23 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !81
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !85 ; 2 uses
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp ult i64 %i.de, 16
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10.i
  %i.dg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull @.str.58, i64 noundef 16) #23 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit13.i

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.db, ptr noundef nonnull align 1 dereferenceable(16) @.str.58, i64 16, i1 false)
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !85
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  store ptr %i.di, ptr %i.da, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit13.i

_ZN4llvm11raw_ostreamlsEPKc.exit13.i:             ; preds = %bb.x, %bb.w
  %i.dj = phi ptr [ %.pre.i, %bb.w ], [ %i.di, %bb.x ] ; 3 uses
  %.0.i.i12.i = phi ptr [ %i.dg, %bb.w ], [ %i.cx, %bb.x ] ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i12.i, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !81
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i12.i, i64 32 ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dj to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ugt i64 %i.bh, %i.dp
  br i1 %i.dq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13.i
  %i.dr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i12.i, ptr noundef %i.bg, i64 noundef %i.bh) #23 ; 2 uses
  %.phi.trans.insert24.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %.pre25.i = load ptr, ptr %.phi.trans.insert24.i, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13.i
  %.not.i.i79 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i79, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !85
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.bh ; 2 uses
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.aa, %bb.z, %bb.y
  %i.du = phi ptr [ %.pre25.i, %bb.y ], [ %i.dt, %bb.aa ], [ %i.dj, %bb.z ] ; 2 uses
  %.0.i.i80 = phi ptr [ %i.dr, %bb.y ], [ %.0.i.i12.i, %bb.aa ], [ %.0.i.i12.i, %bb.z ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i80, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !81
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = icmp ult i64 %i.dz, 2
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.eb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i80, ptr noundef nonnull @.str.4, i64 noundef 2) #23 ; 0 uses
  br label %_ZL21reportNumberOfEntriesRKN4llvm17TargetLibraryInfoENS_9StringRefE.exit

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i80, i64 32 ; 2 uses
  store i16 2599, ptr %i.du, align 1
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !85
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !85
  br label %_ZL21reportNumberOfEntriesRKN4llvm17TargetLibraryInfoENS_9StringRefE.exit

bb.ad:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i, %_ZN4llvm6TripleC2ENS_9StringRefE.exit
  %indvars.iv.i = phi i64 [ 1, %_ZN4llvm6TripleC2ENS_9StringRefE.exit ], [ %indvars.iv.next.i, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i ] ; 5 uses
  %.022.i = phi i32 [ 0, %_ZN4llvm6TripleC2ENS_9StringRefE.exit ], [ %i.ev, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i ] ; 2 uses
  %i.ef = lshr i64 %indvars.iv.i, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !68
  %i.ei = and i64 %indvars.iv.i, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.eh, %i.ej
  %.not.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i

_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i: ; preds = %bb.ad
  %i.el = lshr i64 %indvars.iv.i, 2
  %i.em = and i64 %i.el, 1073741823
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !26
  %i.ep = zext i8 %i.eo to i32
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.eq = shl nuw nsw i32 %indvars.iv.tr.i, 1
  %i.er = and i32 %i.eq, 6
  %i.es = shl nuw nsw i32 3, %i.er
  %i.et = and i32 %i.es, %i.ep
  %.fr.i = freeze i32 %i.et
  %.not20.i = icmp ne i32 %.fr.i, 0
  %i.eu = zext i1 %.not20.i to i32
  %spec.select.i = add i32 %.022.i, %i.eu
  br label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i

_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i: ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i, %bb.ad
  %i.ev = phi i32 [ %.022.i, %bb.ad ], [ %spec.select.i, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i78 = icmp eq i64 %indvars.iv.next.i, 529
  br i1 %.not.i78, label %bb.r, label %bb.ad, !llvm.loop !201

_ZL21reportNumberOfEntriesRKN4llvm17TargetLibraryInfoENS_9StringRefE.exit: ; preds = %bb.ab, %bb.ac
  %i.ew = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %9, i32 noundef 3)
  %.not273 = icmp eq ptr %i.ew, null
  br i1 %.not273, label %bb.at, label %.preheader275

.preheader275:                                    ; preds = %_ZL21reportNumberOfEntriesRKN4llvm17TargetLibraryInfoENS_9StringRefE.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 136
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 156
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader275, %_ZN4llvm11raw_ostreamlsEc.exit.i
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i87, %_ZN4llvm11raw_ostreamlsEc.exit.i ], [ 1, %.preheader275 ] ; 12 uses
  %i.fa = lshr i64 %indvars.iv.i81, 6
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !68
  %i.fd = and i64 %indvars.iv.i81, 63
  %i.fe = shl nuw i64 1, %i.fd                    ; 2 uses
  %i.ff = and i64 %i.fe, %i.fc
  %.not.i.i.i82 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i.i82, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i91, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i83

_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i83: ; preds = %bb.ae
  %i.fg = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23
  br label %bb.af

_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i91: ; preds = %bb.ae
  %i.fh = lshr i64 %indvars.iv.i81, 2
  %i.fi = and i64 %i.fh, 1073741823
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26
  %i.fl = zext i8 %i.fk to i32
  %indvars.iv.tr.i92 = trunc nuw nsw i64 %indvars.iv.i81 to i32
  %i.fm = shl nuw nsw i32 %indvars.iv.tr.i92, 1
  %i.fn = and i32 %i.fm, 6
  %i.fo = shl nuw nsw i32 3, %i.fn
  %i.fp = and i32 %i.fo, %i.fl
  %.fr.i93 = freeze i32 %i.fp
  %i.fq = icmp ne i32 %.fr.i93, 0                 ; 2 uses
  %i.fr = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23
  %spec.select.i94 = select i1 %i.fq, ptr @.str.59, ptr @.str.60
  br label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i91, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i83
  %i.fs = phi ptr [ %i.fg, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i83 ], [ %i.fr, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i91 ] ; 4 uses
  %.0.i.i22.i = phi i1 [ false, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i83 ], [ %i.fq, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i91 ]
  %i.ft = phi ptr [ @.str.60, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i83 ], [ %spec.select.i94, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i91 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !81
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !85 ; 2 uses
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = icmp ult i64 %i.ga, 4
  br i1 %i.gb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fs, ptr noundef nonnull %i.ft, i64 noundef 4) #23 ; 2 uses
  %.phi.trans.insert.i89 = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %.pre.i90 = load ptr, ptr %.phi.trans.insert.i89, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i84

bb.ah:                                            ; preds = %bb.af
  %i.gd = load i32, ptr %i.ft, align 1
  store i32 %i.gd, ptr %i.fx, align 1
  %i.ge = load ptr, ptr %i.fw, align 8, !tbaa !85
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  store ptr %i.gf, ptr %i.fw, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i84

_ZN4llvm11raw_ostreamlsEPKc.exit.i84:             ; preds = %bb.ah, %bb.ag
  %i.gg = phi ptr [ %.pre.i90, %bb.ag ], [ %i.gf, %bb.ah ] ; 2 uses
  %.0.i.i12.i85 = phi ptr [ %i.gc, %bb.ag ], [ %i.fs, %bb.ah ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i12.i85, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !81
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = icmp ult i64 %i.gl, 11
  br i1 %i.gm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i84
  %i.gn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i12.i85, ptr noundef nonnull @.str.61, i64 noundef 11) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15.i

bb.aj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i84
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i12.i85, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.gg, ptr noundef nonnull align 1 dereferenceable(11) @.str.61, i64 11, i1 false)
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !85
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 11
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15.i

_ZN4llvm11raw_ostreamlsEPKc.exit15.i:             ; preds = %bb.aj, %bb.ai
  %i.gr = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 2 uses
  br i1 %.0.i.i22.i, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15.i
  %i.gs = load i64, ptr %i.fb, align 8, !tbaa !68
  %i.gt = and i64 %i.gs, %i.fe
  %.not.i.i16.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i16.i, label %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i, label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i: ; preds = %bb.ak
  %i.gu = lshr i64 %indvars.iv.i81, 2
  %i.gv = and i64 %i.gu, 1073741823
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !26
  %i.gy = zext i8 %i.gx to i32
  %indvars.iv.tr31.i = trunc nuw nsw i64 %indvars.iv.i81 to i32 ; 2 uses
  %i.gz = shl nuw nsw i32 %indvars.iv.tr31.i, 1
  %i.ha = and i32 %i.gz, 6
  %i.hb = lshr i32 %i.gy, %i.ha
  %i.hc = and i32 %i.hb, 3
  switch i32 %i.hc, label %bb.am [
    i32 0, label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i
    i32 3, label %bb.al
  ]

bb.al:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @_ZN4llvm21TargetLibraryInfoImpl20StandardNamesOffsetsE, i64 %indvars.iv.i81
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.hd, align 4, !tbaa !45
  %i.he = load ptr, ptr @_ZN4llvm21TargetLibraryInfoImpl21StandardNamesStrTableE, align 8, !tbaa !131
  %i.hf = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr @_ZN4llvm21TargetLibraryInfoImpl22StandardNamesSizeTableE, i64 %indvars.iv.i81
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !26
  %i.hj = zext i8 %i.hi to i64
  br label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

bb.am:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i
  %i.hk = load ptr, ptr %i.ex, align 8, !tbaa !202, !noalias !206 ; 2 uses
  %i.hl = load ptr, ptr %i.ey, align 8, !tbaa !215, !noalias !206 ; 2 uses
  %i.hm = load i32, ptr %i.ez, align 4, !tbaa !216, !noalias !206 ; 3 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.loopexit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ho = add i32 %i.hm, -1                       ; 2 uses
  %i.hp = mul nuw nsw i32 %indvars.iv.tr31.i, 37
  %.017.i.i.i.i.i = and i32 %i.ho, %i.hp          ; 3 uses
  %i.hq = zext nneg i32 %.017.i.i.i.i.i to i64    ; 2 uses
  %i.hr = lshr i64 %i.hq, 5
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !45, !noalias !217
  %i.hu = and i32 %.017.i.i.i.i.i, 31
  %i.hv = lshr i32 %i.ht, %i.hu
  %i.hw = trunc i32 %i.hv to i1
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !218

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hx = add nuw i32 %.018.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.hx, %i.ho            ; 3 uses
  %i.hy = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.hz = lshr i64 %i.hy, 5
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !45, !noalias !217
  %i.ic = and i32 %.0.i.i.i.i.i, 31
  %i.id = lshr i32 %i.ib, %i.ic
  %i.ie = trunc i32 %i.id to i1
  br i1 %i.ie, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !219

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.an, %bb.ao
  %i.if = phi i64 [ %i.hy, %bb.ao ], [ %i.hq, %bb.an ] ; 2 uses
  %.018.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.ao ], [ %.017.i.i.i.i.i, %bb.an ]
  %i.ig = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !45, !noalias !217
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp eq i64 %indvars.iv.i81, %i.ii
  br i1 %i.ij, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i, label %bb.ao, !prof !220

.loopexit.i.i.i.i:                                ; preds = %bb.ao, %bb.an, %bb.am
  %i.ik = zext i32 %i.hm to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i.i
  %i.il = phi i64 [ %i.ik, %.loopexit.i.i.i.i ], [ %i.if, %.lr.ph.i.i.i.i.i ]
  %i.im = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !133
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !129
  br label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i, %bb.al, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i, %bb.ak
  %.sroa.06.0.i.i = phi ptr [ %i.io, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i ], [ %i.hg, %bb.al ], [ null, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i ], [ null, %bb.ak ]
  %.sroa.57.0.i.i = phi i64 [ %i.iq, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i ], [ %i.hj, %bb.al ], [ 0, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i ], [ 0, %bb.ak ]
  %i.ir = call fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZL18printPrintableNameRN4llvm11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, ptr %.sroa.06.0.i.i, i64 %.sroa.57.0.i.i) ; 0 uses
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15.i
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @_ZN4llvm21TargetLibraryInfoImpl20StandardNamesOffsetsE, i64 %indvars.iv.i81
  %.sroa.0.0.copyload.i17.i = load i32, ptr %i.is, align 4, !tbaa !45
  %i.it = load ptr, ptr @_ZN4llvm21TargetLibraryInfoImpl21StandardNamesStrTableE, align 8, !tbaa !131
  %i.iu = zext i32 %.sroa.0.0.copyload.i17.i to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr @_ZN4llvm21TargetLibraryInfoImpl22StandardNamesSizeTableE, i64 %indvars.iv.i81
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !26
  %i.iy = zext i8 %i.ix to i64
  %i.iz = call fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZL18printPrintableNameRN4llvm11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, ptr %i.iv, i64 %i.iy) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i
  %i.ja = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !85 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !81
  %.not.i.i86 = icmp ult ptr %i.jc, %i.je
  br i1 %.not.i.i86, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ja, i8 noundef zeroext 10) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store ptr %i.jg, ptr %i.jb, align 8, !tbaa !85
  store i8 10, ptr %i.jc, align 1, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.as, %bb.ar
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %.not.i88 = icmp eq i64 %indvars.iv.next.i87, 529
  br i1 %.not.i88, label %_ZL14dumpTLIEntriesRKN4llvm17TargetLibraryInfoE.exit, label %bb.ae, !llvm.loop !221

bb.at:                                            ; preds = %_ZL21reportNumberOfEntriesRKN4llvm17TargetLibraryInfoENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @_ZNK4llvm3opt7ArgList15getAllArgValuesB5cxx11ENS0_12OptSpecifierE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.112") align 8 %16, ptr noundef nonnull align 8 dereferenceable(176) %9, i32 1) #23
  %i.jh = load ptr, ptr %16, align 8, !tbaa !222
  %i.ji = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !222
  %i.jk = icmp eq ptr %i.jh, %i.jj
  br i1 %i.jk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.jl = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.jm, align 1, !tbaa !171
  store ptr @.str.12, ptr %17, align 8, !tbaa !26
  store i8 3, ptr %i.jl, align 8, !tbaa !168
  call fastcc void @_ZL4failRKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %17)
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.jn = call { ptr, i64 } @_ZNK4llvm3opt7ArgList15getLastArgValueENS0_12OptSpecifierENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(176) %9, i32 6, ptr nonnull @.str.1, i64 0) #23 ; 2 uses
  %i.jo = extractvalue { ptr, i64 } %i.jn, 0      ; 2 uses
  %i.jp = extractvalue { ptr, i64 } %i.jn, 1      ; 2 uses
  %i.jq = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %9, i32 noundef 9)
  %.not274 = icmp eq ptr %i.jq, null              ; 4 uses
  %i.jr = select i1 %.not274, i32 2, i32 1
  %i.js = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %9, i32 noundef 8) ; 2 uses
  %.not = icmp eq ptr %i.js, null
  br i1 %.not, label %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !182
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !66 ; 9 uses
  %.not.i95 = icmp eq ptr %i.jv, null
  br i1 %.not.i95, label %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112.thread, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.aw
  %i.jw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jv) #23
  switch i64 %i.jw, label %bb.ba [
    i64 7, label %bb.ax
    i64 11, label %bb.ay
    i64 4, label %bb.az
  ]

bb.ax:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.jx = load i32, ptr %i.jv, align 1
  %i.jy = xor i32 %i.jx, 1835890035
  %i.jz = getelementptr i8, ptr %i.jv, i64 3
  %i.ka = load i32, ptr %i.jz, align 1
  %i.kb = xor i32 %i.ka, 2037539181
  %i.kc = or i32 %i.jy, %i.kb
  %i.kd = icmp ne i32 %i.kc, 0
  %i.ke = zext i1 %i.kd to i32
  %.not.i.i96 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i96, label %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112, label %bb.ba

bb.ay:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.kf = load i64, ptr %i.jv, align 1
  %i.kg = xor i64 %i.kf, 7021223361039788388
  %i.kh = getelementptr i8, ptr %i.jv, i64 3
  %i.ki = load i64, ptr %i.kh, align 1
  %i.kj = xor i64 %i.ki, 8746956266060214883
  %i.kk = or i64 %i.kg, %i.kj
  %i.kl = icmp ne i64 %i.kk, 0
  %i.km = zext i1 %i.kl to i32
  %.not.i.i102 = icmp eq i32 %i.km, 0
  br i1 %.not.i.i102, label %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112, label %bb.ba

bb.az:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.kn = load i32, ptr %i.jv, align 1
  %i.ko = icmp ne i32 %i.kn, 1819047270
  %i.kp = zext i1 %i.ko to i32
  %.not.i.i110 = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i110, label %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112, label %bb.ba

_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112.thread: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  br label %_ZN4llvm9StringRefC2EPKc.exit116

bb.ba:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.ax, %bb.ay, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.kq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jv) #23
  br label %_ZN4llvm9StringRefC2EPKc.exit116

_ZN4llvm9StringRefC2EPKc.exit116:                 ; preds = %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112.thread, %bb.ba
  %.sroa.0.0.i115 = phi i64 [ %i.kq, %bb.ba ], [ 0, %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112.thread ]
  %i.kr = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 3, ptr %i.kr, align 8, !tbaa !168
  %i.ks = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 5, ptr %i.ks, align 1, !tbaa !171
  store ptr @.str.16, ptr %18, align 8, !tbaa !26
  %i.kt = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.jv, ptr %i.kt, align 8, !tbaa !26
  %i.ku = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %.sroa.0.0.i115, ptr %i.ku, align 8, !tbaa !26
  call fastcc void @_ZL4failRKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %18)
  unreachable

_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112: ; preds = %bb.az, %bb.ax, %bb.ay, %bb.av
  %.071 = phi i32 [ %i.jr, %bb.av ], [ 3, %bb.az ], [ 2, %bb.ay ], [ 1, %bb.ax ]
  %i.kv = load ptr, ptr %i.ji, align 8, !tbaa !224
  %i.kw = load ptr, ptr %16, align 8, !tbaa !226  ; 2 uses
  %.not288 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not288, label %_ZN4llvm11raw_ostreamlsEPKc.exit121, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit193
  %i.kx = phi ptr [ %i.kw, %.lr.ph ], [ %i.wk, %_ZN4llvm11raw_ostreamlsEPKc.exit193 ] ; 3 uses
  %.072287 = phi i64 [ 0, %.lr.ph ], [ %i.wi, %_ZN4llvm11raw_ostreamlsEPKc.exit193 ] ; 4 uses
  br i1 %.not274, label %.preheader, label %bb.bc
end_hunk_0
begin_hunk_1_@main:bb.a
  call void @_ZN10SDKNameMap16populateFromFileEN4llvm9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(20) @_ZL8SDKNames, ptr %i.jo, i64 %i.jp, ptr %i.lr, i64 %i.lt)
  %i.lu = add nuw i64 %.173, 1                    ; 4 uses
  %i.lv = load ptr, ptr %i.ji, align 8, !tbaa !224
  %i.lw = load ptr, ptr %16, align 8, !tbaa !226  ; 2 uses
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = ashr exact i64 %i.lz, 5
  %i.mb = icmp ult i64 %i.lu, %i.ma
  br i1 %i.mb, label %.preheader, label %bb.bg, !llvm.loop !227

bb.bg:                                            ; preds = %.preheader
  %i.mc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL8SDKNames, i64 12), align 4, !tbaa !8
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.me = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorEv() #23 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !81
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 32 ; 3 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !85 ; 2 uses
  %i.mj = ptrtoint ptr %i.mg to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = icmp ult i64 %i.ml, 18
  br i1 %i.mm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.mn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.me, ptr noundef nonnull @.str.17, i64 noundef 18) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit121

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.mi, ptr noundef nonnull align 1 dereferenceable(18) @.str.17, i64 18, i1 false)
  %i.mo = load ptr, ptr %i.mh, align 8, !tbaa !85
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 18
  store ptr %i.mp, ptr %i.mh, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit121

bb.bk:                                            ; preds = %bb.bg
  %i.mq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !81
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 32 ; 3 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !85 ; 2 uses
  %i.mv = ptrtoint ptr %i.ms to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = icmp ult i64 %i.mx, 23
  br i1 %i.my, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mq, ptr noundef nonnull @.str.18, i64 noundef 23) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit125

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.mu, ptr noundef nonnull align 1 dereferenceable(23) @.str.18, i64 23, i1 false)
  %i.na = load ptr, ptr %i.mt, align 8, !tbaa !85
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 23
  store ptr %i.nb, ptr %i.mt, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit125

_ZN4llvm11raw_ostreamlsEPKc.exit125:              ; preds = %bb.bl, %bb.bm
  %.0.i.i124 = phi ptr [ %i.mz, %bb.bl ], [ %i.mq, %bb.bm ]
  %i.nc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL8SDKNames, i64 12), align 4, !tbaa !8
  %i.nd = zext i32 %i.nc to i64
  %i.ne = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i124, i64 noundef %i.nd) #23 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !81
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 32 ; 3 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !85 ; 2 uses
  %i.nj = ptrtoint ptr %i.ng to i64
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = icmp ult i64 %i.nl, 17
  br i1 %i.nm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit125
  %i.nn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ne, ptr noundef nonnull @.str.19, i64 noundef 17) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit129

bb.bo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ni, ptr noundef nonnull align 1 dereferenceable(17) @.str.19, i64 17, i1 false)
  %i.no = load ptr, ptr %i.nh, align 8, !tbaa !85
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 17
  store ptr %i.np, ptr %i.nh, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit129

_ZN4llvm11raw_ostreamlsEPKc.exit129:              ; preds = %bb.bo, %bb.bn, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEE5clearEv.exit
  %.2 = phi i64 [ %.072287, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEE5clearEv.exit ], [ %i.lu, %bb.bn ], [ %i.lu, %bb.bo ] ; 6 uses
  br label %bb.bw

bb.bp:                                            ; preds = %bb.cu
  %i.nq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !81
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 32 ; 3 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !85 ; 2 uses
  %i.nv = ptrtoint ptr %i.ns to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = icmp ult i64 %i.nx, 26
  br i1 %i.ny, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull @.str.23, i64 noundef 26) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit133

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.nu, ptr noundef nonnull align 1 dereferenceable(26) @.str.23, i64 26, i1 false)
  %i.oa = load ptr, ptr %i.nt, align 8, !tbaa !85
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 26
  store ptr %i.ob, ptr %i.nt, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit133

_ZN4llvm11raw_ostreamlsEPKc.exit133:              ; preds = %bb.bq, %bb.br
  %.0.i.i132 = phi ptr [ %i.nz, %bb.bq ], [ %i.nq, %bb.br ]
  %i.oc = zext i32 %.170 to i64
  %i.od = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i132, i64 noundef %i.oc) #23 ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !81
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 32 ; 3 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !85 ; 2 uses
  %i.oi = ptrtoint ptr %i.of to i64
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = icmp ult i64 %i.ok, 27
  br i1 %i.ol, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit133
  %i.om = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.od, ptr noundef nonnull @.str.24, i64 noundef 27) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit137

bb.bt:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.oh, ptr noundef nonnull align 1 dereferenceable(27) @.str.24, i64 27, i1 false)
  %i.on = load ptr, ptr %i.og, align 8, !tbaa !85
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 27
  store ptr %i.oo, ptr %i.og, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit137

_ZN4llvm11raw_ostreamlsEPKc.exit137:              ; preds = %bb.bs, %bb.bt
  %.0.i.i136 = phi ptr [ %i.om, %bb.bs ], [ %i.od, %bb.bt ]
  %i.op = zext i32 %.168 to i64
  %i.oq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i136, i64 noundef %i.op) #23 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !81
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 32 ; 3 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !85 ; 2 uses
  %i.ov = ptrtoint ptr %i.os to i64
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = icmp ult i64 %i.ox, 27
  br i1 %i.oy, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit137
  %i.oz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.oq, ptr noundef nonnull @.str.25, i64 noundef 27) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit141

bb.bv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ou, ptr noundef nonnull align 1 dereferenceable(27) @.str.25, i64 27, i1 false)
  %i.pa = load ptr, ptr %i.ot, align 8, !tbaa !85
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 27
  store ptr %i.pb, ptr %i.ot, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit141

_ZN4llvm11raw_ostreamlsEPKc.exit141:              ; preds = %bb.bu, %bb.bv
  %.0.i.i140 = phi ptr [ %i.oz, %bb.bu ], [ %i.oq, %bb.bv ]
  %i.pc = zext i32 %.166 to i64
  %i.pd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i140, i64 noundef %i.pc) #23 ; 0 uses
  %i.pe = icmp eq i32 %.166, 0
  br i1 %i.pe, label %bb.cv, label %_ZN4llvm11raw_ostreamlsEPKc.exit183

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit129, %bb.cu
  %indvars.iv = phi i64 [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit129 ], [ %indvars.iv.next, %bb.cu ] ; 7 uses
  %.065284 = phi i32 [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit129 ], [ %.166, %bb.cu ] ; 4 uses
  %.067283 = phi i32 [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit129 ], [ %.168, %bb.cu ] ; 4 uses
  %.069282 = phi i32 [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit129 ], [ %.170, %bb.cu ] ; 4 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr @_ZN4llvm21TargetLibraryInfoImpl20StandardNamesOffsetsE, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.pf, align 4, !tbaa !45
  %i.pg = load ptr, ptr @_ZN4llvm21TargetLibraryInfoImpl21StandardNamesStrTableE, align 8, !tbaa !131
  %i.ph = zext i32 %.sroa.0.0.copyload.i to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.ph ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr @_ZN4llvm21TargetLibraryInfoImpl22StandardNamesSizeTableE, i64 %indvars.iv
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !26
  %i.pl = zext i8 %i.pk to i64                    ; 3 uses
  %i.pm = lshr i64 %indvars.iv, 6
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.pm
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !68
  %i.pp = and i64 %indvars.iv, 63
  %i.pq = shl nuw i64 1, %i.pp
  %i.pr = and i64 %i.po, %i.pq
  %.not.i.i142 = icmp eq i64 %i.pr, 0
  br i1 %.not.i.i142, label %bb.bx, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit

bb.bx:                                            ; preds = %bb.bw
  %i.ps = lshr i64 %indvars.iv, 2
  %i.pt = and i64 %i.ps, 1073741823
  %i.pu = getelementptr inbounds nuw i8, ptr %14, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !26
  %i.pw = zext i8 %i.pv to i32
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.px = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.py = and i32 %i.px, 6
  %i.pz = shl nuw nsw i32 3, %i.py
  %i.qa = and i32 %i.pz, %i.pw
  %.fr = freeze i32 %i.qa
  %i.qb = icmp ne i32 %.fr, 0
  br label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit

_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit: ; preds = %bb.bw, %bb.bx
  %.0.i.i143 = phi i1 [ %i.qb, %bb.bx ], [ false, %bb.bw ] ; 3 uses
  %i.qc = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.pi, i64 %i.pl) #23
  %i.qd = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) @_ZL8SDKNames, ptr %i.pi, i64 %i.pl, i32 noundef %i.qc) #23 ; 2 uses
  %i.qe = icmp ne i32 %i.qd, -1
  %i.qf = sext i32 %i.qd to i64
  %.pre.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL8SDKNames, i64 8), align 8
  %.pre4.i.i = zext i32 %.pre.i.i to i64
  %i.qg = icmp ne i64 %i.qf, %.pre4.i.i
  %narrow = select i1 %i.qe, i1 %i.qg, i1 false   ; 3 uses
  %spec.select = select i1 %.0.i.i143, i32 2, i32 0
  %i.qh = zext i1 %narrow to i32
  %i.qi = or disjoint i32 %spec.select, %i.qh     ; 2 uses
  switch i32 %i.qi, label %default.unreachable348 [
    i32 0, label %bb.cb
    i32 1, label %bb.by
    i32 2, label %bb.bz
    i32 3, label %bb.ca
  ]

bb.by:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit
  %i.qj = add i32 %.067283, 1
  br label %bb.cb

bb.bz:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit
  %i.qk = add i32 %.069282, 1
  br label %bb.cb

bb.ca:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit
  %i.ql = add i32 %.065284, 1
  br label %bb.cb

default.unreachable348:                           ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit
  unreachable

bb.cb:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit, %bb.ca, %bb.bz, %bb.by
  %.170 = phi i32 [ %.069282, %bb.ca ], [ %i.qk, %bb.bz ], [ %.069282, %bb.by ], [ %.069282, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit ] ; 3 uses
  %.168 = phi i32 [ %.067283, %bb.ca ], [ %.067283, %bb.bz ], [ %i.qj, %bb.by ], [ %.067283, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit ] ; 3 uses
  %.166 = phi i32 [ %i.ql, %bb.ca ], [ %.065284, %bb.bz ], [ %.065284, %bb.by ], [ %.065284, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit ] ; 3 uses
  %i.qm = xor i1 %.0.i.i143, %narrow
  %i.qn = select i1 %i.qm, i32 2, i32 3
  %.not77 = icmp samesign ugt i32 %i.qn, %.071
  br i1 %.not77, label %bb.cu, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 32481192689299310, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @__const.main.Indicator, i64 12, i1 false)
  %i.qo = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 5 uses
  %i.qp = zext nneg i32 %i.qi to i64
  %i.qq = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.qp ; 3 uses
  %i.qr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qq) #23 ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !81
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 32 ; 3 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !85 ; 3 uses
  %i.qw = ptrtoint ptr %i.qt to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = icmp ugt i64 %i.qr, %i.qy
  br i1 %i.qz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ra = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.qo, ptr noundef nonnull %i.qq, i64 noundef %i.qr) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ra, i64 32
  %.pre293 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit148

bb.ce:                                            ; preds = %bb.cc
  %.not.i2.i145 = icmp eq i64 %i.qr, 0
  br i1 %.not.i2.i145, label %_ZN4llvm11raw_ostreamlsEPKc.exit148, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qv, ptr nonnull align 1 %i.qq, i64 %i.qr, i1 false)
  %i.rb = load ptr, ptr %i.qu, align 8, !tbaa !85
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.qr ; 2 uses
  store ptr %i.rc, ptr %i.qu, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit148

_ZN4llvm11raw_ostreamlsEPKc.exit148:              ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.rd = phi ptr [ %.pre293, %bb.cd ], [ %i.rc, %bb.cf ], [ %i.qv, %bb.ce ] ; 2 uses
  %.0.i.i147 = phi ptr [ %i.ra, %bb.cd ], [ %i.qo, %bb.cf ], [ %i.qo, %bb.ce ] ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i.i147, i64 24
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !81
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = ptrtoint ptr %i.rd to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = icmp ult i64 %i.ri, 5
  br i1 %i.rj, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit148
  %i.rk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i147, ptr noundef nonnull @.str.20, i64 noundef 5) #23 ; 2 uses
  %.phi.trans.insert294 = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  %.pre295 = load ptr, ptr %.phi.trans.insert294, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit152

bb.ch:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit148
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.i.i147, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.rd, ptr noundef nonnull align 1 dereferenceable(5) @.str.20, i64 5, i1 false)
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !85
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 5 ; 2 uses
  store ptr %i.rn, ptr %i.rl, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit152

_ZN4llvm11raw_ostreamlsEPKc.exit152:              ; preds = %bb.cg, %bb.ch
  %i.ro = phi ptr [ %.pre295, %bb.cg ], [ %i.rn, %bb.ch ] ; 3 uses
  %.0.i.i151 = phi ptr [ %i.rk, %bb.cg ], [ %.0.i.i147, %bb.ch ] ; 5 uses
  %.sroa.sel.sroa.sel = select i1 %.0.i.i143, ptr %.sroa.gep, ptr %i.e ; 3 uses
  %i.rp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.sel.sroa.sel) #23 ; 5 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i.i151, i64 24
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !81
  %i.rs = getelementptr inbounds nuw i8, ptr %.0.i.i151, i64 32 ; 2 uses
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = ptrtoint ptr %i.ro to i64
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = icmp ugt i64 %i.rp, %i.rv
  br i1 %i.rw, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit152
  %i.rx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i151, ptr noundef nonnull %.sroa.sel.sroa.sel, i64 noundef %i.rp) #23 ; 2 uses
  %.phi.trans.insert296 = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  %.pre297 = load ptr, ptr %.phi.trans.insert296, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit157

bb.cj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit152
  %.not.i2.i154 = icmp eq i64 %i.rp, 0
  br i1 %.not.i2.i154, label %_ZN4llvm11raw_ostreamlsEPKc.exit157, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ro, ptr nonnull align 4 %.sroa.sel.sroa.sel, i64 %i.rp, i1 false)
  %i.ry = load ptr, ptr %i.rs, align 8, !tbaa !85
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rp ; 2 uses
  store ptr %i.rz, ptr %i.rs, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit157

_ZN4llvm11raw_ostreamlsEPKc.exit157:              ; preds = %bb.ci, %bb.cj, %bb.ck
  %i.sa = phi ptr [ %.pre297, %bb.ci ], [ %i.rz, %bb.ck ], [ %i.ro, %bb.cj ] ; 2 uses
  %.0.i.i156 = phi ptr [ %i.rx, %bb.ci ], [ %.0.i.i151, %bb.ck ], [ %.0.i.i151, %bb.cj ] ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.i.i156, i64 24
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !81
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = ptrtoint ptr %i.sa to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = icmp ult i64 %i.sf, 5
  br i1 %i.sg, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit157
  %i.sh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i156, ptr noundef nonnull @.str.21, i64 noundef 5) #23 ; 2 uses
  %.phi.trans.insert298 = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %.pre299 = load ptr, ptr %.phi.trans.insert298, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit161

bb.cm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit157
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i.i156, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.sa, ptr noundef nonnull align 1 dereferenceable(5) @.str.21, i64 5, i1 false)
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !85
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 5 ; 2 uses
  store ptr %i.sk, ptr %i.si, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit161

_ZN4llvm11raw_ostreamlsEPKc.exit161:              ; preds = %bb.cl, %bb.cm
  %i.sl = phi ptr [ %.pre299, %bb.cl ], [ %i.sk, %bb.cm ] ; 3 uses
  %.0.i.i160 = phi ptr [ %i.sh, %bb.cl ], [ %.0.i.i156, %bb.cm ] ; 5 uses
  %.sroa.sel5.sroa.sel = select i1 %narrow, ptr %.sroa.gep, ptr %i.e ; 3 uses
  %i.sm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.sel5.sroa.sel) #23 ; 5 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.0.i.i160, i64 24
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !81
  %i.sp = getelementptr inbounds nuw i8, ptr %.0.i.i160, i64 32 ; 2 uses
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sl to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = icmp ugt i64 %i.sm, %i.ss
  br i1 %i.st, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit161
  %i.su = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i160, ptr noundef nonnull %.sroa.sel5.sroa.sel, i64 noundef %i.sm) #23 ; 2 uses
  %.phi.trans.insert300 = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %.pre301 = load ptr, ptr %.phi.trans.insert300, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit166

bb.co:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit161
  %.not.i2.i163 = icmp eq i64 %i.sm, 0
  br i1 %.not.i2.i163, label %_ZN4llvm11raw_ostreamlsEPKc.exit166, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sl, ptr nonnull align 4 %.sroa.sel5.sroa.sel, i64 %i.sm, i1 false)
  %i.sv = load ptr, ptr %i.sp, align 8, !tbaa !85
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sm ; 2 uses
  store ptr %i.sw, ptr %i.sp, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit166

_ZN4llvm11raw_ostreamlsEPKc.exit166:              ; preds = %bb.cn, %bb.co, %bb.cp
end_hunk_1
begin_hunk_2_@main:bb.a
  store ptr %i.vc, ptr %i.ux, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit183

_ZN4llvm11raw_ostreamlsEPKc.exit183:              ; preds = %bb.dc, %bb.db, %_ZN4llvm11raw_ostreamlsEPKc.exit141
  %i.vd = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !85 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !81
  %.not.i184 = icmp ult ptr %i.vf, %i.vh
  br i1 %.not.i184, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit183
  %i.vi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.vd, i8 noundef zeroext 10) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit186

bb.de:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit183
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 1
  store ptr %i.vj, ptr %i.ve, align 8, !tbaa !85
  store i8 10, ptr %i.vf, align 1, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEc.exit186

_ZN4llvm11raw_ostreamlsEc.exit186:                ; preds = %bb.dd, %bb.de
  br i1 %.not274, label %_ZN4llvm11raw_ostreamlsEc.exit189, label %_ZN4llvm11raw_ostreamlsEPKc.exit193

.critedge:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit175
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ud, i64 32 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !85 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !81
  %.not.i187 = icmp ult ptr %i.vl, %i.vn
  br i1 %.not.i187, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.critedge
  %i.vo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ud, i8 noundef zeroext 10) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit189

bb.dg:                                            ; preds = %.critedge
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  store ptr %i.vp, ptr %i.vk, align 8, !tbaa !85
  store i8 10, ptr %i.vl, align 1, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEc.exit189

_ZN4llvm11raw_ostreamlsEc.exit189:                ; preds = %bb.dg, %bb.df, %_ZN4llvm11raw_ostreamlsEc.exit186
  %i.vq = icmp eq i32 %.170, 0
  %i.vr = icmp eq i32 %.168, 0
  %or.cond = select i1 %i.vq, i1 %i.vr, i1 false
  %i.vs = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #23 ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 24
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !81
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 32 ; 5 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !85 ; 3 uses
  %i.vx = ptrtoint ptr %i.vu to i64
  %i.vy = ptrtoint ptr %i.vw to i64
  %i.vz = sub i64 %i.vx, %i.vy                    ; 2 uses
  br i1 %or.cond, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit189
  %i.wa = icmp ult i64 %i.vz, 51
  br i1 %i.wa, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.wb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.vs, ptr noundef nonnull @.str.29, i64 noundef 51) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit193

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.vw, ptr noundef nonnull align 1 dereferenceable(51) @.str.29, i64 51, i1 false)
  %i.wc = load ptr, ptr %i.vv, align 8, !tbaa !85
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 51
  store ptr %i.wd, ptr %i.vv, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit193

bb.dk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit189
  %i.we = icmp ult i64 %i.vz, 44
  br i1 %i.we, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.wf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.vs, ptr noundef nonnull @.str.30, i64 noundef 44) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit193

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.vw, ptr noundef nonnull align 1 dereferenceable(44) @.str.30, i64 44, i1 false)
  %i.wg = load ptr, ptr %i.vv, align 8, !tbaa !85
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 44
  store ptr %i.wh, ptr %i.vv, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit193

_ZN4llvm11raw_ostreamlsEPKc.exit193:              ; preds = %bb.dm, %bb.dl, %bb.dj, %bb.di, %_ZN4llvm11raw_ostreamlsEc.exit186, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEE5clearEv.exit
  %.3 = phi i64 [ %.072287, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEE5clearEv.exit ], [ %.2, %_ZN4llvm11raw_ostreamlsEc.exit186 ], [ %.2, %bb.dj ], [ %.2, %bb.di ], [ %.2, %bb.dm ], [ %.2, %bb.dl ]
  %i.wi = add i64 %.3, 1                          ; 2 uses
  %i.wj = load ptr, ptr %i.ji, align 8, !tbaa !224
  %i.wk = load ptr, ptr %16, align 8, !tbaa !226  ; 2 uses
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = ashr exact i64 %i.wn, 5
  %i.wp = icmp ult i64 %i.wi, %i.wo
  br i1 %i.wp, label %bb.bb, label %_ZN4llvm11raw_ostreamlsEPKc.exit121, !llvm.loop !229

_ZN4llvm11raw_ostreamlsEPKc.exit121:              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit193, %_ZN4llvm12StringSwitchI10ReportKindS1_E4CaseENS_13StringLiteralES1_.exit112, %bb.bj, %bb.bi
  %i.wq = load ptr, ptr %16, align 8, !tbaa !226  ; 3 uses
  %i.wr = load ptr, ptr %i.ji, align 8, !tbaa !224 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wq, %i.wr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit121, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.wx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.wq, %_ZN4llvm11raw_ostreamlsEPKc.exit121 ] ; 3 uses
  %i.ws = load ptr, ptr %.05.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.wu = icmp eq ptr %i.ws, %i.wt
  br i1 %i.wu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.wv = load i64, ptr %i.wt, align 8, !tbaa !26
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.ww) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %i.wx, %i.wr
  br i1 %.not.i.i.i198, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !230

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !226
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZN4llvm11raw_ostreamlsEPKc.exit121
  %i.wy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.wq, %_ZN4llvm11raw_ostreamlsEPKc.exit121 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.wz = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !231
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = ptrtoint ptr %i.wy to i64
  %i.xd = sub i64 %i.xb, %i.xc
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xd) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZL14dumpTLIEntriesRKN4llvm17TargetLibraryInfoE.exit

_ZL14dumpTLIEntriesRKN4llvm17TargetLibraryInfoE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.xe = getelementptr inbounds nuw i8, ptr %14, i64 192
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !232 ; 3 uses
  %.not.i.i.i.i199 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i.i199, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i, label %bb.do

bb.do:                                            ; preds = %_ZL14dumpTLIEntriesRKN4llvm17TargetLibraryInfoE.exit
  %i.xg = getelementptr inbounds nuw i8, ptr %14, i64 208
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !235
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = ptrtoint ptr %i.xf to i64
  %i.xk = sub i64 %i.xi, %i.xj
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef %i.xk) #25
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i:  ; preds = %bb.do, %_ZL14dumpTLIEntriesRKN4llvm17TargetLibraryInfoE.exit
  %i.xl = getelementptr inbounds nuw i8, ptr %14, i64 168
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !232 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.xm, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i
  %i.xn = getelementptr inbounds nuw i8, ptr %14, i64 184
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !235
  %i.xp = ptrtoint ptr %i.xo to i64
  %i.xq = ptrtoint ptr %i.xm to i64
  %i.xr = sub i64 %i.xp, %i.xq
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef %i.xr) #25
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i: ; preds = %bb.dp, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i
  %i.xs = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %14, i64 156 ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !216 ; 2 uses
  %i.xv = icmp eq i32 %i.xu, 0
  br i1 %i.xv, label %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i
  %i.xw = load ptr, ptr %i.xs, align 8, !tbaa !202
  %i.xx = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !215
  %i.xz = zext i32 %i.xu to i64
  %i.ya = add nuw nsw i64 %i.xz, 31
  %i.yb = lshr i64 %i.ya, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %indvars.iv.i.i.i
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !45 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.yd, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i200

.lr.ph.i.i.i200:                                  ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ye = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.dq

bb.dq:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i200
  %.0.i3.i.i.i = phi i32 [ %i.yd, %.lr.ph.i.i.i200 ], [ %i.yq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.yf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.yg = or disjoint i32 %i.yf, %i.ye
  %i.yh = zext i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [40 x i8], ptr %i.xw, i64 %i.yh ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !133 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 24 ; 2 uses
  %i.ym = icmp eq ptr %i.yk, %i.yl
  br i1 %i.ym, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i201: ; preds = %bb.dq
  %i.yn = load i64, ptr %i.yl, align 8, !tbaa !26
  %i.yo = add i64 %i.yn, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yo) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i201
  %i.yp = add i32 %.0.i3.i.i.i, -1
  %i.yq = and i32 %i.yp, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.yq, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.dq, !llvm.loop !236

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i3.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.yb
  br i1 %.not.i.i.i3.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !237

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.xt, align 4, !tbaa !216 ; 2 uses
  %i.yr = icmp eq i32 %.pr.i.i, 0
  br i1 %i.yr, label %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i
  %i.ys = load ptr, ptr %i.xs, align 8, !tbaa !202
  %i.yt = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.yu = mul nuw nsw i64 %i.yt, 40
  %i.yv = add nuw nsw i64 %i.yt, 31
  %i.yw = lshr i64 %i.yv, 3
  %i.yx = and i64 %i.yw, 1073741820
  %i.yy = add nuw nsw i64 %i.yx, %i.yu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ys, i64 noundef %i.yy, i64 noundef 8) #23
  br label %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit

_ZN4llvm21TargetLibraryInfoImplD2Ev.exit:         ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.yz = load ptr, ptr %13, align 8, !tbaa !133  ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.zb = icmp eq ptr %i.yz, %i.za
  br i1 %i.zb, label %_ZN4llvm6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203: ; preds = %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit
  %i.zc = load i64, ptr %i.za, align 8, !tbaa !26
  %i.zd = add i64 %i.zc, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zd) #25
  br label %_ZN4llvm6TripleD2Ev.exit

_ZN4llvm6TripleD2Ev.exit:                         ; preds = %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN4llvm6TripleD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN4llvm3opt12InputArgListD2Ev(ptr noundef nonnull align 8 dead_on_return(348) dereferenceable(352) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN4llvm3opt8OptTableD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ze = load ptr, ptr %i.g, align 8, !tbaa !182 ; 2 uses
  %i.zf = load i32, ptr %i.i, align 8, !tbaa !184 ; 2 uses
  %i.zg = zext i32 %i.zf to i64
  %.idx.i205 = shl nuw nsw i64 %i.zg, 3
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 %.idx.i205
  %.not6.i.i = icmp eq i32 %i.zf, 0
  br i1 %.not6.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ds, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.zr, %.lr.ph.i.i ], [ %i.ze, %bb.ds ] ; 3 uses
  %i.zi = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.zj = ptrtoint ptr %.07.i.i to i64
  %i.zk = ptrtoint ptr %i.zi to i64
  %i.zl = sub i64 %i.zj, %i.zk
  %sum.shift.i.i = lshr i64 %i.zl, 10
  %i.zm = trunc i64 %sum.shift.i.i to i32
  %i.zn = and i32 %i.zm, 33554431
  %i.zo = call i32 @llvm.umin.i32(i32 %i.zn, i32 30)
  %.sroa.speculated.i.i.i = zext nneg i32 %i.zo to i64
  %i.zp = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i
  %i.zq = load ptr, ptr %.07.i.i, align 8, !tbaa !153
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.zq, i64 noundef %i.zp, i64 noundef 16) #23
  %i.zr = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.zr, %i.zh
  br i1 %.not.i.i206, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i, !llvm.loop !238

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i: ; preds = %.lr.ph.i.i, %bb.ds
  %i.zs = load ptr, ptr %i.k, align 8, !tbaa !182 ; 3 uses
  %i.zt = load i32, ptr %i.m, align 8, !tbaa !184 ; 2 uses
  %i.zu = zext i32 %i.zt to i64
  %.idx.i.i = shl nuw nsw i64 %i.zu, 4
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.zt, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, %.lr.ph.i1.i
  %.011.i.i = phi ptr [ %i.zz, %.lr.ph.i1.i ], [ %i.zs, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 3 uses
  %i.zw = load ptr, ptr %.011.i.i, align 8, !tbaa !239
  %i.zx = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !241
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.zw, i64 noundef %i.zy, i64 noundef 16) #23
  %i.zz = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i2.i207 = icmp eq ptr %i.zz, %i.zv
  br i1 %.not.i2.i207, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, label %.lr.ph.i1.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i: ; preds = %.lr.ph.i1.i
  %.pre.i208 = load ptr, ptr %i.k, align 8, !tbaa !182
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i
  %i.aaa = phi ptr [ %.pre.i208, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i ], [ %i.zs, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, %i.l
  br i1 %i.aab, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, label %bb.dt

bb.dt:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  call void @free(ptr noundef %i.aaa) #23
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i: ; preds = %bb.dt, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  %i.aac = load ptr, ptr %i.g, align 8, !tbaa !182 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.h
  br i1 %i.aad, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i
  call void @free(ptr noundef %i.aac) #23
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN4llvm8InitLLVMD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i32 0
}

declare void @_ZNK4llvm3opt8OptTable9parseArgsEiPKPcNS0_12OptSpecifierERNS_11StringSaverESt8functionIFvNS_9StringRefEEE(ptr dead_on_unwind writable sret(%"class.llvm::opt::InputArgList") align 8, ptr noundef nonnull align 8 dereferenceable(216), i32 noundef, ptr noundef, i32, ptr noundef nonnull align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZNK4llvm3opt8OptTable9printHelpERNS_11raw_ostreamEPKcS5_bbNS0_10VisibilityENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32, ptr noundef byval(%"class.llvm::StringRef") align 8) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm3opt7ArgList15getLastArgValueENS0_12OptSpecifierENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(176), i32, ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm21TargetLibraryInfoImplC1ERKNS_6TripleENS_13VectorLibraryE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) unnamed_addr #4

declare void @_ZNK4llvm3opt7ArgList15getAllArgValuesB5cxx11ENS0_12OptSpecifierE(ptr dead_on_unwind writable sret(%"class.std::vector.112") align 8, ptr noundef nonnull align 8 dereferenceable(176), i32) local_unnamed_addr #4

; Function Attrs: cold mustprogress noreturn nounwind uwtable
define internal fastcc void @_ZL4failRKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorEv() #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %0)
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 noundef signext 10) ; 0 uses
  tail call void @exit(i32 noundef 1) #26
  unreachable
}

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define internal fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef range(i32 3, 10) %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::opt::OptSpecifier"], align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !242
  store i32 %1, ptr %2, align 4, !noalias !242
  %i.a = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull %2, i64 1) #23, !noalias !242 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.a, 32  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !242
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182, !noalias !242 ; 2 uses
  %i.d = and i64 %i.a, 4294967295                 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.4.0.extract.shift.i ; 5 uses
  %.not29.i.i.i = icmp samesign eq i64 %i.d, %.sroa.4.0.extract.shift.i
  br i1 %.not29.i.i.i, label %_ZNK4llvm3opt7ArgList8filteredIJN12_GLOBAL__N_12IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.thread25.i.i.i
  %.sroa.024.0.i = phi ptr [ %i.i, %.thread25.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.024.0.i, align 8, !tbaa !245, !noalias !242 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i.i, label %.thread25.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.h = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 range(i32 3, 10) %1) #23, !noalias !242
  br i1 %i.h, label %_ZNK4llvm3opt7ArgList8filteredIJN12_GLOBAL__N_12IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.thread25.i.i.i

.thread25.i.i.i:                                  ; preds = %.preheader.preheader.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i, !llvm.loop !247

_ZNK4llvm3opt7ArgList8filteredIJN12_GLOBAL__N_12IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit: ; preds = %.preheader.preheader.i.i.i, %bb.a
  %.sroa.024.1.i = phi ptr [ %i.e, %bb.a ], [ %.sroa.024.0.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %.not36 = icmp eq ptr %.sroa.024.1.i, %i.f
  br i1 %.not36, label %._crit_edge, label %.lr.ph
end_hunk_2
