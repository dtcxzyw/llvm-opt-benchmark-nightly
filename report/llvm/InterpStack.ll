Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpStack?download=true
inline.NumInlined: 634
inline.NumDeleted: 315
begin_hunk_0_@_ZN5clang6interplsERN4llvm11raw_ostreamERKNS0_7PointerE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bq, ptr noundef nonnull align 1 dereferenceable(17) @.str.5, i64 17, i1 false)
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 17
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !60
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !60  ; 3 uses
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !54
  %.not.i40 = icmp ult ptr %i.by, %i.bz
  br i1 %.not.i40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread
  %i.ca = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 32) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit42

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !60
  store i8 32, ptr %i.by, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit42

_ZN4llvm11raw_ostreamlsEc.exit42:                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.cc, ptr %2, align 8, !tbaa !125
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !91
  store i8 0, ptr %i.cc, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ce, align 8, !tbaa !126
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.cf, align 8, !tbaa !127
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.cg, align 4, !tbaa !128
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %3, align 8, !tbaa !129
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.ci, align 8, !tbaa !131
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !92
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit50

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit42
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5clang6interp7Pointer6expandEv.exit75
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !43, !noalias !133 ; 3 uses
  %i.cw = load i32, ptr %i.cn, align 8, !tbaa !43, !noalias !133 ; 3 uses
  %i.cx = load i64, ptr %4, align 8, !tbaa !117, !noalias !133
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !98 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !103
  %i.db = icmp eq i32 %i.cw, %i.da
  %.pre.i44 = zext i32 %i.cw to i64               ; 3 uses
  br i1 %i.db, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i45, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.pre.i44
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !118
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i45

_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i45:   ; preds = %bb.m, %bb.l
  %.0.i.i.i.i46 = phi ptr [ %i.de, %bb.m ], [ %i.cy, %bb.l ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i46, i64 53
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !121, !range !84, !noundef !85
  %i.dh = trunc nuw i8 %i.dg to i1
  %.not.i.i47 = icmp ne i64 %i.cx, %.pre.i44
  %or.cond.not.i48 = select i1 %i.dh, i1 %.not.i.i47, i1 false
  br i1 %or.cond.not.i48, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i45
  %i.di = icmp ugt i32 %i.cw, 15
  br i1 %i.di, label %bb.o, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit50

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.pre.i44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = load i16, ptr %i.dk, align 4
  %i.dm = and i16 %i.dl, 256
  %.not2.i.i49 = icmp eq i16 %i.dm, 0
  br i1 %.not2.i.i49, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit50, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i45, %bb.o
  %i.dn = load ptr, ptr %i.co, align 8, !tbaa !60 ; 3 uses
  %i.do = load ptr, ptr %i.cp, align 8, !tbaa !54
  %.not.i51 = icmp ult ptr %i.dn, %i.do
  br i1 %.not.i51, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 93) #13
  br label %_ZN4llvm11raw_ostreamlsEc.exit53

bb.r:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store ptr %i.dq, ptr %i.co, align 8, !tbaa !60
  store i8 93, ptr %i.dn, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit53

_ZN4llvm11raw_ostreamlsEc.exit53:                 ; preds = %bb.q, %bb.r
  %.0.i52 = phi ptr [ %i.dp, %bb.q ], [ %3, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.dr = load i32, ptr %i.cj, align 8, !tbaa !92, !noalias !136
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit53
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  br label %_ZNK5clang6interp7Pointer6expandEv.exit

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit53
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !43, !noalias !139 ; 6 uses
  %i.du = load i32, ptr %i.cn, align 8, !tbaa !43, !noalias !139 ; 9 uses
  %i.dv = load i64, ptr %4, align 8, !tbaa !117, !noalias !139 ; 6 uses
  %i.dw = icmp eq i64 %i.dv, 4294967295
  br i1 %i.dw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !98, !noalias !142 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !103, !noalias !142
  %i.ea = icmp eq i32 %i.du, %i.dz
  %.pre.i.i = zext i32 %i.du to i64               ; 2 uses
  br i1 %i.ea, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.pre.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !118, !noalias !142
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i:     ; preds = %bb.v, %bb.u
  %.sink25.i = phi ptr [ %i.ed, %bb.v ], [ %i.dx, %bb.u ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 53
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !121, !range !84, !noalias !142, !noundef !85
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !142
  %.not.i.i.i15.i = icmp eq ptr %i.ei, null
  %i.ej = select i1 %i.eg, i1 %.not.i.i.i15.i, i1 false
  %..i16.i = select i1 %i.ej, i64 8, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 20
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !122, !noalias !142
  %i.em = zext i32 %i.el to i64
  %i.en = add nuw nsw i64 %i.em, %.pre.i.i
  %i.eo = add nuw nsw i64 %i.en, %..i16.i
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ep = zext i32 %i.du to i64
  %.not.i.i54 = icmp eq i64 %i.dv, %i.ep
  br i1 %.not.i.i54, label %bb.x, label %_ZNK5clang6interp7PtrView6expandEv.exit.i

bb.x:                                             ; preds = %bb.w
  %i.eq = load ptr, ptr %i.dt, align 8, !tbaa !98, !noalias !142 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load i32, ptr %i.er, align 8, !tbaa !103, !noalias !142 ; 2 uses
  %i.et = icmp eq i32 %i.du, %i.es
  br i1 %i.et, label %_ZNK5clang6interp7PtrView6expandEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !145, !noalias !142
  %i.ex = sub i32 %i.du, %i.ew                    ; 3 uses
  %i.ey = icmp eq i32 %i.ex, %i.es
  br i1 %i.ey, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = zext i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !118, !noalias !142
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fd = phi ptr [ %i.fc, %bb.z ], [ %i.eq, %bb.y ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 53
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !121, !range !84, !noalias !142, !noundef !85
  %i.fg = trunc nuw i8 %i.ff to i1
  %spec.select.i = select i1 %i.fg, i32 %i.ex, i32 %i.du
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i

_ZNK5clang6interp7PtrView6expandEv.exit.i:        ; preds = %bb.aa, %bb.x, %bb.w, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i
  %.sroa.13.0.i = phi i64 [ %i.eo, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i ], [ %i.dv, %bb.w ], [ %i.dv, %bb.aa ], [ %i.dv, %bb.x ]
  %.sroa.6.0.i = phi i32 [ %i.du, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i ], [ %i.du, %bb.w ], [ %spec.select.i, %bb.aa ], [ %i.du, %bb.x ]
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.dt, i32 noundef %.sroa.6.0.i, i64 noundef %.sroa.13.0.i) #13
  br label %_ZNK5clang6interp7Pointer6expandEv.exit

_ZNK5clang6interp7Pointer6expandEv.exit:          ; preds = %bb.s, %_ZNK5clang6interp7PtrView6expandEv.exit.i
  %i.fh = load i32, ptr %i.cq, align 8, !tbaa !92
  switch i32 %i.fh, label %bb.ac [
    i32 1, label %bb.ad
    i32 0, label %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i
    i32 2, label %bb.ab
  ]

_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i:    ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.fi = load i64, ptr %i.cs, align 8, !tbaa !43
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i

bb.ab:                                            ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.fj = load ptr, ptr %i.cr, align 8, !tbaa !43
  %i.fk = ptrtoint ptr %i.fj to i64
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i

bb.ac:                                            ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.fl = load ptr, ptr %i.cr, align 8, !tbaa !43
  %i.fm = ptrtoint ptr %i.fl to i64
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i

_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i: ; preds = %bb.ac, %bb.ab, %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i
  %.sink1.i.i = phi i64 [ %i.fm, %bb.ac ], [ %i.fk, %bb.ab ], [ %i.fi, %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i ]
  %i.fn = load i64, ptr %5, align 8, !tbaa !117
  %i.fo = add i64 %i.fn, %.sink1.i.i
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

bb.ad:                                            ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.fp = load ptr, ptr %i.cr, align 8, !tbaa !43, !noalias !146 ; 4 uses
  %i.fq = load i32, ptr %i.cs, align 8, !tbaa !43, !noalias !146 ; 3 uses
  %i.fr = load i64, ptr %5, align 8, !tbaa !117, !noalias !146 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = icmp ugt i32 %i.fq, 16
  %i.ft = zext i32 %i.fq to i64                   ; 4 uses
  %i.fu = icmp eq i64 %i.fr, %i.ft                ; 2 uses
  %or.cond.i.i56 = select i1 %i.fs, i1 %i.fu, i1 false
  br i1 %or.cond.i.i56, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !98 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !103
  %i.fy = icmp eq i32 %i.fq, %i.fx                ; 2 uses
  br i1 %i.fy, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ft
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !118
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i57 = phi ptr [ %i.gb, %bb.ag ], [ %i.fv, %bb.af ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i57, i64 16
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !149 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.fu, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fy, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ft
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !118
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58: ; preds = %bb.aj, %bb.ai
  %.0.i.i8.i.i = phi ptr [ %i.gg, %bb.aj ], [ %i.fv, %bb.ai ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !124
  %.not1.i.i.i59 = icmp eq ptr %i.gi, null
  %..i.i.i60 = select i1 %.not1.i.i.i59, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i:   ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58, %bb.ah
  %.0.neg.i.i.i61 = phi i64 [ %..i.i.i60, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58 ], [ 0, %bb.ah ]
  %i.gj = sub i64 %i.fr, %i.ft
  %i.gk = add i64 %i.gj, %.0.neg.i.i.i61
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = udiv i32 %i.gl, %i.gd
  %.zext.i.i = zext i32 %i.gm to i64
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i, %bb.ad, %bb.ae, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i
  %.0.i55 = phi i64 [ %i.fo, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ %.zext.i.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i ]
  %i.gn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i52, i64 noundef %.0.i55) #13 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !60 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !54
  %.not.i62 = icmp ult ptr %i.gp, %i.gr
  br i1 %.not.i62, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.gs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.gn, i8 noundef zeroext 91) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit64

bb.al:                                            ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store ptr %i.gt, ptr %i.go, align 8, !tbaa !60
  store i8 91, ptr %i.gp, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit64

_ZN4llvm11raw_ostreamlsEc.exit64:                 ; preds = %bb.ak, %bb.al
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.gu = load i32, ptr %i.cj, align 8, !tbaa !92, !noalias !150
  %i.gv = icmp eq i32 %i.gu, 1
  br i1 %i.gv, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit64
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  br label %_ZNK5clang6interp7Pointer6expandEv.exit75

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit64
  %i.gw = load ptr, ptr %i.cm, align 8, !tbaa !43, !noalias !153 ; 6 uses
  %i.gx = load i32, ptr %i.cn, align 8, !tbaa !43, !noalias !153 ; 9 uses
  %i.gy = load i64, ptr %4, align 8, !tbaa !117, !noalias !153 ; 6 uses
  %i.gz = icmp eq i64 %i.gy, 4294967295
  br i1 %i.gz, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ha = load ptr, ptr %i.gw, align 8, !tbaa !98, !noalias !156 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !103, !noalias !156
  %i.hd = icmp eq i32 %i.gx, %i.hc
  %.pre.i.i70 = zext i32 %i.gx to i64             ; 2 uses
  br i1 %i.hd, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.pre.i.i70
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !118, !noalias !156
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71

_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71:   ; preds = %bb.ap, %bb.ao
  %.sink25.i72 = phi ptr [ %i.hg, %bb.ap ], [ %i.ha, %bb.ao ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sink25.i72, i64 53
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !121, !range !84, !noalias !156, !noundef !85
  %i.hj = trunc nuw i8 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %.sink25.i72, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !156
  %.not.i.i.i15.i73 = icmp eq ptr %i.hl, null
  %i.hm = select i1 %i.hj, i1 %.not.i.i.i15.i73, i1 false
  %..i16.i74 = select i1 %i.hm, i64 8, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %.sink25.i72, i64 20
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !122, !noalias !156
  %i.hp = zext i32 %i.ho to i64
  %i.hq = add nuw nsw i64 %i.hp, %.pre.i.i70
  %i.hr = add nuw nsw i64 %i.hq, %..i16.i74
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i66

bb.aq:                                            ; preds = %bb.an
  %i.hs = zext i32 %i.gx to i64
  %.not.i.i65 = icmp eq i64 %i.gy, %i.hs
  br i1 %.not.i.i65, label %bb.ar, label %_ZNK5clang6interp7PtrView6expandEv.exit.i66

bb.ar:                                            ; preds = %bb.aq
  %i.ht = load ptr, ptr %i.gw, align 8, !tbaa !98, !noalias !156 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !103, !noalias !156 ; 2 uses
  %i.hw = icmp eq i32 %i.gx, %i.hv
  br i1 %i.hw, label %_ZNK5clang6interp7PtrView6expandEv.exit.i66, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gy
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !145, !noalias !156
  %i.ia = sub i32 %i.gx, %i.hz                    ; 3 uses
  %i.ib = icmp eq i32 %i.ia, %i.hv
  br i1 %i.ib, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = zext i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !118, !noalias !156
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ig = phi ptr [ %i.if, %bb.at ], [ %i.ht, %bb.as ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 53
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !121, !range !84, !noalias !156, !noundef !85
  %i.ij = trunc nuw i8 %i.ii to i1
  %spec.select.i69 = select i1 %i.ij, i32 %i.ia, i32 %i.gx
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i66

_ZNK5clang6interp7PtrView6expandEv.exit.i66:      ; preds = %bb.au, %bb.ar, %bb.aq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71
  %.sroa.13.0.i67 = phi i64 [ %i.hr, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71 ], [ %i.gy, %bb.aq ], [ %i.gy, %bb.au ], [ %i.gy, %bb.ar ]
  %.sroa.6.0.i68 = phi i32 [ %i.gx, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71 ], [ %i.gx, %bb.aq ], [ %spec.select.i69, %bb.au ], [ %i.gx, %bb.ar ]
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.gw, i32 noundef %.sroa.6.0.i68, i64 noundef %.sroa.13.0.i67) #13
  br label %_ZNK5clang6interp7Pointer6expandEv.exit75

_ZNK5clang6interp7Pointer6expandEv.exit75:        ; preds = %bb.am, %_ZNK5clang6interp7PtrView6expandEv.exit.i66
  %i.ik = load ptr, ptr %i.ct, align 8, !tbaa !43, !noalias !159
  %i.il = load i32, ptr %i.cu, align 8, !tbaa !43, !noalias !159 ; 2 uses
  %i.im = zext i32 %i.il to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ik, i32 noundef %i.il, i64 noundef %i.im) #13
  %i.in = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %6) #13 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #13
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.io = load i32, ptr %i.cj, align 8, !tbaa !92
  %i.ip = icmp eq i32 %i.io, 1
  br i1 %i.ip, label %bb.l, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit50, !llvm.loop !164

_ZNK5clang6interp7Pointer14isArrayElementEv.exit50: ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit75, %bb.o, %bb.n, %_ZN4llvm11raw_ostreamlsEc.exit42
  %i.iq = load ptr, ptr %2, align 8, !tbaa !88    ; 3 uses
  %i.ir = load i64, ptr %i.cd, align 8, !tbaa !91 ; 3 uses
  %i.is = icmp sgt i64 %i.ir, 1
  br i1 %i.is, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit50
  %i.it = getelementptr i8, ptr %i.iq, i64 %i.ir
  %.sroa.0.08.i.i = getelementptr i8, ptr %i.it, i64 -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.iw, %.lr.ph.i.i ], [ %i.iq, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.iu = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !43
  %i.iv = load i8, ptr %.sroa.0.010.i.i, align 1, !tbaa !43
  store i8 %i.iv, ptr %.sroa.05.09.i.i, align 1, !tbaa !43
  store i8 %i.iu, ptr %.sroa.0.010.i.i, align 1, !tbaa !43
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.ix = icmp ult ptr %i.iw, %.sroa.0.0.i.i
  br i1 %i.ix, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, !llvm.loop !165

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre121 = load ptr, ptr %2, align 8, !tbaa !88
  %.pre122 = load i64, ptr %i.cd, align 8, !tbaa !91
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, %_ZNK5clang6interp7Pointer14isArrayElementEv.exit50
  %i.iy = phi i64 [ %.pre122, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %i.ir, %_ZNK5clang6interp7Pointer14isArrayElementEv.exit50 ]
  %i.iz = phi ptr [ %.pre121, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %i.iq, %_ZNK5clang6interp7Pointer14isArrayElementEv.exit50 ]
  %i.ja = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.iz, i64 noundef %i.iy) #13 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.jb = load ptr, ptr %2, align 8, !tbaa !88    ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.cc
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  %i.jd = load i64, ptr %i.cc, align 8, !tbaa !43
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.av:                                            ; preds = %bb.e, %bb.f
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer11isArrayRootEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i35
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !118
  br label %_ZNK5clang6interp7Pointer11isArrayRootEv.exit

_ZNK5clang6interp7Pointer11isArrayRootEv.exit:    ; preds = %bb.av, %bb.aw
  %.0.i.i.i.i79 = phi ptr [ %i.jh, %bb.aw ], [ %i.ab, %bb.av ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i79, i64 53
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !121, !range !84, !noundef !85
  %i.jk = trunc nuw i8 %i.jj to i1
  %i.jl = icmp eq i64 %i.aa, %.pre.i35
  %i.jm = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %i.jm, label %bb.ax, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.ax:                                            ; preds = %_ZNK5clang6interp7Pointer11isArrayRootEv.exit
  %i.jn = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.jo = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = icmp ult i64 %i.jr, 10
  br i1 %i.js, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.6, i64 noundef 10) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.az:                                            ; preds = %bb.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.jo, ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false)
  %i.ju = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 10
  store ptr %i.jv, ptr %i.a, align 8, !tbaa !60
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.az, %bb.ay, %bb.i, %bb.h, %_ZNK5clang6interp7Pointer11isArrayRootEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pr = load i32, ptr %i.g, align 8, !tbaa !92
  %i.jw = icmp eq i32 %.pr, 1
  br i1 %i.jw, label %bb.ba, label %_ZN4llvm11raw_ostreamlsEPKc.exit93

bb.ba:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.jx = load ptr, ptr %i.w, align 8, !tbaa !43  ; 2 uses
  %.not30 = icmp eq ptr %i.jx, null
  br i1 %.not30, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread114, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !166
  %i.ka = and i8 %i.jz, 8
  %.not117 = icmp eq i8 %i.ka, 0
  br i1 %.not117, label %_ZN4llvm11raw_ostreamlsEPKc.exit85, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kb = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = icmp ult i64 %i.kf, 6
  br i1 %i.kg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.7, i64 noundef 6) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

bb.be:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.kc, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false)
  %i.ki = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 6
  store ptr %i.kj, ptr %i.a, align 8, !tbaa !60
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

_ZN4llvm11raw_ostreamlsEPKc.exit85:               ; preds = %bb.be, %bb.bd, %bb.bb
  %.pr112.pr = load i32, ptr %i.g, align 8, !tbaa !92
  %i.kk = icmp eq i32 %.pr112.pr, 1
  br i1 %i.kk, label %bb.bf, label %_ZN4llvm11raw_ostreamlsEPKc.exit93

bb.bf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit85
  %.pr150 = load ptr, ptr %i.w, align 8, !tbaa !43, !noalias !167 ; 2 uses
  %.not.i.i87 = icmp eq ptr %.pr150, null
  br i1 %.not.i.i87, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread114, label %_ZNK5clang6interp7Pointer6isLiveEv.exit

_ZNK5clang6interp7Pointer6isLiveEv.exit:          ; preds = %bb.bf
  %i.kl = getelementptr inbounds nuw i8, ptr %.pr150, i64 32
  %i.km = load i8, ptr %i.kl, align 8, !tbaa !166
  %i.kn = and i8 %i.km, 2
  %.not1.i.i = icmp eq i8 %i.kn, 0
  br i1 %.not1.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit90, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread114

_ZNK5clang6interp7Pointer6isLiveEv.exit.thread114: ; preds = %bb.ba, %bb.bf, %_ZNK5clang6interp7Pointer6isLiveEv.exit
  %i.ko = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.kp = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = icmp ult i64 %i.ks, 5
  br i1 %i.kt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread114
  %i.ku = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.8, i64 noundef 5) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit90

bb.bh:                                            ; preds = %_ZNK5clang6interp7Pointer6isLiveEv.exit.thread114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.kp, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 5
  store ptr %i.kw, ptr %i.a, align 8, !tbaa !60
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit90

_ZN4llvm11raw_ostreamlsEPKc.exit90:               ; preds = %bb.bh, %bb.bg, %_ZNK5clang6interp7Pointer6isLiveEv.exit
  %.pr116 = load i32, ptr %i.g, align 8, !tbaa !92
  %i.kx = icmp eq i32 %.pr116, 1
  br i1 %i.kx, label %bb.bi, label %_ZN4llvm11raw_ostreamlsEPKc.exit93

bb.bi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit90
  %i.ky = load ptr, ptr %i.w, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.kz = load i32, ptr %i.y, align 8, !tbaa !43, !noalias !170 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit93, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !98
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !103
  %i.ld = icmp eq i32 %i.kz, %i.lc
  br i1 %i.ld, label %_ZN4llvm11raw_ostreamlsEPKc.exit93, label %_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i

_ZNK5clang6interp7PtrView7isFieldEv.exit.i.i:     ; preds = %bb.bj
  %i.le = zext i32 %i.kz to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
end_hunk_0
