Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/VolatileMetadata?download=true
inline.NumInlined: 3012
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4LIEF2PE16VolatileMetadata5parseERNS0_6ParserERNS_12BinaryStreamE:bb.a

bb.n:                                             ; preds = %bb.m
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.d) #23
  %.pre.i55 = load i64, ptr %i.p, align 8, !tbaa !97
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit57

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit57: ; preds = %bb.m, %bb.n
  %i.ch = phi i64 [ %i.by, %bb.m ], [ %.pre.i55, %bb.n ]
  %i.ci = load i32, ptr %i.d, align 4, !tbaa !94  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.cj = add i64 %i.ch, 4
  store i64 %i.cj, ptr %i.p, align 8, !tbaa !97
  %i.ck = call i64 @_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 3 uses
  %i.cl = and i64 %i.ck, 4294967296
  %.not152 = icmp eq i64 %i.cl, 0
  br i1 %.not152, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit57
  %i.cm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.120) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  store i32 103, ptr %i.o, align 4, !tbaa !94
  call void @_ZN4LIEF7logging6Logger5debugIJA6_ciEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(6) @__FUNCTION__._ZN4LIEF2PE16VolatileMetadata5parseERNS0_6ParserERNS_12BinaryStreamE, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  store ptr null, ptr %0, align 8, !tbaa !385
  br label %bb.ak

bb.p:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit57
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.cn = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !387 ; 13 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, i8 0, i64 48, i1 false), !noalias !387
  store ptr %i.cn, ptr %0, align 8, !tbaa !388, !alias.scope !387
  store i32 %i.ac, ptr %i.cn, align 8, !tbaa !68
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i16 %i.ao, ptr %i.cp, align 4, !tbaa !85
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  store i16 %.sroa.0.sroa.2.0.extract.trunc6.i36, ptr %i.cq, align 2, !tbaa !86
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 %i.bl, ptr %i.cr, align 8, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 %i.ci, ptr %i.cs, align 4, !tbaa !90
  %.not = icmp eq i32 %i.bl, 0
  %.not24 = icmp eq i32 %i.bx, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not24
  br i1 %or.cond, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !390
  %i.cv = zext i32 %i.bl to i64
  %i.cw = call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.cu, i64 noundef %i.cv) #23
  %i.cx = lshr i32 %i.bx, 2                       ; 2 uses
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !392 ; 4 uses
  %i.db = and i64 %i.cw, 4294967295
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 7 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !97
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !97
  %.not157 = icmp eq i32 %i.cx, 0
  br i1 %.not157, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.022154 = phi i64 [ 0, %.lr.ph ], [ %i.ep, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !97 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !94
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull %i.c, i64 noundef %i.di, i64 noundef 4, i64 noundef 0) #23, !inline_history !373
  %i.dn = and i64 %i.dm, 4294967296
  %.not.i.i58 = icmp eq i64 %i.dn, 0
  store i64 %i.di, ptr %i.dc, align 8, !tbaa !97
  br i1 %.not.i.i58, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit63.thread, label %bb.s

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit63.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.do = load i8, ptr %i.de, align 8, !tbaa !103, !range !104, !noundef !105
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.t, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit63

bb.t:                                             ; preds = %bb.s
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #23
  %.pre.i61 = load i64, ptr %i.dc, align 8, !tbaa !97
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit63

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit63: ; preds = %bb.s, %bb.t
  %i.dq = phi i64 [ %i.di, %bb.s ], [ %.pre.i61, %bb.t ]
  %i.dr = load i32, ptr %i.c, align 4, !tbaa !94  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ds = add i64 %i.dq, 4
  store i64 %i.ds, ptr %i.dc, align 8, !tbaa !97
  %i.dt = load ptr, ptr %i.dg, align 8, !tbaa !88 ; 4 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !393
  %.not.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit63
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !94
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store ptr %i.dv, ptr %i.dg, align 8, !tbaa !88
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.v:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit63
  %i.dw = load ptr, ptr %i.df, align 8, !tbaa !89 ; 4 uses
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 5 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775804
  br i1 %i.ea, label %bb.w, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.eb = ashr exact i64 %i.dz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i.i, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = call i64 @llvm.umin.i64(i64 %i.ec, i64 2305843009213693951)
  %i.ef = select i1 %i.ed, i64 2305843009213693951, i64 %i.ee ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #26 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.dz ; 2 uses
  store i32 %i.dr, ptr %i.ei, align 4, !tbaa !94
  %i.ej = icmp sgt i64 %i.dz, 0
  br i1 %i.ej, label %bb.x, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr align 4 %i.dw, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.el = load ptr, ptr %i.dh, align 8, !tbaa !393
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.en) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.eh, ptr %i.df, align 8, !tbaa !89
  store ptr %i.ek, ptr %i.dg, align 8, !tbaa !88
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ef
  store ptr %i.eo, ptr %i.dh, align 8, !tbaa !393
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.u, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.ep = add nuw nsw i64 %.022154, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %i.cy
  br i1 %exitcond.not, label %.critedge, label %bb.r, !llvm.loop !377

.critedge:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.q, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit63.thread
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !97
  br label %bb.z

bb.z:                                             ; preds = %.critedge, %bb.p
  %.not25 = icmp eq i32 %i.ci, 0
  %i.eq = and i64 %i.ck, 4294967295
  %.not26 = icmp eq i64 %i.eq, 0
  %or.cond153 = or i1 %.not25, %.not26
  br i1 %or.cond153, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !390
  %i.et = zext i32 %i.ci to i64
  %i.eu = call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.es, i64 noundef %i.et) #23
  %i.ev = lshr i64 %i.ck, 3
  %i.ew = and i64 %i.ev, 536870911                ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !392 ; 6 uses
  %i.ez = and i64 %i.eu, 4294967295
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 10 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !97
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !97
  %.not158 = icmp eq i64 %i.ew, 0
  br i1 %.not158, label %.critedge28, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cn, i64 56 ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph156, %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE9push_backEOS3_.exit
  %.0155 = phi i64 [ 0, %.lr.ph156 ], [ %i.gz, %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE9push_backEOS3_.exit ]
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !97 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !94
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = call i64 %i.fj(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull %i.b, i64 noundef %i.fg, i64 noundef 4, i64 noundef 0) #23, !inline_history !373
  %i.fl = and i64 %i.fk, 4294967296
  %.not.i.i64 = icmp eq i64 %i.fl, 0
  store i64 %i.fg, ptr %i.fa, align 8, !tbaa !97
  br i1 %.not.i.i64, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit69.thread, label %bb.ac

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit69.thread: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.critedge28

bb.ac:                                            ; preds = %bb.ab
  %i.fm = load i8, ptr %i.fc, align 8, !tbaa !103, !range !104, !noundef !105
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ad, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit69

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #23
  %.pre.i67 = load i64, ptr %i.fa, align 8, !tbaa !97
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit69

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit69: ; preds = %bb.ac, %bb.ad
  %i.fo = phi i64 [ %i.fg, %bb.ac ], [ %.pre.i67, %bb.ad ]
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !94  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.fq = add i64 %i.fo, 4                        ; 4 uses
  store i64 %i.fq, ptr %i.fa, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !94
  %i.fr = load ptr, ptr %i.ey, align 8, !tbaa !44
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = call i64 %i.ft(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull %i.a, i64 noundef %i.fq, i64 noundef 4, i64 noundef 0) #23, !inline_history !373
  %i.fv = and i64 %i.fu, 4294967296
  %.not.i.i70 = icmp eq i64 %i.fv, 0
  store i64 %i.fq, ptr %i.fa, align 8, !tbaa !97
  br i1 %.not.i.i70, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit75.thread, label %bb.ae

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit75.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge28

bb.ae:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit69
  %i.fw = load i8, ptr %i.fc, align 8, !tbaa !103, !range !104, !noundef !105
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.af, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit75

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre.i73 = load i64, ptr %i.fa, align 8, !tbaa !97
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit75

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit75: ; preds = %bb.ae, %bb.af
  %i.fy = phi i64 [ %i.fq, %bb.ae ], [ %.pre.i73, %bb.af ]
  %i.fz = load i32, ptr %i.a, align 4, !tbaa !94  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ga = add i64 %i.fy, 4
  store i64 %i.ga, ptr %i.fa, align 8, !tbaa !97
  %i.gb = load ptr, ptr %i.fe, align 8, !tbaa !91 ; 5 uses
  %i.gc = load ptr, ptr %i.ff, align 8, !tbaa !394
  %.not.i.i76 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i.i76, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit75
  %.sroa.5.0.insert.ext = zext i32 %i.fz to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.fp to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.gb, align 4
  %7 = load ptr, ptr %i.fe, align 8, !tbaa !91
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.gd, ptr %i.fe, align 8, !tbaa !91
  br label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE9push_backEOS3_.exit

bb.ah:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit75
  %i.ge = load ptr, ptr %i.fd, align 8, !tbaa !92 ; 5 uses
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.ai, label %_ZNKSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

_ZNKSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.gj = ashr exact i64 %i.gh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 1152921504606846975)
  %i.gn = select i1 %i.gl, i64 1152921504606846975, i64 %i.gm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #26 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  %.sroa.5.0.insert.ext82 = zext i32 %i.fz to i64
  %.sroa.5.0.insert.shift83 = shl nuw i64 %.sroa.5.0.insert.ext82, 32
  %.sroa.0.0.insert.ext78 = zext i32 %i.fp to i64
  %.sroa.0.0.insert.insert80 = or disjoint i64 %.sroa.5.0.insert.shift83, %.sroa.0.0.insert.ext78
  store i64 %.sroa.0.0.insert.insert80, ptr %i.gq, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.gb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i ], [ %i.gp, %_ZNKSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i ], [ %i.ge, %_ZNKSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.gr = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !396, !noalias !395
  store i64 %i.gr, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !395, !noalias !396
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gs, %i.gb
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !381

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.gp, %_ZNKSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.gt, %.lr.ph.i.i.i.i.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.gv = load ptr, ptr %i.ff, align 8, !tbaa !394
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gx) #25
  br label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.aj, %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.gp, ptr %i.fd, align 8, !tbaa !92
  store ptr %i.gu, ptr %i.fe, align 8, !tbaa !91
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.gy, ptr %i.ff, align 8, !tbaa !394
  br label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ag, %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.gz = add nuw nsw i64 %.0155, 1               ; 2 uses
  %exitcond159.not = icmp eq i64 %i.gz, %i.ew
  br i1 %exitcond159.not, label %.critedge28, label %bb.ab, !llvm.loop !382

.critedge28:                                      ; preds = %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EE9push_backEOS3_.exit, %bb.aa, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit75.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit69.thread
  store i64 %i.fb, ptr %i.fa, align 8, !tbaa !97
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit45.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit57.thread, %bb.z, %.critedge28, %bb.o, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit51.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !97   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !94
  %i.d = load ptr, ptr %0, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.a, i64 noundef %i.c, i64 noundef 4, i64 noundef 0) #23, !inline_history !397
  %i.h = and i64 %i.g, 4294967296
  %.not.i = icmp eq i64 %i.h, 0
  store i64 %i.c, ptr %i.b, align 8, !tbaa !97
  br i1 %.not.i, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !103, !range !104, !noundef !105
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre = load i64, ptr %i.b, align 8, !tbaa !97
  br label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  %i.m = load i32, ptr %i.a, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.n = add i64 %i.l, 4
  store i64 %i.n, ptr %i.b, align 8, !tbaa !97
  %i.o = zext i32 %i.m to i64
  %i.p = or disjoint i64 %i.o, 4294967296
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit
  %.sroa.0.sroa.2.0.extract.trunc6 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread ], [ %i.p, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit ]
  ret i64 %.sroa.0.sroa.2.0.extract.trunc6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger5debugIJA6_ciEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRA6_KcRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 1, ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

declare noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.select) #27 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %2, align 8, !tbaa !44
  %i.g = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.18, i32 noundef 752, ptr noundef %i.g) #28
  unreachable

_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = icmp ule i64 %i.i, %spec.select
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.e, i64 %i.i, i1 false)
  store ptr %i.f, ptr %0, align 8, !tbaa !71
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.e, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit
  tail call void @free(ptr noundef %i.e) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !399
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.19, ptr noundef %0, i32 noundef %1, ptr noundef %2) #29 ; 0 uses
  tail call void @abort() #24
  unreachable
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %4 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %5 = alloca %class.anon.706, align 8            ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
.thread:                                          ; preds = %bb.as, %bb.q, %bb.u, %bb.t, %bb.av
  br i1 %i.d, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.thread
  %i.lj = load i32, ptr %2, align 4, !tbaa !112
  %i.lk = and i32 %i.lj, 8192
  %.not227 = icmp eq i32 %i.lk, 0
  br i1 %.not227, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !83 ; 2 uses
  %.not132237 = icmp eq i64 %i.lm, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.ax
  %.promoted = load i32, ptr %i.a, align 4
  %i.ln = load ptr, ptr %4, align 8, !tbaa !71
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph239, %bb.az
  %.0238 = phi i64 [ %i.lm, %.lr.ph239 ], [ %i.lp, %bb.az ] ; 5 uses
  %i.lo = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lt, %bb.az ]
  %i.lp = add i64 %.0238, -1                      ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !55
  %i.ls = icmp eq i8 %i.lr, 48
  br i1 %i.ls, label %bb.az, label %.critedge3

bb.az:                                            ; preds = %bb.ay
  %i.lt = add nsw i32 %i.lo, 1                    ; 2 uses
  store i32 %i.lt, ptr %i.a, align 4, !tbaa !94
  %.not132 = icmp eq i64 %i.lp, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ay, !llvm.loop !703

.critedge3.thread:                                ; preds = %bb.az, %bb.ax
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !72
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ay
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !72 ; 2 uses
  %i.ly = icmp ugt i64 %.0238, %i.lx
  br i1 %i.ly, label %bb.ba, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.ba:                                            ; preds = %.critedge3
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !70
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238) #23, !inline_history !21
  %.pre.i153 = load i64, ptr %i.lw, align 8, !tbaa !72
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.ba
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.ba ], [ 0, %.critedge3.thread ]
  %i.mb = phi i64 [ %i.lx, %.critedge3 ], [ %.pre.i153, %bb.ba ], [ %i.lv, %.critedge3.thread ]
  %i.mc = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.mb)
  store i64 %i.mc, ptr %i.ll, align 8, !tbaa !83
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154, %bb.aw, %.thread
  %i.md = load i32, ptr %i.a, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.md, %bb.bb ]
  ret i32 %.0105
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 6 uses
  %7 = alloca %class.anon.713, align 4            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !112    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #23
  %i.d = load ptr, ptr %6, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #23, !inline_history !28
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre = load i32, ptr %2, align 4, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.m = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.n = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !176    ; 2 uses
  %i.p = or i32 %i.o, 1
  %i.q = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %i.r = xor i32 %i.q, 31
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !74
  %i.v = zext i32 %i.o to i64
  %i.w = add i64 %i.u, %i.v
  %i.x = lshr i64 %i.w, 32                        ; 3 uses
  %i.y = trunc nuw i64 %i.x to i32                ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !168
  %i.ab = add nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = trunc i32 %i.m to i8
  %i.ae = and i8 %i.ad, 7
  switch i8 %i.ae, label %bb.g [
    i8 2, label %bb.h
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !114 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %. = select i1 %i.ah, i32 %i.ag, i32 %4
  %i.ai = icmp sgt i32 %i.ab, -4
  %i.aj = icmp sle i32 %i.ab, %.
  %i.ak = and i1 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.al = ptrtoint ptr %5 to i64
  %i.am = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.y, i8 noundef signext %i.n, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.al)
  br label %bb.t

bb.i:                                             ; preds = %bb.f, %bb.g
  %.not51 = icmp ne i32 %3, 0
  %i.an = zext i1 %.not51 to i64
  %i.ao = add nuw nsw i64 %i.x, %i.an
  %sext = shl i64 %i.ao, 32
  %i.ap = ashr exact i64 %sext, 32                ; 2 uses
  %i.aq = and i32 %i.m, 8192
  %.not53 = icmp eq i32 %i.aq, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !114
  %i.at = sub nsw i32 %i.as, %i.y
  %i.au = call noundef i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = add nsw i64 %i.ap, %i.av
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp eq i64 %i.x, 1
  %spec.select = select i1 %i.ax, i8 0, i8 %i.n
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.049 = phi i32 [ %i.au, %bb.j ], [ 0, %bb.k ]
  %.048 = phi i64 [ %i.aw, %bb.j ], [ %i.ap, %bb.k ]
  %.0 = phi i8 [ %i.n, %bb.j ], [ %spec.select, %bb.k ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ay = zext i1 %.not52 to i64
  %i.az = call i32 @llvm.abs.i32(i32 %i.ac, i1 true) ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, 100
  %i.bb = icmp samesign ugt i32 %i.az, 999
  %i.bc = select i1 %i.bb, i64 6, i64 5
  %.0.i = select i1 %i.ba, i64 4, i64 %i.bc
  %i.bd = add nsw i64 %.048, %.0.i
  %i.be = add nsw i64 %i.bd, %i.ay                ; 3 uses
  %i.bf = and i32 %i.m, 4096
  %.not54 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 %3, ptr %7, align 4, !tbaa !219
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bi = load i64, ptr %1, align 4
  store i64 %i.bi, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.y, ptr %i.bj, align 4, !tbaa !220
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 %.0, ptr %i.bk, align 4, !tbaa !221
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.049, ptr %i.bl, align 4, !tbaa !222
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.bg, ptr %i.bm, align 4, !tbaa !223
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.ac, ptr %i.bn, align 4, !tbaa !224
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !137 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = call i64 @llvm.usub.sat.i64(i64 %i.br, i64 %i.be) ; 4 uses
  %i.bt = lshr i32 %i.m, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @.str.30, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !55
  %i.by = sext i8 %i.bx to i64
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = lshr i64 %i.bs, %i.bz                   ; 4 uses
  %i.cb = sub nsw i64 %i.bs, %i.ca
  %i.cc = lshr i32 %i.m, 15
  %i.cd = and i32 %i.cc, 7
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = mul nuw nsw i64 %i.bs, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !83
  %i.ci = add nsw i64 %i.cf, %i.be
  %i.cj = add i64 %i.ci, %i.ch                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !72
  %i.cm = icmp ugt i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.n, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !70
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cj) #23, !inline_history !706
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.n, %bb.m
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.cp = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.cp, %bb.o ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ]
  %i.cq = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr %.sroa.09.0.i.i) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.bs, %i.ca
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.cq, i64 noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.r:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !83
  %i.cu = add i64 %i.ct, %i.be                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !72
  %i.cx = icmp ugt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.s, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !70
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cu) #23, !inline_history !10
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.r, %bb.s
  %i.da = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr nonnull %0)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit: ; preds = %bb.q, %bb.p, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.047.0 = phi ptr [ %i.da, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ], [ %i.cr, %bb.q ], [ %i.cq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, %bb.h
  %.sroa.047.1 = phi ptr [ %i.am, %bb.h ], [ %.sroa.047.0, %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #2 comdat {
bb.a:
  %7 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 7 uses
  %8 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 12 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 12 uses
  %11 = alloca %class.anon.715, align 8           ; 10 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %12 = alloca %class.anon.716, align 8           ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !94
  store i8 %3, ptr %i.b, align 1, !tbaa !55
  store i32 %5, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !168  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !94
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !114
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !112    ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not88 = icmp eq i32 %i.v, 0
  br i1 %.not88, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not41, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ab = and i32 %i.u, 16384
  %.not89 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ac, ptr %9, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  store i8 0, ptr %i.ac, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !54
  store i8 0, ptr %i.af, align 8, !tbaa !55
  br i1 %.not89, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN3fmt3v126detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v12::detail::thousands_sep_result") align 8 %8, ptr %i.h)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(32) %8) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !54
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 0, i64 noundef %i.aj, i64 noundef 1, i8 noundef signext %i.ai) #23 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !55
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #25
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit

_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pr = load i64, ptr %i.ag, align 8, !tbaa !54
end_hunk_1
