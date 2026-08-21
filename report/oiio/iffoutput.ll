inline.NumInlined: 3235
inline.NumDeleted: 854
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.m = alloca [2 x i8], align 16                ; 4 uses
  %i.n = alloca [2 x i8], align 16                ; 4 uses
  %i.o = alloca [2 x i8], align 16                ; 4 uses
  %i.p = alloca [2 x i8], align 16                ; 4 uses
  %i.q = alloca [4 x i8], align 16                ; 4 uses
  %16 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.r = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br i1 %i.r, label %bb.b, label %bb.hs

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !18
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %bb.hs, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 11 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !77
  %i.y = lshr i8 %i.x, 3
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 13 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ac = zext i8 %i.ab to i32
  %i.ad = mul nuw nsw i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 12 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 11 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = lshr i8 %i.ah, 3
  %narrow.i.i = select i1 %.not.i.i, i8 0, i8 %i.ai
  %i.aj = zext nneg i8 %narrow.i.i to i32
  %i.ak = add nuw nsw i32 %i.ad, %i.aj            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 11 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !105
  %i.an = mul i32 %i.ak, %i.am                    ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.c
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #31 ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao  ; 2 uses
  store i8 0, ptr %i.ap, align 1, !tbaa !16
  %i.ar = add nsw i64 %i.ao, -1                   ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.at, i8 0, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.d, %.noexc, %bb.c
  %.sroa.111429.0 = phi ptr [ %i.aq, %bb.d ], [ %i.aq, %.noexc ], [ null, %bb.c ] ; 2 uses
  %.sroa.01424.0 = phi ptr [ %i.ap, %bb.d ], [ %i.ap, %.noexc ], [ null, %bb.c ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %.lr.ph, label %.preheader1733

.preheader1733:                                   ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !106 ; 2 uses
  %i.az = add i32 %i.ay, 63
  %.not2157 = icmp ult i32 %i.az, 64
  br i1 %.not2157, label %._crit_edge2152, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader1733
  %i.ba = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i16.i1019 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.2.0..sroa_idx.i17.i1020 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i16.i1027 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0..sroa_idx.i17.i1028 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i16.i1011 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.2.0..sroa_idx.i17.i1012 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i16.i1035 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0..sroa_idx.i17.i1036 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre = load i32, ptr %i.al, align 4, !tbaa !105
  br label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %.lr.ph
  %i.dq = phi i32 [ %i.ei, %.lr.ph ], [ %i.av, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ]
  %.03932029 = phi i32 [ %i.eh, %.lr.ph ], [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 3 uses
  %i.dr = xor i32 %.03932029, -1
  %i.ds = add i32 %i.dq, %i.dr
  %i.dt = load i32, ptr %i.al, align 4, !tbaa !105 ; 2 uses
  %i.du = mul i32 %i.dt, %i.ak                    ; 2 uses
  %i.dv = mul i32 %i.du, %i.ds
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.s, align 8, !tbaa !18  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw ; 2 uses
  %i.dz = mul i32 %.03932029, %i.ak
  %i.ea = mul i32 %i.dz, %i.dt
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb ; 2 uses
  %i.ed = zext i32 %i.du to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.01424.0, ptr nonnull align 1 %i.dy, i64 %i.ed, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull align 1 %i.ec, i64 %i.ed, i1 false)
  %i.ee = load i32, ptr %i.al, align 4, !tbaa !105
  %i.ef = mul i32 %i.ee, %i.ak
  %i.eg = zext i32 %i.ef to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %.sroa.01424.0, i64 %i.eg, i1 false)
  %i.eh = add nuw nsw i32 %.03932029, 1           ; 2 uses
  %i.ei = load i32, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %i.ej = sdiv i32 %i.ei, 2
  %i.ek = icmp slt i32 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph, label %.preheader1733, !llvm.loop !107

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge2149
  %i.el = phi i32 [ %i.ay, %.preheader.lr.ph ], [ %i.axy, %._crit_edge2149 ]
  %i.em = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.axz, %._crit_edge2149 ] ; 3 uses
  %.03602151 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aya, %._crit_edge2149 ] ; 2 uses
  %i.en = add i32 %i.em, 63
  %.not2158 = icmp ult i32 %i.en, 64
  br i1 %.not2158, label %._crit_edge2149, label %.lr.ph2148

.lr.ph2148:                                       ; preds = %.preheader
  %i.eo = shl nuw i32 %.03602151, 6               ; 15 uses
  %i.ep = add nuw i32 %i.eo, 64
  %i.eq = trunc i32 %i.eo to i16
  %i.er = call i16 @llvm.bswap.i16(i16 %i.eq)     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph2148, %bb.hg
  %indvar3026 = phi i64 [ 0, %.lr.ph2148 ], [ %indvar.next3027, %bb.hg ] ; 11 uses
  %i.es = phi i32 [ %i.em, %.lr.ph2148 ], [ %i.axu, %bb.hg ]
  %.03472147 = phi i32 [ 0, %.lr.ph2148 ], [ %i.axt, %bb.hg ] ; 2 uses
  %i.et = shl nuw nsw i64 %indvar3026, 6          ; 2 uses
  %indvar3026.tr = trunc i64 %indvar3026 to i32
  %i.eu = shl i32 %indvar3026.tr, 6
  %i.ev = shl nuw nsw i64 %indvar3026, 6          ; 2 uses
  %indvar3026.tr3083 = trunc i64 %indvar3026 to i32
  %i.ew = shl i32 %indvar3026.tr3083, 6
  %i.ex = shl nuw i32 %.03472147, 6               ; 26 uses
  %i.ey = add nuw i32 %i.ex, 64
  %.sroa.speculated1418 = call i32 @llvm.umin.i32(i32 %i.es, i32 %i.ey)
  %i.ez = add i32 %.sroa.speculated1418, -1       ; 21 uses
  %i.fa = load i32, ptr %i.au, align 8, !tbaa !70
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.fa, i32 %i.ep) ; 2 uses
  %i.fb = add i32 %.sroa.speculated, -1           ; 14 uses
  %i.fc = sub i32 %i.ez, %i.ex
  %i.fd = add i32 %i.fc, 1                        ; 2 uses
  %i.fe = sub i32 %.sroa.speculated, %i.eo        ; 2 uses
  %i.ff = load i8, ptr %i.aa, align 1, !tbaa !74
  %.not472 = icmp eq i8 %i.ff, 0
  br i1 %.not472, label %bb.fa, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29, !noalias !109
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr nonnull align 1 dereferenceable(5) @.str.25, i64 4, i64 0, ptr nonnull %28)
          to label %.noexc552 unwind label %bb.i

.noexc552:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29, !noalias !109
  %i.fg = load ptr, ptr %29, align 8, !tbaa !17
  %i.fh = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.fi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.fg, i64 noundef %i.fh, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc552
  %i.fj = load ptr, ptr %29, align 8, !tbaa !17   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.bb
  br i1 %i.fk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.fl = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc552
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %29, align 8, !tbaa !17   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bb
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.fq = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br i1 %i.fi, label %bb.j, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.i:                                             ; preds = %bb.fb, %bb.f
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ft = mul i32 %i.fe, %i.fd                    ; 8 uses
  %i.fu = zext i32 %i.ft to i64                   ; 6 uses
  %i.fv = load i8, ptr %i.w, align 8, !tbaa !77
  %i.fw = lshr i8 %i.fv, 3
  %i.fx = zext nneg i8 %i.fw to i32
  %i.fy = load i8, ptr %i.aa, align 1, !tbaa !78  ; 4 uses
  %i.fz = zext i8 %i.fy to i32
  %i.ga = mul i32 %i.ft, %i.fz
  %i.gb = mul i32 %i.ga, %i.fx                    ; 17 uses
  %i.gc = and i32 %i.gb, 3                        ; 2 uses
  %.not.i = icmp eq i32 %i.gc, 0
  %i.gd = sub nuw nsw i32 4, %i.gc
  %i.ge = select i1 %.not.i, i32 0, i32 %i.gd
  %.0.i = add i32 %i.gb, 8
  %i.gf = add i32 %.0.i, %i.ge                    ; 9 uses
  %i.gg = load i32, ptr %i.bc, align 4, !tbaa !71
  %i.gh = icmp eq i32 %i.gg, 1                    ; 2 uses
  %i.gi = zext i32 %i.gb to i64                   ; 3 uses
  %.not.i.i.i.i553 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i.i553, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #31
          to label %.noexc556 unwind label %bb.q  ; 5 uses

.noexc556:                                        ; preds = %bb.k
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gi  ; 3 uses
  store i8 0, ptr %i.gj, align 1, !tbaa !16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  %i.gm = add nsw i64 %i.gi, -1                   ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557, label %bb.l

bb.l:                                             ; preds = %.noexc556
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 %i.gm, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557:            ; preds = %bb.l, %.noexc556, %bb.j
  %.sroa.55.16 = phi ptr [ %i.gk, %bb.l ], [ %i.gk, %.noexc556 ], [ null, %bb.j ] ; 29 uses
  %.sroa.01375.16 = phi ptr [ %i.gj, %bb.l ], [ %i.gj, %.noexc556 ], [ null, %bb.j ] ; 39 uses
  %.0.i.i.i.i.i554 = phi ptr [ %i.gk, %bb.l ], [ %i.gl, %.noexc556 ], [ null, %bb.j ] ; 18 uses
  %i.go = load i8, ptr %i.bd, align 8, !tbaa !57  ; 2 uses
  %i.gp = icmp eq i8 %i.go, 2
  %i.gq = load i8, ptr %i.be, align 1
  %i.gr = icmp eq i8 %i.gq, 1                     ; 2 uses
  %or.cond.i = select i1 %i.gp, i1 %i.gr, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557
  %i.gs = load i32, ptr %i.bf, align 4, !tbaa !58
  %.not.i558 = icmp eq i32 %i.gs, 0
  br i1 %.not.i558, label %bb.m, label %.thread1493

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  br i1 %i.gh, label %bb.n, label %.thread1463

bb.n:                                             ; preds = %bb.m
  %i.gt = shl i32 %i.gb, 1                        ; 2 uses
  %i.gu = zext i32 %i.gt to i64                   ; 3 uses
  %.not.i.i.i.i559 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i.i559, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #31
          to label %.noexc562 unwind label %bb.r  ; 4 uses

.noexc562:                                        ; preds = %bb.o
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gu
  store i8 0, ptr %i.gv, align 1, !tbaa !16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gy = add nsw i64 %i.gu, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gx, i8 0, i64 %i.gy, i1 false)
  %i.gz = ptrtoint ptr %i.gw to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563:            ; preds = %.noexc562, %bb.n
  %.sroa.121372.0 = phi i64 [ %i.gz, %.noexc562 ], [ 0, %bb.n ]
  %.sroa.01367.0 = phi ptr [ %i.gv, %.noexc562 ], [ null, %bb.n ] ; 7 uses
  %i.ha = ptrtoint ptr %.sroa.01367.0 to i64
  %i.hb = sub i64 %.sroa.121372.0, %i.ha          ; 4 uses
  %.not.i.i.i.i564 = icmp eq i32 %i.ft, 0
  %i.hc = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  %.not4982070 = icmp ugt i32 %i.eo, %i.fb
  %.not5002062 = icmp ugt i32 %i.ex, %i.ez
  %i.he = sext i32 %i.ft to i64
  %i.hf = icmp sgt i32 %i.ft, 0
  %i.hg = icmp eq i8 %i.fy, 0
  br i1 %i.hg, label %._crit_edge3014, label %.lr.ph3013

.lr.ph3013:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563
  %i.hh = zext i8 %i.fy to i64
  %i.hi = zext i32 %i.ez to i64
  %i.hj = shl i64 %indvar3026, 6
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = zext i32 %i.ez to i64
  %i.hm = shl i64 %indvar3026, 6
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = zext i32 %i.ez to i64
  %i.hp = shl i64 %indvar3026, 6
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = xor i32 %i.ew, -2
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.hs = icmp slt i64 %indvars.iv.next24053011.in, 2
  br i1 %i.hs, label %._crit_edge3014, label %bb.t, !llvm.loop !112

bb.q:                                             ; preds = %bb.k
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a

.lr.ph2106:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827, %._crit_edge2107
  %.02892111 = phi i32 [ %i.art, %._crit_edge2107 ], [ %i.eo, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827 ] ; 2 uses
  %.02902110 = phi ptr [ %i.ask, %._crit_edge2107 ], [ %.sroa.01236.0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827 ]
  %i.arb = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.arc = load i32, ptr %i.al, align 4, !tbaa !80
  %i.ard = zext i32 %i.arc to i64
  %i.are = load i8, ptr %i.w, align 8, !tbaa !77
  %i.arf = lshr i8 %i.are, 3
  %i.arg = zext nneg i8 %i.arf to i64
  %i.arh = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ari = zext i8 %i.arh to i64
  %i.arj = mul nuw nsw i64 %i.arg, %i.ari
  %i.ark = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i.i866 = icmp eq i8 %i.ark, 0
  %i.arl = load i8, ptr %i.ag, align 1
  %i.arm = lshr i8 %i.arl, 3
  %narrow.i.i.i867 = select i1 %.not.i.i.i866, i8 0, i8 %i.arm
  %i.arn = zext nneg i8 %narrow.i.i.i867 to i64
  %i.aro = add nuw nsw i64 %i.arj, %i.arn
  %i.arp = zext i32 %.02892111 to i64
  %i.arq = mul nuw i64 %i.ard, %i.arp
  %i.arr = mul i64 %i.arq, %i.aro
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.arr
  br label %bb.fx

._crit_edge2107:                                  ; preds = %bb.fx
  %i.art = add i32 %.02892111, 1                  ; 2 uses
  %.not532 = icmp ugt i32 %i.art, %i.fb
  br i1 %.not532, label %._crit_edge2113.split, label %.lr.ph2106, !llvm.loop !211

bb.fx:                                            ; preds = %.lr.ph2106, %bb.fx
  %.02882104 = phi i32 [ %i.ex, %.lr.ph2106 ], [ %i.asl, %bb.fx ] ; 2 uses
  %.12912103 = phi ptr [ %.02902110, %.lr.ph2106 ], [ %i.ask, %bb.fx ] ; 2 uses
  %i.aru = load i8, ptr %i.w, align 8, !tbaa !77
  %i.arv = lshr i8 %i.aru, 3
  %i.arw = zext nneg i8 %i.arv to i64
  %i.arx = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ary = zext i8 %i.arx to i64
  %i.arz = mul nuw nsw i64 %i.arw, %i.ary         ; 2 uses
  %i.asa = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i868 = icmp eq i8 %i.asa, 0
  %i.asb = load i8, ptr %i.ag, align 1
  %i.asc = lshr i8 %i.asb, 3
  %narrow.i.i869 = select i1 %.not.i.i868, i8 0, i8 %i.asc
  %i.asd = zext nneg i8 %narrow.i.i869 to i64
  %i.ase = add nuw nsw i64 %i.arz, %i.asd
  %i.asf = zext i32 %.02882104 to i64
  %i.asg = mul nuw nsw i64 %i.ase, %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ars, i64 %i.asg
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 %i.arz
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 %indvars.iv2413
  %.0.copyload = load i8, ptr %i.asj, align 1
  %i.ask = getelementptr inbounds nuw i8, ptr %.12912103, i64 1 ; 2 uses
  store i8 %.0.copyload, ptr %.12912103, align 1, !tbaa !16
  %i.asl = add i32 %.02882104, 1                  ; 2 uses
  %.not533 = icmp ugt i32 %i.asl, %i.ez
  br i1 %.not533, label %._crit_edge2107, label %bb.fx, !llvm.loop !212

.loopexit:                                        ; preds = %bb.fv, %._crit_edge2113.split
  %.0.lcssa.i828 = phi ptr [ %i.apb, %._crit_edge2113.split ], [ %.1.i835, %bb.fv ]
  %i.asm = ptrtoint ptr %.0.lcssa.i828 to i64
  %i.asn = ptrtoint ptr %i.apb to i64
  %i.aso = sub i64 %i.asm, %i.asn
  %i.asp = trunc i64 %i.aso to i32
  %i.asq = add i32 %.02932115, %i.asp             ; 2 uses
  %.not.i.i.i870 = icmp eq ptr %.sroa.01236.0, null
  br i1 %.not.i.i.i870, label %_ZNSt6vectorIhSaIhEED2Ev.exit872, label %bb.fy

bb.fy:                                            ; preds = %.loopexit
  %i.asr = ptrtoint ptr %.sroa.13.0 to i64
  %i.ass = sub i64 %i.asr, %i.apd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01236.0, i64 noundef %i.ass) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit872

_ZNSt6vectorIhSaIhEED2Ev.exit872:                 ; preds = %.loopexit, %bb.fy
  %indvars.iv.next2414 = add nsw i64 %indvars.iv2413, -1
  %i.ast = icmp sgt i64 %indvars.iv2413, 0
  br i1 %i.ast, label %bb.fi, label %._crit_edge2118, !llvm.loop !213

bb.fz:                                            ; preds = %._crit_edge2118
  %i.asu = zext i32 %.0293.lcssa to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.01254.4, ptr align 1 %.sroa.01242.1, i64 %i.asu, i1 false)
  %i.asv = add i32 %.0293.lcssa, 8                ; 4 uses
  %i.asw = and i32 %.0293.lcssa, 3                ; 2 uses
  %.not.i876 = icmp eq i32 %i.asw, 0              ; 2 uses
  %i.asx = sub nuw nsw i32 4, %i.asw              ; 3 uses
  %i.asy = select i1 %.not.i876, i32 0, i32 %i.asx ; 2 uses
  %.0.i877 = add i32 %i.asy, %i.asv
  %i.asz = icmp ugt i32 %.0.i877, %i.asv
  br i1 %i.asz, label %bb.ga, label %.loopexit1710

bb.ga:                                            ; preds = %bb.fz
  %i.ata = ptrtoint ptr %.sroa.25.4 to i64
  %i.atb = ptrtoint ptr %.sroa.01254.4 to i64
  %i.atc = sub i64 %i.ata, %i.atb                 ; 7 uses
  %i.atd = add i32 %i.asy, %.0293.lcssa
  %i.ate = zext i32 %i.atd to i64                 ; 2 uses
  %i.atf = icmp ult i64 %i.atc, %i.ate
  br i1 %i.atf, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i883, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit892

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i883: ; preds = %bb.ga
  %i.atg = sub nuw nsw i64 %i.ate, %i.atc         ; 2 uses
  %.sroa.speculated.i.i.i884 = call i64 @llvm.umax.i64(i64 %i.atc, i64 %i.atg)
  %i.ath = add nuw nsw i64 %.sroa.speculated.i.i.i884, %i.atc ; 2 uses
  %i.ati = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ath) #31
          to label %.noexc891 unwind label %bb.ge ; 4 uses

.noexc891:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i883
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 %i.atc ; 2 uses
  store i8 0, ptr %i.atj, align 1, !tbaa !16
  %i.atk = add nsw i64 %i.atg, -1                 ; 2 uses
  %i.atl = icmp eq i64 %i.atk, 0
  br i1 %i.atl, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885, label %bb.gb

bb.gb:                                            ; preds = %.noexc891
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.atm, i8 0, i64 %i.atk, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885: ; preds = %bb.gb, %.noexc891
  %.not35.i.i886 = icmp eq ptr %.sroa.25.4, %.sroa.01254.4
  br i1 %.not35.i.i886, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887, label %bb.gc

bb.gc:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ati, ptr align 1 %.sroa.01254.4, i64 %i.atc, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887: ; preds = %bb.gc, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885
  %.not.i33.i.i888 = icmp eq ptr %.sroa.01254.4, null
  br i1 %.not.i33.i.i888, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01254.4, i64 noundef %i.atc) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889: ; preds = %bb.gd, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ati, i64 %i.ath
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit892

bb.ge:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i883
  %i.ato = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

_ZNSt6vectorIhSaIhEE6resizeEm.exit892:            ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889, %bb.ga
  %.sroa.01254.0 = phi ptr [ %.sroa.01254.4, %bb.ga ], [ %i.ati, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889 ] ; 3 uses
  %.sroa.25.0 = phi ptr [ %.sroa.25.4, %bb.ga ], [ %i.atn, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889 ] ; 2 uses
  br i1 %.not.i876, label %.loopexit1710, label %.lr.ph2143.preheader

.lr.ph2143.preheader:                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit892
  %i.atp = getelementptr i8, ptr %.sroa.01254.0, i64 %i.asu
  %umax2424 = zext nneg i32 %i.asx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.atp, i8 0, i64 %umax2424, i1 false), !tbaa !16
  %i.atq = add i32 %.0293.lcssa, %i.asx
  br label %.loopexit1710

.loopexit1710:                                    ; preds = %.lr.ph2143.preheader, %_ZNSt6vectorIhSaIhEE6resizeEm.exit892, %bb.fz
  %.sroa.01254.1 = phi ptr [ %.sroa.01254.4, %bb.fz ], [ %.sroa.01254.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit892 ], [ %.sroa.01254.0, %.lr.ph2143.preheader ] ; 2 uses
  %.sroa.25.1 = phi ptr [ %.sroa.25.4, %bb.fz ], [ %.sroa.25.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit892 ], [ %.sroa.25.0, %.lr.ph2143.preheader ] ; 2 uses
  %.2299 = phi i32 [ %.0293.lcssa, %bb.fz ], [ %.0293.lcssa, %_ZNSt6vectorIhSaIhEE6resizeEm.exit892 ], [ %i.atq, %.lr.ph2143.preheader ] ; 2 uses
  %.not.i.i.i893 = icmp eq ptr %.sroa.01242.1, null
  br i1 %.not.i.i.i893, label %.thread1655, label %.split

.thread1677:                                      ; preds = %._crit_edge2118
  %.not.i.i.i8931684 = icmp eq ptr %.sroa.01242.1, null
  br i1 %.not.i.i.i8931684, label %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread, label %.split.thread

.split.thread:                                    ; preds = %.thread1677
  %i.atr = ptrtoint ptr %.sroa.01242.1 to i64
  %i.ats = sub i64 %.sroa.111248.0, %i.atr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01242.1, i64 noundef %i.ats) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread

.split:                                           ; preds = %.loopexit1710
  %i.att = ptrtoint ptr %.sroa.01242.1 to i64
  %i.atu = sub i64 %.sroa.111248.0, %i.att
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01242.1, i64 noundef %i.atu) #30
  br label %.thread1655

bb.gf:                                            ; preds = %bb.fw, %bb.ge
  %.pn534.pn.pn.pn = phi { ptr, i32 } [ %i.ara, %bb.fw ], [ %i.ato, %bb.ge ] ; 2 uses
  %.not.i.i.i896 = icmp eq ptr %.sroa.01242.1, null
  br i1 %.not.i.i.i896, label %_ZNSt6vectorIhSaIhEED2Ev.exit898, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.atv = ptrtoint ptr %.sroa.01242.1 to i64
  %i.atw = sub i64 %.sroa.111248.0, %i.atv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01242.1, i64 noundef %i.atw) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

_ZNSt6vectorIhSaIhEED2Ev.exit895.thread:          ; preds = %.thread1677, %.split.thread, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.atx = ptrtoint ptr %.sroa.25.4 to i64
  %i.aty = ptrtoint ptr %.sroa.01254.4 to i64
  %i.atz = sub i64 %i.atx, %i.aty
  %.not5242135 = icmp ugt i32 %i.eo, %i.fb
  br i1 %.not5242135, label %.thread1655, label %.lr.ph2139

.lr.ph2139:                                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread
  %i.aua = load ptr, ptr %i.s, align 8, !tbaa !18 ; 3 uses
  %i.aub = load i32, ptr %i.al, align 4, !tbaa !105
  %i.auc = load i8, ptr %i.w, align 8, !tbaa !77
  %i.aud = lshr i8 %i.auc, 3
  %i.aue = zext nneg i8 %i.aud to i64
  %i.auf = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.aug = zext i8 %i.auf to i64
  %i.auh = mul nuw nsw i64 %i.aue, %i.aug         ; 3 uses
  %i.aui = load i8, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %.not.i.i899 = icmp eq i8 %i.aui, 0
  %i.auj = load i8, ptr %i.ag, align 1            ; 2 uses
  %i.auk = lshr i8 %i.auj, 3
  %narrow.i.i900 = select i1 %.not.i.i899, i8 0, i8 %i.auk
  %i.aul = zext nneg i8 %narrow.i.i900 to i64
  %i.aum = add nuw nsw i64 %i.auh, %i.aul         ; 3 uses
  %.not5262127 = icmp ugt i32 %i.ex, %i.ez
  %.not.i901 = icmp eq i8 %i.aui, 0
  %i.aun = lshr i8 %i.auj, 3
  %narrow.i902 = select i1 %.not.i901, i8 0, i8 %i.aun
  %narrow.i902.fr = freeze i8 %narrow.i902        ; 2 uses
  %i.auo = zext i8 %narrow.i902.fr to i32         ; 2 uses
  %i.aup = icmp eq i8 %narrow.i902.fr, 0
  %.02120 = add nsw i32 %i.auo, -1
  %i.auq = zext i32 %.02120 to i64                ; 7 uses
  %invariant.gep2775 = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.auh
  %scevgep3017 = getelementptr i8, ptr %.sroa.01254.4, i64 1
  %i.aur = add nuw nsw i64 %i.auh, %i.auq         ; 2 uses
  %scevgep3019 = getelementptr i8, ptr %i.aua, i64 %i.aur
  %scevgep3021 = getelementptr i8, ptr %i.aua, i64 1
  %scevgep3022 = getelementptr i8, ptr %scevgep3021, i64 %i.aur
  %brmerge2777 = or i1 %.not5262127, %i.aup
  br label %bb.gh

bb.gh:                                            ; preds = %.lr.ph2139, %._crit_edge2132
  %.02862138 = phi i64 [ 0, %.lr.ph2139 ], [ %.1.lcssa, %._crit_edge2132 ] ; 2 uses
  %storemerge5232136 = phi i32 [ %i.eo, %.lr.ph2139 ], [ %i.awx, %._crit_edge2132 ] ; 3 uses
  br i1 %brmerge2777, label %._crit_edge2132, label %.lr.ph2124.preheader

.lr.ph2124.preheader:                             ; preds = %bb.gh
  %i.aus = mul i32 %i.aub, %storemerge5232136
  %i.aut = zext i32 %i.aus to i64                 ; 2 uses
  %i.auu = mul nuw nsw i64 %i.aum, %i.aut
  %gep2776 = getelementptr inbounds nuw i8, ptr %invariant.gep2775, i64 %i.auu
  br label %.lr.ph2124

.lr.ph2124:                                       ; preds = %.lr.ph2124.preheader, %._crit_edge2125
  %.12129 = phi i64 [ %i.awu, %._crit_edge2125 ], [ %.02862138, %.lr.ph2124.preheader ] ; 10 uses
  %storemerge5252128 = phi i32 [ %i.aww, %._crit_edge2125 ], [ %i.ex, %.lr.ph2124.preheader ] ; 4 uses
  %i.auv = zext i32 %storemerge5252128 to i64
  %umax2421 = call i64 @llvm.umax.i64(i64 %.12129, i64 %i.atz) ; 3 uses
  %i.auw = trunc i64 %.12129 to i32
  %i.aux = add i32 %i.auo, %i.auw
  %i.auy = mul nuw nsw i64 %i.aum, %i.auv
  %gep2774 = getelementptr inbounds nuw i8, ptr %gep2776, i64 %i.auy ; 2 uses
  %i.auz = sub i64 %umax2421, %.12129
  %umin3024 = call i64 @llvm.umin.i64(i64 %i.auq, i64 %i.auz) ; 2 uses
  %i.ava = add nuw nsw i64 %umin3024, 1           ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin3024, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph2124
  %i.avb = zext i32 %storemerge5252128 to i64
  %i.avc = add nuw nsw i64 %i.aut, %i.avb
  %i.avd = mul nuw nsw i64 %i.aum, %i.avc         ; 2 uses
  %scevgep3023 = getelementptr i8, ptr %scevgep3022, i64 %i.avd
  %scevgep = getelementptr i8, ptr %.sroa.01254.4, i64 %.12129
  %i.ave = sub i64 %umax2421, %.12129
  %umin = call i64 @llvm.umin.i64(i64 %i.auq, i64 %i.ave) ; 2 uses
  %i.avf = getelementptr i8, ptr %scevgep3017, i64 %.12129
  %scevgep3018 = getelementptr i8, ptr %i.avf, i64 %umin
  %i.avg = sub nsw i64 %i.avd, %umin
  %scevgep3020 = getelementptr i8, ptr %scevgep3019, i64 %i.avg
  %bound0 = icmp ult ptr %scevgep, %scevgep3023
  %bound1 = icmp ult ptr %scevgep3020, %scevgep3018
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.avh = and i64 %i.ava, 7                      ; 2 uses
  %i.avi = icmp eq i64 %i.avh, 0
  %i.avj = select i1 %i.avi, i64 8, i64 %i.avh
  %n.vec = sub nsw i64 %i.ava, %i.avj             ; 3 uses
  %i.avk = sub nsw i64 %i.auq, %n.vec
  %i.avl = add i64 %.12129, %n.vec
  %i.avm = getelementptr i8, ptr %.sroa.01254.4, i64 %.12129
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.avn = sub i64 %i.auq, %index
  %i.avo = getelementptr inbounds nuw i8, ptr %gep2774, i64 %i.avn
  %i.avp = getelementptr inbounds i8, ptr %i.avo, i64 -7
  %wide.load = load <8 x i8>, ptr %i.avp, align 1, !tbaa !16, !alias.scope !214
  %reverse = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.avq = getelementptr i8, ptr %i.avm, i64 %index
  store <8 x i8> %reverse, ptr %i.avq, align 1, !tbaa !16, !alias.scope !217, !noalias !214
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.avr = icmp eq i64 %index.next, %n.vec
  br i1 %i.avr, label %scalar.ph.preheader, label %vector.body, !llvm.loop !219

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph2124
  %indvars.iv2417.ph = phi i64 [ %i.auq, %vector.memcheck ], [ %i.auq, %.lr.ph2124 ], [ %i.avk, %vector.body ]
  %.22121.ph = phi i64 [ %.12129, %vector.memcheck ], [ %.12129, %.lr.ph2124 ], [ %i.avl, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.gs
  %indvars.iv2417 = phi i64 [ %indvars.iv.next2418, %bb.gs ], [ %indvars.iv2417.ph, %scalar.ph.preheader ] ; 2 uses
  %.22121 = phi i64 [ %i.awu, %bb.gs ], [ %.22121.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond2422.not = icmp eq i64 %.22121, %umax2421
  br i1 %exitcond2422.not, label %bb.gi, label %bb.gs

bb.gi:                                            ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29, !noalias !220
  store i32 %storemerge5252128, ptr %11, align 16, !tbaa !16, !alias.scope !223, !noalias !220
  store i32 %storemerge5232136, ptr %i.de, align 16, !tbaa !16, !alias.scope !223, !noalias !220
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !226
  store i64 0, ptr %i.dh, align 8, !noalias !226
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.dg, align 8, !tbaa !131, !noalias !226
  store ptr %i.di, ptr %6, align 8, !tbaa !133, !noalias !226
  store i64 500, ptr %i.df, align 8, !tbaa !134, !noalias !226
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !226
  store ptr @.str.31, ptr %1, align 8, !tbaa !135, !noalias !226
  store i64 70, ptr %.sroa.2.0..sroa_idx.i16.i1035, align 8, !tbaa !136, !noalias !226
  store i32 0, ptr %i.dj, align 8, !tbaa !137, !noalias !226
  store ptr %6, ptr %i.dk, align 8, !tbaa !140, !noalias !226
  store i64 34, ptr %i.dl, align 8, !tbaa !142, !noalias !226
  store ptr %11, ptr %.sroa.2.0..sroa_idx.i17.i1036, align 8, !tbaa !16, !noalias !226
  store ptr null, ptr %i.dm, align 8, !tbaa !144, !noalias !226
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.31, i64 70, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc1041 unwind label %.loopexit1728

.noexc1041:                                       ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !226
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.avs = load i64, ptr %i.dh, align 8, !tbaa !148, !noalias !232 ; 6 uses
  %i.avt = icmp ult i64 %i.avs, 4611686018427387903
  call void @llvm.assume(i1 %i.avt)
  %i.avu = load ptr, ptr %6, align 8, !tbaa !133, !noalias !232 ; 3 uses
  store ptr %i.dn, ptr %13, align 8, !tbaa !9, !alias.scope !232
  %i.avv = icmp eq ptr %i.avu, null
  %i.avw = icmp ne i64 %i.avs, 0
  %or.cond.i.i.i999 = and i1 %i.avw, %i.avv
  br i1 %or.cond.i.i.i999, label %.noexc.i.i1004, label %bb.gj

.noexc.i.i1004:                                   ; preds = %.noexc1041
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i1005 unwind label %.loopexit.split-lp1729

.noexc.i1005:                                     ; preds = %.noexc.i.i1004
  unreachable

bb.gj:                                            ; preds = %.noexc1041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !232
  store i64 %i.avs, ptr %i.a, align 8, !tbaa !136, !noalias !232
  %i.avx = icmp samesign ugt i64 %i.avs, 15
  br i1 %i.avx, label %.noexc.i.i.i1002, label %._crit_edge.i.i.i.i1000

.noexc.i.i.i1002:                                 ; preds = %bb.gj
  %i.avy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i1003 unwind label %.loopexit1728 ; 2 uses

.noexc7.i1003:                                    ; preds = %.noexc.i.i.i1002
  store ptr %i.avy, ptr %13, align 8, !tbaa !17, !alias.scope !232
  %i.avz = load i64, ptr %i.a, align 8, !tbaa !136, !noalias !232
  store i64 %i.avz, ptr %i.dn, align 8, !tbaa !16, !alias.scope !232
  br label %._crit_edge.i.i.i.i1000

._crit_edge.i.i.i.i1000:                          ; preds = %.noexc7.i1003, %bb.gj
  %i.awa = phi ptr [ %i.avy, %.noexc7.i1003 ], [ %i.dn, %bb.gj ] ; 2 uses
  switch i64 %i.avs, label %bb.gl [
    i64 1, label %bb.gk
    i64 0, label %bb.gm
  ]

bb.gk:                                            ; preds = %._crit_edge.i.i.i.i1000
  %i.awb = load i8, ptr %i.avu, align 1, !tbaa !16
  store i8 %i.awb, ptr %i.awa, align 1, !tbaa !16
  br label %bb.gm

bb.gl:                                            ; preds = %._crit_edge.i.i.i.i1000
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awa, ptr align 1 %i.avu, i64 %i.avs, i1 false)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %._crit_edge.i.i.i.i1000
  %i.awc = load i64, ptr %i.a, align 8, !tbaa !136, !noalias !232 ; 2 uses
  store i64 %i.awc, ptr %i.do, align 8, !tbaa !13, !alias.scope !232
  %i.awd = load ptr, ptr %13, align 8, !tbaa !17, !alias.scope !232
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 %i.awc
  store i8 0, ptr %i.awe, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !232
  %i.awf = load ptr, ptr %6, align 8, !tbaa !133, !noalias !226 ; 2 uses
  %.not.i.i.i1001 = icmp eq ptr %i.awf, %i.di
  br i1 %.not.i.i.i1001, label %.noexc910, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @free(ptr noundef %i.awf) #29
  br label %.noexc910

.loopexit1728:                                    ; preds = %.noexc.i.i.i1002, %bb.gi
  %lpad.loopexit1730 = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

.loopexit.split-lp1729:                           ; preds = %.noexc.i.i1004
  %lpad.loopexit.split-lp1731 = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.go:                                            ; preds = %.loopexit.split-lp1729, %.loopexit1728
  %lpad.phi1732 = phi { ptr, i32 } [ %lpad.loopexit1730, %.loopexit1728 ], [ %lpad.loopexit.split-lp1731, %.loopexit.split-lp1729 ]
  %i.awg = load ptr, ptr %6, align 8, !tbaa !133, !noalias !226 ; 2 uses
  %.not.i.i8.i997 = icmp eq ptr %i.awg, %i.di
  br i1 %.not.i.i8.i997, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @free(ptr noundef %i.awg) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998: ; preds = %bb.gp, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !226
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

.noexc910:                                        ; preds = %bb.gn, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !220
  %i.awh = load ptr, ptr %13, align 8, !tbaa !17
  store ptr %i.awh, ptr %12, align 8, !tbaa !21
  %i.awi = load i64, ptr %i.do, align 8, !tbaa !13
  store i64 %i.awi, ptr %i.dp, align 8, !tbaa !23
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %12)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %.noexc910
  %i.awj = load ptr, ptr %13, align 8, !tbaa !17  ; 2 uses
  %i.awk = icmp eq ptr %i.awj, %i.dn
  br i1 %i.awk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i908

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i908: ; preds = %bb.gq
  %i.awl = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.awm = add i64 %i.awl, 1
  call void @_ZdlPvm(ptr noundef %i.awj, i64 noundef %i.awm) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909

bb.gr:                                            ; preds = %.noexc910
  %i.awn = landingpad { ptr, i32 }
          cleanup
  %i.awo = load ptr, ptr %13, align 8, !tbaa !17  ; 2 uses
  %i.awp = icmp eq ptr %i.awo, %i.dn
  br i1 %i.awp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i905: ; preds = %bb.gr
  %i.awq = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.awr = add i64 %i.awq, 1
  call void @_ZdlPvm(ptr noundef %i.awo, i64 noundef %i.awr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i905
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

bb.gs:                                            ; preds = %scalar.ph
  %i.aws = getelementptr inbounds nuw i8, ptr %gep2774, i64 %indvars.iv2417
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !16
  %i.awu = add i64 %.22121, 1                     ; 4 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.sroa.01254.4, i64 %.22121
  store i8 %i.awt, ptr %i.awv, align 1, !tbaa !16
  %indvars.iv.next2418 = add nsw i64 %indvars.iv2417, -1
  %lftr.wideiv = trunc i64 %i.awu to i32
  %exitcond2423 = icmp eq i32 %i.aux, %lftr.wideiv
  br i1 %exitcond2423, label %._crit_edge2125, label %scalar.ph, !llvm.loop !233

._crit_edge2125:                                  ; preds = %bb.gs
  %i.aww = add i32 %storemerge5252128, 1          ; 2 uses
  %.not526 = icmp ugt i32 %i.aww, %i.ez
  br i1 %.not526, label %._crit_edge2132, label %.lr.ph2124, !llvm.loop !234

._crit_edge2132:                                  ; preds = %._crit_edge2125, %bb.gh
  %.1.lcssa = phi i64 [ %.02862138, %bb.gh ], [ %i.awu, %._crit_edge2125 ]
  %i.awx = add i32 %storemerge5232136, 1          ; 2 uses
  %.not524 = icmp ugt i32 %i.awx, %i.fb
  br i1 %.not524, label %.thread1655, label %bb.gh, !llvm.loop !235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i908
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.he

.thread1655:                                      ; preds = %._crit_edge2132, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread, %.loopexit1710, %.split
  %.33001639 = phi i32 [ %.2299, %.split ], [ %.2299, %.loopexit1710 ], [ %i.anw, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread ], [ %i.anw, %._crit_edge2132 ]
  %.sroa.25.21633 = phi ptr [ %.sroa.25.1, %.split ], [ %.sroa.25.1, %.loopexit1710 ], [ %.sroa.25.4, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread ], [ %.sroa.25.4, %._crit_edge2132 ] ; 7 uses
  %.sroa.01254.21626 = phi ptr [ %.sroa.01254.1, %.split ], [ %.sroa.01254.1, %.loopexit1710 ], [ %.sroa.01254.4, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread ], [ %.sroa.01254.4, %._crit_edge2132 ] ; 8 uses
  %.114431624 = phi i32 [ %i.asv, %.split ], [ %i.asv, %.loopexit1710 ], [ %i.aoa, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread ], [ %i.aoa, %._crit_edge2132 ]
  %savedstack919 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.awy = call i32 @llvm.bswap.i32(i32 %.114431624)
  store i32 %i.awy, ptr %i.l, align 16, !tbaa !3
  %i.awz = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.l, i64 noundef 4, i64 noundef 1)
          to label %bb.gt unwind label %bb.gu

bb.gt:                                            ; preds = %.thread1655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.stackrestore.p0(ptr %savedstack919)
  br i1 %i.awz, label %bb.gv, label %bb.he

bb.gu:                                            ; preds = %bb.hb, %bb.gz, %bb.gx, %bb.gv, %.thread1655, %bb.hd
  %i.axa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

bb.gv:                                            ; preds = %bb.gt
  %i.axb = trunc i32 %i.ex to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.axc = call i16 @llvm.bswap.i16(i16 %i.axb)
  store i16 %i.axc, ptr %i.k, align 16, !tbaa !95
  %i.axd = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.k, i64 noundef 2, i64 noundef 1)
          to label %bb.gw unwind label %bb.gu

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.axd, label %bb.gx, label %bb.he

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.er, ptr %i.j, align 16, !tbaa !95
  %i.axe = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.j, i64 noundef 2, i64 noundef 1)
          to label %bb.gy unwind label %bb.gu

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.axe, label %bb.gz, label %bb.he

bb.gz:                                            ; preds = %bb.gy
  %i.axf = trunc i32 %i.ez to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.axg = call i16 @llvm.bswap.i16(i16 %i.axf)
  store i16 %i.axg, ptr %i.i, align 16, !tbaa !95
  %i.axh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.i, i64 noundef 2, i64 noundef 1)
          to label %bb.ha unwind label %bb.gu

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.axh, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.axi = trunc i32 %i.fb to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.axj = call i16 @llvm.bswap.i16(i16 %i.axi)
  store i16 %i.axj, ptr %i.h, align 16, !tbaa !95
  %i.axk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.h, i64 noundef 2, i64 noundef 1)
          to label %bb.hc unwind label %bb.gu

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.axk, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.axl = zext i32 %.33001639 to i64
  %i.axm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.01254.21626, i64 noundef %i.axl, i64 noundef 1)
          to label %bb.he unwind label %bb.gu

bb.he:                                            ; preds = %bb.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909, %bb.gw, %bb.gy, %bb.ha, %bb.hc, %bb.gt
  %.sroa.25.21632 = phi ptr [ %.sroa.25.21633, %bb.gw ], [ %.sroa.25.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909 ], [ %.sroa.25.21633, %bb.gt ], [ %.sroa.25.21633, %bb.gy ], [ %.sroa.25.21633, %bb.hc ], [ %.sroa.25.21633, %bb.ha ], [ %.sroa.25.21633, %bb.hd ]
  %.sroa.01254.21627 = phi ptr [ %.sroa.01254.21626, %bb.gw ], [ %.sroa.01254.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909 ], [ %.sroa.01254.21626, %bb.gt ], [ %.sroa.01254.21626, %bb.gy ], [ %.sroa.01254.21626, %bb.hc ], [ %.sroa.01254.21626, %bb.ha ], [ %.sroa.01254.21626, %bb.hd ] ; 3 uses
  %.26 = phi i1 [ false, %bb.gw ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909 ], [ false, %bb.gt ], [ false, %bb.gy ], [ false, %bb.hc ], [ false, %bb.ha ], [ %i.axm, %bb.hd ]
  %.not.i.i.i930 = icmp eq ptr %.sroa.01254.21627, null
  br i1 %.not.i.i.i930, label %_ZNSt6vectorIhSaIhEED2Ev.exit932, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.axn = ptrtoint ptr %.sroa.25.21632 to i64
  %i.axo = ptrtoint ptr %.sroa.01254.21627 to i64
  %i.axp = sub i64 %i.axn, %i.axo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01254.21627, i64 noundef %i.axp) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit932

_ZNSt6vectorIhSaIhEED2Ev.exit932:                 ; preds = %bb.he, %bb.hf
  br i1 %.26, label %bb.hg, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEED2Ev.exit898:                 ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906, %bb.gg, %bb.gf, %.thread1611, %bb.gu
  %.sroa.01254.3 = phi ptr [ %.sroa.01254.4, %bb.gg ], [ %.sroa.01254.21626, %bb.gu ], [ %.sroa.01254.4, %.thread1611 ], [ %.sroa.01254.4, %bb.gf ], [ %.sroa.01254.4, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998 ], [ %.sroa.01254.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906 ] ; 3 uses
  %.sroa.25.3 = phi ptr [ %.sroa.25.4, %bb.gg ], [ %.sroa.25.21633, %bb.gu ], [ %.sroa.25.4, %.thread1611 ], [ %.sroa.25.4, %bb.gf ], [ %.sroa.25.4, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998 ], [ %.sroa.25.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906 ]
  %.pn534.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn534.pn.pn.pn, %bb.gg ], [ %i.axa, %bb.gu ], [ %i.aow, %.thread1611 ], [ %.pn534.pn.pn.pn, %bb.gf ], [ %lpad.phi1732, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998 ], [ %i.awn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906 ] ; 2 uses
  %.not.i.i.i933 = icmp eq ptr %.sroa.01254.3, null
  br i1 %.not.i.i.i933, label %.body, label %_ZNSt6vectorIhSaIhEED2Ev.exit898.thread

_ZNSt6vectorIhSaIhEED2Ev.exit898.thread:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit898
  %i.axq = ptrtoint ptr %.sroa.25.3 to i64
  %i.axr = ptrtoint ptr %.sroa.01254.3 to i64
  %i.axs = sub i64 %i.axq, %i.axr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01254.3, i64 noundef %i.axs) #30
  br label %.body

bb.hg:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit932, %bb.fa
  %i.axt = add nuw nsw i32 %.03472147, 1          ; 2 uses
  %i.axu = load i32, ptr %i.al, align 4, !tbaa !105 ; 3 uses
  %i.axv = add i32 %i.axu, 63
  %i.axw = lshr i32 %i.axv, 6
  %i.axx = icmp samesign ult i32 %i.axt, %i.axw
  %indvar.next3027 = add i64 %indvar3026, 1
  br i1 %i.axx, label %bb.e, label %._crit_edge2149.loopexit, !llvm.loop !236

._crit_edge2149.loopexit:                         ; preds = %bb.hg
  %.pre2427 = load i32, ptr %i.ax, align 8, !tbaa !106
  br label %._crit_edge2149

._crit_edge2149:                                  ; preds = %._crit_edge2149.loopexit, %.preheader
  %i.axy = phi i32 [ %.pre2427, %._crit_edge2149.loopexit ], [ %i.el, %.preheader ] ; 2 uses
  %i.axz = phi i32 [ %i.axu, %._crit_edge2149.loopexit ], [ %i.em, %.preheader ]
  %i.aya = add nuw nsw i32 %.03602151, 1          ; 2 uses
  %i.ayb = add i32 %i.axy, 63
  %i.ayc = lshr i32 %i.ayb, 6
  %i.ayd = icmp samesign ult i32 %i.aya, %i.ayc
  br i1 %i.ayd, label %.preheader, label %._crit_edge2152, !llvm.loop !237

._crit_edge2152:                                  ; preds = %._crit_edge2149, %.preheader1733
  %i.aye = invoke noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.hh unwind label %bb.hj

bb.hh:                                            ; preds = %._crit_edge2152
  %i.ayf = trunc i64 %i.aye to i32
  %i.ayg = add i32 %i.ayf, -8                     ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !238
  %i.ayj = sub i32 %i.ayg, %i.ayi
  %i.ayk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 4, i32 noundef 0)
          to label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i940 unwind label %bb.hk ; 0 uses

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i940: ; preds = %bb.hh
  %savedstack941 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ayl = call i32 @llvm.bswap.i32(i32 %i.ayg)
  store i32 %i.ayl, ptr %i.g, align 16, !tbaa !3
  %i.aym = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
          to label %bb.hi unwind label %bb.hk

bb.hi:                                            ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.stackrestore.p0(ptr %savedstack941)
  br i1 %i.aym, label %bb.hl, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.hj:                                            ; preds = %._crit_edge2152
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hk:                                            ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i948, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i940, %bb.hn, %bb.hl, %bb.hh
  %i.ayo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hl:                                            ; preds = %bb.hi
  %i.ayp = load i32, ptr %i.ayh, align 4, !tbaa !238
  %i.ayq = add i32 %i.ayp, 4
  %i.ayr = zext i32 %i.ayq to i64
  %i.ays = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.ayr, i32 noundef 0)
          to label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i948 unwind label %bb.hk ; 0 uses

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i948: ; preds = %bb.hl
  %savedstack949 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ayt = call i32 @llvm.bswap.i32(i32 %i.ayj)
  store i32 %i.ayt, ptr %i.f, align 16, !tbaa !3
  %i.ayu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1)
          to label %bb.hm unwind label %bb.hk

bb.hm:                                            ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.stackrestore.p0(ptr %savedstack949)
  br i1 %i.ayu, label %bb.hn, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef 0)
          to label %bb.ho unwind label %bb.hk

bb.ho:                                            ; preds = %bb.hn
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !20
  %i.ayx = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.ayy = icmp eq ptr %i.ayw, %i.ayx
  br i1 %i.ayy, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit, label %bb.hp

end_hunk_1
