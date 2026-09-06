Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffoutput?download=true
inline.NumInlined: 3241
inline.NumDeleted: 853
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !58
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %bb.hs, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 11 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !108
  %i.y = lshr i8 %i.x, 3
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 15 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !109
  %i.ac = zext i8 %i.ab to i32
  %i.ad = mul nuw nsw i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 13 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !110
  %.not.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 12 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = lshr i8 %i.ah, 3
  %narrow.i.i = select i1 %.not.i.i, i8 0, i8 %i.ai
  %i.aj = zext nneg i8 %narrow.i.i to i32
  %i.ak = add nuw nsw i32 %i.ad, %i.aj            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 11 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !115
  %i.an = mul i32 %i.ak, %i.am                    ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.c
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #31 ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao  ; 2 uses
  store i8 0, ptr %i.ap, align 1, !tbaa !55
  %i.ar = add nsw i64 %i.ao, -1                   ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.at, i8 0, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.d, %.noexc, %bb.c
  %.sroa.111463.0 = phi ptr [ %i.aq, %bb.d ], [ %i.aq, %.noexc ], [ null, %bb.c ] ; 2 uses
  %.sroa.01458.0 = phi ptr [ %i.ap, %bb.d ], [ %i.ap, %.noexc ], [ null, %bb.c ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !104 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %.lr.ph, label %.preheader1763

.preheader1763:                                   ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !116 ; 2 uses
  %i.az = add i32 %i.ay, 63
  %.not2187 = icmp ult i32 %i.az, 64
  br i1 %.not2187, label %._crit_edge2182, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader1763
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
  %.sroa.2.0..sroa_idx.i16.i1036 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.2.0..sroa_idx.i17.i1037 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i16.i1044 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0..sroa_idx.i17.i1045 = getelementptr inbounds nuw i8, ptr %2, i64 40
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
  %.sroa.2.0..sroa_idx.i16.i1028 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.2.0..sroa_idx.i17.i1029 = getelementptr inbounds nuw i8, ptr %4, i64 40
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
  %.sroa.2.0..sroa_idx.i16.i1052 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0..sroa_idx.i17.i1053 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre = load i32, ptr %i.al, align 4, !tbaa !115
  br label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %.lr.ph
  %i.dq = phi i32 [ %i.ei, %.lr.ph ], [ %i.av, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ]
  %.03932059 = phi i32 [ %i.eh, %.lr.ph ], [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 3 uses
  %i.dr = xor i32 %.03932059, -1
  %i.ds = add i32 %i.dq, %i.dr
  %i.dt = load i32, ptr %i.al, align 4, !tbaa !115 ; 2 uses
  %i.du = mul i32 %i.dt, %i.ak                    ; 2 uses
  %i.dv = mul i32 %i.du, %i.ds
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw ; 2 uses
  %i.dz = mul i32 %.03932059, %i.ak
  %i.ea = mul i32 %i.dz, %i.dt
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb ; 2 uses
  %i.ed = zext i32 %i.du to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.01458.0, ptr nonnull align 1 %i.dy, i64 %i.ed, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull align 1 %i.ec, i64 %i.ed, i1 false)
  %i.ee = load i32, ptr %i.al, align 4, !tbaa !115
  %i.ef = mul i32 %i.ee, %i.ak
  %i.eg = zext i32 %i.ef to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %.sroa.01458.0, i64 %i.eg, i1 false)
  %i.eh = add nuw nsw i32 %.03932059, 1           ; 2 uses
  %i.ei = load i32, ptr %i.au, align 8, !tbaa !104 ; 2 uses
  %i.ej = sdiv i32 %i.ei, 2
  %i.ek = icmp slt i32 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph, label %.preheader1763, !llvm.loop !307

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge2179
  %i.el = phi i32 [ %i.ay, %.preheader.lr.ph ], [ %i.ayg, %._crit_edge2179 ]
  %i.em = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.ayh, %._crit_edge2179 ] ; 3 uses
  %.03602181 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ayi, %._crit_edge2179 ] ; 2 uses
  %i.en = add i32 %i.em, 63
  %.not2188 = icmp ult i32 %i.en, 64
  br i1 %.not2188, label %._crit_edge2179, label %.lr.ph2178

.lr.ph2178:                                       ; preds = %.preheader
  %i.eo = shl nuw i32 %.03602181, 6               ; 15 uses
  %i.ep = add nuw i32 %i.eo, 64
  %i.eq = trunc i32 %i.eo to i16
  %i.er = call i16 @llvm.bswap.i16(i16 %i.eq)     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph2178, %bb.hg
  %indvar = phi i64 [ 0, %.lr.ph2178 ], [ %indvar.next, %bb.hg ] ; 11 uses
  %i.es = phi i32 [ %i.em, %.lr.ph2178 ], [ %i.ayc, %bb.hg ]
  %.03472177 = phi i32 [ 0, %.lr.ph2178 ], [ %i.ayb, %bb.hg ] ; 2 uses
  %i.et = shl nuw nsw i64 %indvar, 6              ; 2 uses
  %indvar.tr = trunc i64 %indvar to i32
  %i.eu = shl i32 %indvar.tr, 6
  %i.ev = shl nuw nsw i64 %indvar, 6              ; 2 uses
  %indvar.tr3108 = trunc i64 %indvar to i32
  %i.ew = shl i32 %indvar.tr3108, 6
  %i.ex = shl nuw i32 %.03472177, 6               ; 26 uses
  %i.ey = add nuw i32 %i.ex, 64
  %.sroa.speculated1452 = call i32 @llvm.umin.i32(i32 %i.es, i32 %i.ey)
  %i.ez = add i32 %.sroa.speculated1452, -1       ; 21 uses
  %i.fa = load i32, ptr %i.au, align 8, !tbaa !104
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.fa, i32 %i.ep) ; 2 uses
  %i.fb = add i32 %.sroa.speculated, -1           ; 14 uses
  %i.fc = sub i32 %i.ez, %i.ex
  %i.fd = add i32 %i.fc, 1                        ; 2 uses
  %i.fe = sub i32 %.sroa.speculated, %i.eo        ; 2 uses
  %i.ff = load i8, ptr %i.aa, align 1, !tbaa !106
  %.not472 = icmp eq i8 %i.ff, 0
  br i1 %.not472, label %bb.fa, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29, !noalias !384
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr nonnull align 1 dereferenceable(5) @.str.25, i64 4, i64 0, ptr nonnull %28)
          to label %.noexc552 unwind label %bb.i

.noexc552:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29, !noalias !384
  %i.fg = load ptr, ptr %29, align 8, !tbaa !56
  %i.fh = load i64, ptr %i.ba, align 8, !tbaa !54
  %i.fi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.fg, i64 noundef %i.fh, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc552
  %i.fj = load ptr, ptr %29, align 8, !tbaa !56   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.bb
  br i1 %i.fk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.fl = load i64, ptr %i.bb, align 8, !tbaa !55
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc552
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %29, align 8, !tbaa !56   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bb
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.fq = load i64, ptr %i.bb, align 8, !tbaa !55
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
  %i.fv = load i8, ptr %i.w, align 8, !tbaa !108
  %i.fw = lshr i8 %i.fv, 3
  %i.fx = zext nneg i8 %i.fw to i32
  %i.fy = load i8, ptr %i.aa, align 1, !tbaa !109
  %i.fz = zext i8 %i.fy to i32
  %i.ga = mul i32 %i.ft, %i.fz
  %i.gb = mul i32 %i.ga, %i.fx                    ; 17 uses
  %i.gc = and i32 %i.gb, 3                        ; 2 uses
  %.not.i = icmp eq i32 %i.gc, 0
  %i.gd = sub nuw nsw i32 4, %i.gc
  %i.ge = select i1 %.not.i, i32 0, i32 %i.gd
  %.0.i = add i32 %i.gb, 8
  %i.gf = add i32 %.0.i, %i.ge                    ; 9 uses
  %i.gg = load i32, ptr %i.bc, align 4, !tbaa !105
  %i.gh = icmp eq i32 %i.gg, 1                    ; 2 uses
  %i.gi = zext i32 %i.gb to i64                   ; 3 uses
  %.not.i.i.i.i553 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i.i553, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #31
          to label %.noexc556 unwind label %bb.q  ; 5 uses

.noexc556:                                        ; preds = %bb.k
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gi  ; 3 uses
  store i8 0, ptr %i.gj, align 1, !tbaa !55
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  %i.gm = add nsw i64 %i.gi, -1                   ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557, label %bb.l

bb.l:                                             ; preds = %.noexc556
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 %i.gm, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557:            ; preds = %bb.l, %.noexc556, %bb.j
  %.sroa.63.16 = phi ptr [ %i.gk, %bb.l ], [ %i.gk, %.noexc556 ], [ null, %bb.j ] ; 29 uses
  %.sroa.01397.16 = phi ptr [ %i.gj, %bb.l ], [ %i.gj, %.noexc556 ], [ null, %bb.j ] ; 39 uses
  %.0.i.i.i.i.i554 = phi ptr [ %i.gk, %bb.l ], [ %i.gl, %.noexc556 ], [ null, %bb.j ] ; 18 uses
  %i.go = load i8, ptr %i.bd, align 8, !tbaa !94  ; 2 uses
  %i.gp = icmp eq i8 %i.go, 2
  %i.gq = load i8, ptr %i.be, align 1
  %i.gr = icmp eq i8 %i.gq, 1                     ; 2 uses
  %or.cond.i = select i1 %i.gp, i1 %i.gr, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557
  %i.gs = load i32, ptr %i.bf, align 4, !tbaa !95
  %.not.i558 = icmp eq i32 %i.gs, 0
  br i1 %.not.i558, label %bb.m, label %.thread1527

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  br i1 %i.gh, label %bb.n, label %.thread1497

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
  store i8 0, ptr %i.gv, align 1, !tbaa !55
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gy = add nsw i64 %i.gu, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gx, i8 0, i64 %i.gy, i1 false)
  %i.gz = ptrtoint ptr %i.gw to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563:            ; preds = %.noexc562, %bb.n
  %.sroa.121394.0 = phi i64 [ %i.gz, %.noexc562 ], [ 0, %bb.n ]
  %.sroa.01389.0 = phi ptr [ %i.gv, %.noexc562 ], [ null, %bb.n ] ; 7 uses
  %i.ha = ptrtoint ptr %.sroa.01389.0 to i64
  %i.hb = sub i64 %.sroa.121394.0, %i.ha          ; 4 uses
  %i.hc = load i8, ptr %i.aa, align 1, !tbaa !106 ; 2 uses
  %.not.i.i.i.i564 = icmp eq i32 %i.ft, 0
  %i.hd = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.he = icmp eq i64 %i.hd, 0
  %.not4982100 = icmp ugt i32 %i.eo, %i.fb
  %.not5002092 = icmp ugt i32 %i.ex, %i.ez
  %i.hf = sext i32 %i.ft to i64
  %i.hg = icmp sgt i32 %i.ft, 0
  %i.hh = icmp eq i8 %i.hc, 0
  br i1 %i.hh, label %._crit_edge3044, label %.lr.ph3043

.lr.ph3043:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit563
  %i.hi = zext i8 %i.hc to i64
  %i.hj = zext i32 %i.ez to i64
  %i.hk = shl i64 %indvar, 6
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = zext i32 %i.ez to i64
  %i.hn = shl i64 %indvar, 6
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = zext i32 %i.ez to i64
  %i.hq = shl i64 %indvar, 6
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = xor i32 %i.ew, -2
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ht = icmp slt i64 %indvars.iv.next24353041.in, 2
  br i1 %i.ht, label %._crit_edge3044, label %bb.t, !llvm.loop !310

bb.q:                                             ; preds = %bb.k
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.o
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit596

bb.s:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit580

bb.t:                                             ; preds = %.lr.ph3043, %bb.p
  %indvars.iv.next24353041.in = phi i64 [ %i.hi, %.lr.ph3043 ], [ %indvars.iv.next24353041, %bb.p ] ; 2 uses
  %.03223040 = phi i32 [ 0, %.lr.ph3043 ], [ %.1323, %bb.p ] ; 3 uses
  %indvars.iv.next24353041 = add nsw i64 %indvars.iv.next24353041.in, -1 ; 4 uses
  br i1 %.not.i.i.i.i564, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit568, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #31
          to label %.noexc567 unwind label %bb.w  ; 5 uses

.noexc567:                                        ; preds = %bb.u
end_hunk_0
