inline.NumInlined: 3050
inline.NumDeleted: 793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19RLAOutput14encode_channelEPhlNS0_8TypeDescEi:bb.a
  %wide.trip.count219 = zext nneg i32 %i.bw to i64
  %i.cc = getelementptr i8, ptr %1, i64 %i.cb
  br label %bb.b

._crit_edge193:                                   ; preds = %._crit_edge188.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !162
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = add i32 %i.cj, 65534                    ; 2 uses
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = trunc i32 %i.cl to i8
  store i8 %i.cm, ptr %i.cf, align 1, !tbaa !107
  %i.cn = trunc i32 %i.ck to i8
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !107
  %i.cq = load ptr, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !162
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %i.cq, i64 noundef 1, i64 noundef %i.cu)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph192, %._crit_edge188.thread
  %indvars.iv216 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next217, %._crit_edge188.thread ] ; 2 uses
  %i.cw = load i32, ptr %i.by, align 4, !tbaa !76
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph187, label %._crit_edge188.thread

.lr.ph187:                                        ; preds = %bb.b
  %i.cy = xor i64 %indvars.iv216, -1
  %invariant.gep189 = getelementptr i8, ptr %i.cc, i64 %i.cy ; 3 uses
  br label %bb.c

._crit_edge188:                                   ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119
  %i.cz = icmp eq i32 %.2, 0
  br i1 %i.cz, label %._crit_edge188.thread, label %bb.bb, !prof !168

bb.c:                                             ; preds = %.lr.ph187, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119
  %indvars.iv214 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next215, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119 ] ; 4 uses
  %.073182 = phi i32 [ 0, %.lr.ph187 ], [ %i.kc, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119 ] ; 2 uses
  %.075181 = phi i32 [ 0, %.lr.ph187 ], [ %.1156, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119 ] ; 4 uses
  %.076180 = phi i8 [ 0, %.lr.ph187 ], [ %.177155, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119 ]
  %.078179 = phi i32 [ 0, %.lr.ph187 ], [ %.2, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119 ] ; 8 uses
  %.080176 = phi i32 [ -1, %.lr.ph187 ], [ %i.dc, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119 ] ; 3 uses
  %i.da = mul nsw i64 %2, %indvars.iv214
  %gep190 = getelementptr i8, ptr %invariant.gep189, i64 %i.da
  %i.db = load i8, ptr %gep190, align 1, !tbaa !107
  %i.dc = zext i8 %i.db to i32                    ; 2 uses
  %i.dd = icmp eq i32 %.078179, 0
  %i.de = trunc nuw nsw i64 %indvars.iv214 to i32 ; 3 uses
  br i1 %i.dd, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.df = trunc nuw i8 %.076180 to i1
  %i.dg = icmp eq i32 %.080176, %i.dc             ; 2 uses
  br i1 %i.df, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  br i1 %i.dg, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dh = icmp slt i32 %.078179, 3
  br i1 %i.dh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.di = add nsw i32 %.078179, 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread

bb.h:                                             ; preds = %bb.f
  %i.dj = trunc i32 %.078179 to i8
  %i.dk = add i8 %i.dj, -1                        ; 2 uses
  %i.dl = load ptr, ptr %i.bz, align 8, !tbaa !162 ; 3 uses
  %i.dm = load ptr, ptr %i.ca, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !107
  %i.dn = load ptr, ptr %i.bz, align 8, !tbaa !162
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  store ptr %i.do, ptr %i.bz, align 8, !tbaa !162
  %.pre = load ptr, ptr %i.ca, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.j:                                             ; preds = %bb.h
  %i.dp = load ptr, ptr %i.br, align 8, !tbaa !14 ; 4 uses
  %i.dq = ptrtoint ptr %i.dl to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 8 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775807
  br i1 %i.dt, label %bb.k, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.du = add i64 %.sroa.speculated.i.i.i.i, %i.ds ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.ds
  %i.dw = call i64 @llvm.umin.i64(i64 %i.du, i64 9223372036854775807)
  %i.dx = select i1 %i.dv, i64 9223372036854775807, i64 %i.dw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #34 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ds ; 2 uses
  store i8 %i.dk, ptr %i.dz, align 1, !tbaa !107
  %i.ea = icmp sgt i64 %i.ds, 0
  br i1 %i.ea, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr align 1 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.ds) #31
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dy, ptr %i.br, align 8, !tbaa !14
  store ptr %i.eb, ptr %i.bz, align 8, !tbaa !162
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx ; 2 uses
  store ptr %i.ec, ptr %i.ca, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.ed = phi ptr [ %.pre, %bb.i ], [ %i.ec, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ee = phi ptr [ %i.do, %bb.i ], [ %i.eb, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ef = trunc i32 %.080176 to i8                ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.i.i87, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !107
  %i.eg = load ptr, ptr %i.bz, align 8, !tbaa !162
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store ptr %i.eh, ptr %i.bz, align 8, !tbaa !162
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread

bb.o:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.ei = load ptr, ptr %i.br, align 8, !tbaa !14 ; 4 uses
  %i.ej = ptrtoint ptr %i.ed to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 8 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775807
  br i1 %i.em, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i88

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i88: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i89 = call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.en = add i64 %.sroa.speculated.i.i.i.i89, %i.el ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.el
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 9223372036854775807)
  %i.eq = select i1 %i.eo, i64 9223372036854775807, i64 %i.ep ; 3 uses
  %.not.i.i.i.i90 = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i90)
  %i.er = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #34 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.el ; 2 uses
  store i8 %i.ef, ptr %i.es, align 1, !tbaa !107
  %i.et = icmp sgt i64 %i.el, 0
  br i1 %i.et, label %bb.q, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i91

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i88
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.er, ptr align 1 %i.ei, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i91

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i91: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i88
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %.not.i17.i.i.i92 = icmp eq ptr %i.ei, null
  br i1 %.not.i17.i.i.i92, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i93, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.el) #31
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i93

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i93: ; preds = %bb.r, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i91
  store ptr %i.er, ptr %i.br, align 8, !tbaa !14
  store ptr %i.eu, ptr %i.bz, align 8, !tbaa !162
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store ptr %i.ev, ptr %i.ca, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread

bb.s:                                             ; preds = %bb.d
  br i1 %i.dg, label %bb.t, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94

bb.t:                                             ; preds = %bb.s
  %i.ew = add i32 %.078179, -1
  %i.ex = trunc i32 %.078179 to i8
  %i.ey = sub i8 1, %i.ex                         ; 2 uses
  %i.ez = load ptr, ptr %i.bz, align 8, !tbaa !162 ; 3 uses
  %i.fa = load ptr, ptr %i.ca, align 8, !tbaa !17
  %.not.i.i95 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not.i.i95, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !107
  %i.fb = load ptr, ptr %i.bz, align 8, !tbaa !162
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 2 uses
  store ptr %i.fc, ptr %i.bz, align 8, !tbaa !162
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit102

bb.v:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %i.br, align 8, !tbaa !14 ; 4 uses
  %i.fe = ptrtoint ptr %i.ez to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 8 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775807
  br i1 %i.fh, label %bb.w, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i96

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i96: ; preds = %bb.v
  %.sroa.speculated.i.i.i.i97 = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fi = add i64 %.sroa.speculated.i.i.i.i97, %i.fg ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fg
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 9223372036854775807)
  %i.fl = select i1 %i.fj, i64 9223372036854775807, i64 %i.fk ; 3 uses
  %.not.i.i.i.i98 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i98)
  %i.fm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #34 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fg ; 2 uses
  store i8 %i.ey, ptr %i.fn, align 1, !tbaa !107
  %i.fo = icmp sgt i64 %i.fg, 0
  br i1 %i.fo, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i99

bb.x:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr align 1 %i.fd, i64 %i.fg, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i99

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i99: ; preds = %bb.x, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i96
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 2 uses
  %.not.i17.i.i.i100 = icmp eq ptr %i.fd, null
  br i1 %.not.i17.i.i.i100, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i101, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i99
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fg) #31
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i101

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i101: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i99
  store ptr %i.fm, ptr %i.br, align 8, !tbaa !14
  store ptr %i.fp, ptr %i.bz, align 8, !tbaa !162
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store ptr %i.fq, ptr %i.ca, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit102

_ZNSt6vectorIhSaIhEE9push_backEOh.exit102:        ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i101
  %i.fr = phi ptr [ %i.fc, %bb.u ], [ %i.fp, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i101 ]
  %i.fs = icmp sgt i32 %.078179, 1
  br i1 %i.fs, label %.lr.ph171.preheader, label %._crit_edge

.lr.ph171.preheader:                              ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit102
  %i.ft = sext i32 %.075181 to i64
  %wide.trip.count207 = zext nneg i32 %i.ew to i64
  br label %.lr.ph171

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit102
  %i.fu = add nsw i32 %.073182, -1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.fv = phi ptr [ %i.fr, %.lr.ph171.preheader ], [ %i.gr, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %indvars.iv204 = phi i64 [ 0, %.lr.ph171.preheader ], [ %indvars.iv.next205, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 2 uses
  %i.fw = add nsw i64 %indvars.iv204, %i.ft
  %i.fx = mul nsw i64 %2, %i.fw
  %gep = getelementptr i8, ptr %invariant.gep189, i64 %i.fx ; 2 uses
  %i.fy = load ptr, ptr %i.ca, align 8, !tbaa !17
  %.not.i103 = icmp eq ptr %i.fv, %i.fy
  br i1 %.not.i103, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph171
  %i.fz = load i8, ptr %gep, align 1, !tbaa !107
  store i8 %i.fz, ptr %i.fv, align 1, !tbaa !107
  %i.ga = load ptr, ptr %i.bz, align 8, !tbaa !162
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  store ptr %i.gb, ptr %i.bz, align 8, !tbaa !162
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.aa:                                            ; preds = %.lr.ph171
  %i.gc = load ptr, ptr %i.br, align 8, !tbaa !14 ; 4 uses
  %i.gd = ptrtoint ptr %i.fv to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 8 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775807
  br i1 %i.gg, label %bb.ab, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gh = add i64 %.sroa.speculated.i.i.i, %i.gf  ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gf
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gh, i64 9223372036854775807)
  %i.gk = select i1 %i.gi, i64 9223372036854775807, i64 %i.gj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gk, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #34 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gf ; 2 uses
  %i.gn = load i8, ptr %gep, align 1, !tbaa !107
  store i8 %i.gn, ptr %i.gm, align 1, !tbaa !107
  %i.go = icmp sgt i64 %i.gf, 0
  br i1 %i.go, label %bb.ac, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gl, ptr align 1 %i.gc, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.ac, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gf) #31
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.gl, ptr %i.br, align 8, !tbaa !14
  store ptr %i.gp, ptr %i.bz, align 8, !tbaa !162
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk
  store ptr %i.gq, ptr %i.ca, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.z, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %i.gr = phi ptr [ %i.gb, %bb.z ], [ %i.gp, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ]
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %._crit_edge, label %.lr.ph171, !llvm.loop !169

_ZNSt6vectorIhSaIhEE9push_backEOh.exit94:         ; preds = %bb.s, %bb.e
  %.177 = phi i8 [ 1, %bb.e ], [ 0, %bb.s ]       ; 2 uses
  %.179 = add nsw i32 %.078179, 1                 ; 2 uses
  %i.gs = icmp eq i32 %.179, 127
  br i1 %i.gs, label %bb.ae, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread

_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread:  ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i93, %bb.n, %._crit_edge, %bb.c, %bb.g, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94
  %.1157 = phi i32 [ %.075181, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94 ], [ %i.de, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i93 ], [ %i.de, %bb.n ], [ %i.fu, %._crit_edge ], [ %i.de, %bb.c ], [ %.075181, %bb.g ] ; 2 uses
  %.177153 = phi i8 [ %.177, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94 ], [ 1, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i93 ], [ 1, %bb.n ], [ 1, %._crit_edge ], [ 1, %bb.c ], [ 0, %bb.g ] ; 2 uses
  %.179151 = phi i32 [ %.179, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94 ], [ 1, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i93 ], [ 1, %bb.n ], [ 2, %._crit_edge ], [ 1, %bb.c ], [ %i.di, %bb.g ] ; 2 uses
  %i.gt = load i32, ptr %i.by, align 4, !tbaa !76
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = zext i32 %i.gu to i64
  %i.gw = icmp eq i64 %indvars.iv214, %i.gv
  br i1 %i.gw, label %bb.ae, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119

bb.ae:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94
  %.1158 = phi i32 [ %.1157, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread ], [ %.075181, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94 ] ; 5 uses
  %.177154 = phi i8 [ %.177153, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread ], [ %.177, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94 ]
  %.179152 = phi i32 [ %.179151, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94.thread ], [ 127, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit94 ] ; 3 uses
  %i.gx = trunc nuw i8 %.177154 to i1
  %i.gy = trunc i32 %.179152 to i8                ; 2 uses
  %i.gz = load ptr, ptr %i.bz, align 8, !tbaa !162 ; 5 uses
  %i.ha = load ptr, ptr %i.ca, align 8, !tbaa !17
  %.not.i.i104 = icmp eq ptr %i.gz, %i.ha         ; 2 uses
  br i1 %i.gx, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.hb = add i8 %i.gy, -1                        ; 2 uses
  br i1 %.not.i.i104, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !107
  %i.hc = load ptr, ptr %i.bz, align 8, !tbaa !162
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1 ; 2 uses
  store ptr %i.hd, ptr %i.bz, align 8, !tbaa !162
  %.pre224 = load ptr, ptr %i.ca, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit111

bb.ah:                                            ; preds = %bb.af
  %i.he = load ptr, ptr %i.br, align 8, !tbaa !14 ; 4 uses
  %i.hf = ptrtoint ptr %i.gz to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 8 uses
  %i.hi = icmp eq i64 %i.hh, 9223372036854775807
  br i1 %i.hi, label %bb.ai, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i105

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i105: ; preds = %bb.ah
  %.sroa.speculated.i.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %i.hj = add i64 %.sroa.speculated.i.i.i.i106, %i.hh ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.hh
  %i.hl = call i64 @llvm.umin.i64(i64 %i.hj, i64 9223372036854775807)
  %i.hm = select i1 %i.hk, i64 9223372036854775807, i64 %i.hl ; 3 uses
  %.not.i.i.i.i107 = icmp ne i64 %i.hm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i107)
  %i.hn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #34 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hh ; 2 uses
  store i8 %i.hb, ptr %i.ho, align 1, !tbaa !107
  %i.hp = icmp sgt i64 %i.hh, 0
  br i1 %i.hp, label %bb.aj, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i108

bb.aj:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hn, ptr align 1 %i.he, i64 %i.hh, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i108

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i108: ; preds = %bb.aj, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i105
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 1 ; 2 uses
  %.not.i17.i.i.i109 = icmp eq ptr %i.he, null
  br i1 %.not.i17.i.i.i109, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i110, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i108
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hh) #31
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i110

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i110: ; preds = %bb.ak, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i108
  store ptr %i.hn, ptr %i.br, align 8, !tbaa !14
  store ptr %i.hq, ptr %i.bz, align 8, !tbaa !162
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hm ; 2 uses
  store ptr %i.hr, ptr %i.ca, align 8, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit111

_ZNSt6vectorIhSaIhEE9push_backEOh.exit111:        ; preds = %bb.ag, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i110
  %i.hs = phi ptr [ %.pre224, %bb.ag ], [ %i.hr, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i110 ] ; 2 uses
  %i.ht = phi ptr [ %i.hd, %bb.ag ], [ %i.hq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i110 ] ; 2 uses
  %i.hu = trunc i32 %.080176 to i8                ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.ht, %i.hs
  br i1 %.not.i.i112, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit111
  store i8 %i.hu, ptr %i.ht, align 1, !tbaa !107
  %i.hv = load ptr, ptr %i.bz, align 8, !tbaa !162
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  store ptr %i.hw, ptr %i.bz, align 8, !tbaa !162
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit119

bb.am:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit111
  %i.hx = load ptr, ptr %i.br, align 8, !tbaa !14 ; 4 uses
  %i.hy = ptrtoint ptr %i.hs to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 8 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775807
  br i1 %i.ib, label %bb.an, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i113

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i113: ; preds = %bb.am
  %.sroa.speculated.i.i.i.i114 = call i64 @llvm.umax.i64(i64 %i.ia, i64 1)
  %i.ic = add i64 %.sroa.speculated.i.i.i.i114, %i.ia ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ia
  %i.ie = call i64 @llvm.umin.i64(i64 %i.ic, i64 9223372036854775807)
  %i.if = select i1 %i.id, i64 9223372036854775807, i64 %i.ie ; 3 uses
  %.not.i.i.i.i115 = icmp ne i64 %i.if, 0
  call void @llvm.assume(i1 %.not.i.i.i.i115)
  %i.ig = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.if) #34 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ia ; 2 uses
  store i8 %i.hu, ptr %i.ih, align 1, !tbaa !107
  %i.ii = icmp sgt i64 %i.ia, 0
end_hunk_0
