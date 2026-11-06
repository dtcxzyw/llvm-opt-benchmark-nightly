Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8simdjson7haswell14implementation32create_dom_parser_implementationEmmRSt10unique_ptrINS_8internal25dom_parser_implementationESt14default_deleteIS4_EE:bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #41, !inline_history !2
  %.pr = load ptr, ptr %3, align 8, !tbaa !88
  br label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i
  %i.l = phi ptr [ %i.a, %bb.c ], [ %.pr, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i ] ; 3 uses
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(49) %i.l, i64 noundef %1) #41 ; 2 uses
  %.not.not = icmp eq i32 %i.p, 0
  br i1 %.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !88     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(49) %i.q, i64 noundef %2) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %.2 = phi i32 [ 2, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit ], [ %i.u, %bb.e ], [ %i.p, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZNK8simdjson7haswell14implementation6minifyEPKhmPhRm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 128)
  %.not.i = icmp ult i64 %2, 129
  br i1 %.not.i, label %._crit_edge.i, label %.noexc47.i

.noexc47.i:                                       ; preds = %bb.a, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i
  %.sroa.32.0615.i = phi i64 [ %i.ch, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ]
  %.sroa.41.0614.i = phi ptr [ %i.jt, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ %3, %bb.a ] ; 4 uses
  %.sroa.12.0613.i = phi i64 [ %.sroa.12.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ] ; 3 uses
  %.sroa.11.0612.i = phi i64 [ %i.ju, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0612.i ; 4 uses
  %i.d = load <32 x i8>, ptr %i.c, align 1, !tbaa !36 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load <32 x i8>, ptr %i.e, align 1, !tbaa !36 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.h = load <32 x i8>, ptr %i.g, align 1, !tbaa !36 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.j = load <32 x i8>, ptr %i.i, align 1, !tbaa !36 ; 5 uses
  %i.k = icmp eq <32 x i8> %i.d, splat (i8 92)
  %i.l = icmp eq <32 x i8> %i.f, splat (i8 92)
  %i.m = bitcast <32 x i1> %i.k to i32
  %i.n = zext i32 %i.m to i64
  %i.o = bitcast <32 x i1> %i.l to i32
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 32                     ; 2 uses
  %i.r = or disjoint i64 %i.q, %i.n               ; 3 uses
  %.not.i107.i = icmp eq i64 %i.r, 0
  br i1 %.not.i107.i, label %.noexc51.i, label %bb.b

bb.b:                                             ; preds = %.noexc47.i
  %i.s = xor i64 %.sroa.12.0613.i, -1
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = shl i64 %i.t, 1
  %i.v = or i64 %i.u, -6148914691236517206
  %i.w = sub i64 %i.v, %i.t
  %i.x = xor i64 %i.w, -6148914691236517206       ; 2 uses
  %i.y = or i64 %i.r, %.sroa.12.0613.i
  %i.z = xor i64 %i.x, %i.y
  %i.aa = and i64 %i.x, %i.q
  %i.ab = lshr i64 %i.aa, 63
  br label %.noexc51.i

.noexc51.i:                                       ; preds = %bb.b, %.noexc47.i
  %.sroa.12.2.i = phi i64 [ %i.ab, %bb.b ], [ 0, %.noexc47.i ] ; 3 uses
  %.sroa.0.0.i108.i = phi i64 [ %i.z, %bb.b ], [ %.sroa.12.0613.i, %.noexc47.i ]
  %i.ac = icmp eq <32 x i8> %i.d, splat (i8 34)
  %i.ad = icmp eq <32 x i8> %i.f, splat (i8 34)
  %i.ae = bitcast <32 x i1> %i.ac to i32
  %i.af = zext i32 %i.ae to i64
  %i.ag = bitcast <32 x i1> %i.ad to i32
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 32
  %i.aj = or disjoint i64 %i.ai, %i.af
  %i.ak = xor i64 %.sroa.0.0.i108.i, -1
  %i.al = and i64 %i.aj, %i.ak
  %i.am = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.an = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.am, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.ao = extractelement <2 x i64> %i.an, i64 0
  %i.ap = xor i64 %i.ao, %.sroa.32.0615.i         ; 2 uses
  %i.aq = ashr i64 %i.ap, 63
  %i.ar = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.d)
  %i.as = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.f)
  %i.at = icmp eq <32 x i8> %i.d, %i.ar
  %i.au = icmp eq <32 x i8> %i.f, %i.as
  %i.av = bitcast <32 x i1> %i.at to i32
  %i.aw = zext i32 %i.av to i64
  %i.ax = bitcast <32 x i1> %i.au to i32
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 32
  %i.ba = or disjoint i64 %i.az, %i.aw
  %i.bb = icmp eq <32 x i8> %i.h, splat (i8 92)
  %i.bc = icmp eq <32 x i8> %i.j, splat (i8 92)
  %i.bd = bitcast <32 x i1> %i.bb to i32
  %i.be = zext i32 %i.bd to i64
  %i.bf = bitcast <32 x i1> %i.bc to i32
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 32                   ; 2 uses
  %i.bi = or disjoint i64 %i.bh, %i.be            ; 4 uses
  %.not.i104.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i104.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, label %bb.c

bb.c:                                             ; preds = %.noexc51.i
  %i.bj = xor i64 %.sroa.12.2.i, -1
  %i.bk = and i64 %i.bi, %i.bj
  %i.bl = shl i64 %i.bi, 1
  %i.bm = or i64 %i.bl, -6148914691236517206
  %i.bn = sub i64 %i.bm, %i.bk
  %i.bo = xor i64 %i.bn, -6148914691236517206     ; 2 uses
  %i.bp = or i64 %.sroa.12.2.i, %i.bi
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = and i64 %i.bo, %i.bh
  %i.bs = lshr i64 %i.br, 63
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i: ; preds = %bb.c, %.noexc51.i
  %.sroa.12.1.i = phi i64 [ %i.bs, %bb.c ], [ 0, %.noexc51.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.bq, %bb.c ], [ %.sroa.12.2.i, %.noexc51.i ]
  %i.bt = icmp eq <32 x i8> %i.h, splat (i8 34)
  %i.bu = icmp eq <32 x i8> %i.j, splat (i8 34)
  %i.bv = bitcast <32 x i1> %i.bt to i32
  %i.bw = zext i32 %i.bv to i64
  %i.bx = bitcast <32 x i1> %i.bu to i32
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 32
  %i.ca = or disjoint i64 %i.bz, %i.bw
  %i.cb = xor i64 %.sroa.0.0.i.i, -1
  %i.cc = and i64 %i.ca, %i.cb
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.cd, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.cf = extractelement <2 x i64> %i.ce, i64 0
  %i.cg = xor i64 %i.cf, %i.aq                    ; 2 uses
  %i.ch = ashr i64 %i.cg, 63                      ; 2 uses
  %i.ci = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.h)
  %i.cj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.j)
  %i.ck = icmp eq <32 x i8> %i.ci, %i.h
  %i.cl = icmp eq <32 x i8> %i.cj, %i.j
  %i.cm = bitcast <32 x i1> %i.ck to i32
  %i.cn = zext i32 %i.cm to i64
  %i.co = bitcast <32 x i1> %i.cl to i32
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 32
  %i.cr = or disjoint i64 %i.cq, %i.cn
  %i.cs = xor i64 %i.ap, -1
  %i.ct = and i64 %i.ba, %i.cs                    ; 11 uses
  %i.cu = lshr i64 %i.ct, 32                      ; 2 uses
  %i.cv = lshr i64 %i.ct, 8
  %i.cw = lshr i64 %i.ct, 16
  %i.cx = lshr i64 %i.ct, 24
  %i.cy = and i64 %i.cx, 255
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !40
  %i.db = and i64 %i.cw, 255                      ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !40
  %i.de = and i64 %i.cv, 255
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !40
  %i.dh = and i64 %i.ct, 255                      ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !40
  %i.dk = insertelement <4 x i64> poison, i64 %i.dj, i64 0
  %i.dl = insertelement <4 x i64> %i.dk, i64 %i.dg, i64 1
  %i.dm = insertelement <4 x i64> %i.dl, i64 %i.dd, i64 2
  %i.dn = insertelement <4 x i64> %i.dm, i64 %i.da, i64 3
  %i.do = bitcast <4 x i64> %i.dn to <32 x i8>
  %i.dp = add <32 x i8> %i.do, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.dq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.d, <32 x i8> %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.dh
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !36
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.db
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !36
  %i.dw = zext i8 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dt, 3
  %i.dy = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.dx
  %5 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !36
  %i.dz = shl nuw nsw i64 %i.dw, 3
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.dz
  %6 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !36
  %7 = shufflevector <2 x i64> %5, <2 x i64> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eb = bitcast <4 x i64> %7 to <32 x i8>
  %i.ec = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.dq, <32 x i8> %i.eb)
  %i.ed = bitcast <32 x i8> %i.ec to <4 x i64>    ; 2 uses
  %i.ee = shufflevector <4 x i64> %i.ed, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ee, ptr %.sroa.41.0614.i, align 1, !tbaa !36
  %8 = shufflevector <4 x i64> %i.ed, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.41.0614.i, i64 16
  %i.eg = and i64 %i.ct, 65535
  %i.eh = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.eg)
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  store <2 x i64> %8, ptr %i.ej, align 1, !tbaa !36
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.41.0614.i, i64 32
  %i.el = and i64 %i.ct, 4294967295
  %i.em = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.el)
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en ; 2 uses
  %i.ep = lshr i64 %i.ct, 40
  %i.eq = lshr i64 %i.ct, 48
  %i.er = lshr i64 %i.ct, 56
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !40
  %i.eu = and i64 %i.eq, 255                      ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !40
  %i.ex = and i64 %i.ep, 255
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !40
  %i.fa = and i64 %i.cu, 255                      ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !40
  %i.fd = insertelement <4 x i64> poison, i64 %i.fc, i64 0
  %i.fe = insertelement <4 x i64> %i.fd, i64 %i.ez, i64 1
  %i.ff = insertelement <4 x i64> %i.fe, i64 %i.ew, i64 2
  %i.fg = insertelement <4 x i64> %i.ff, i64 %i.et, i64 3
  %i.fh = bitcast <4 x i64> %i.fg to <32 x i8>
  %i.fi = add <32 x i8> %i.fh, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.fj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.f, <32 x i8> %i.fi)
  %i.fk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.fa
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !36
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.eu
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !36
  %i.fp = zext i8 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fm, 3
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.fq
  %9 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !36
  %i.fs = shl nuw nsw i64 %i.fp, 3
  %i.ft = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.fs
  %10 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !36
  %11 = shufflevector <2 x i64> %9, <2 x i64> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fu = bitcast <4 x i64> %11 to <32 x i8>
  %i.fv = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.fj, <32 x i8> %i.fu)
  %i.fw = bitcast <32 x i8> %i.fv to <4 x i64>    ; 2 uses
  %i.fx = shufflevector <4 x i64> %i.fw, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.fx, ptr %i.eo, align 1, !tbaa !36
  %12 = shufflevector <4 x i64> %i.fw, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.fz = and i64 %i.cu, 65535
  %i.ga = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.fz)
  %i.gb = sub nsw i64 0, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %i.fy, i64 %i.gb
  store <2 x i64> %12, ptr %i.gc, align 1, !tbaa !36
  %i.gd = xor i64 %i.ct, -1
  %i.ge = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gd)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.41.0614.i, i64 %i.ge ; 4 uses
  %i.gg = xor i64 %i.cg, -1
  %i.gh = and i64 %i.cr, %i.gg                    ; 11 uses
  %i.gi = lshr i64 %i.gh, 32                      ; 2 uses
  %i.gj = lshr i64 %i.gh, 8
  %i.gk = lshr i64 %i.gh, 16
  %i.gl = lshr i64 %i.gh, 24
  %i.gm = and i64 %i.gl, 255
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !40
  %i.gp = and i64 %i.gk, 255                      ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !40
  %i.gs = and i64 %i.gj, 255
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !40
  %i.gv = and i64 %i.gh, 255                      ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !40
  %i.gy = insertelement <4 x i64> poison, i64 %i.gx, i64 0
  %i.gz = insertelement <4 x i64> %i.gy, i64 %i.gu, i64 1
  %i.ha = insertelement <4 x i64> %i.gz, i64 %i.gr, i64 2
  %i.hb = insertelement <4 x i64> %i.ha, i64 %i.go, i64 3
  %i.hc = bitcast <4 x i64> %i.hb to <32 x i8>
  %i.hd = add <32 x i8> %i.hc, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.he = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.h, <32 x i8> %i.hd)
  %i.hf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.gv
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !36
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.gp
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !36
  %i.hk = zext i8 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hh, 3
  %i.hm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.hl
  %13 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !36
  %i.hn = shl nuw nsw i64 %i.hk, 3
  %i.ho = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.hn
  %14 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !36
  %15 = shufflevector <2 x i64> %13, <2 x i64> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hp = bitcast <4 x i64> %15 to <32 x i8>
  %i.hq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.he, <32 x i8> %i.hp)
  %i.hr = bitcast <32 x i8> %i.hq to <4 x i64>    ; 2 uses
  %i.hs = shufflevector <4 x i64> %i.hr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.hs, ptr %i.gf, align 1, !tbaa !36
  %16 = shufflevector <4 x i64> %i.hr, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.hu = and i64 %i.gh, 65535
  %i.hv = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.hu)
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.ht, i64 %i.hw
  store <2 x i64> %16, ptr %i.hx, align 1, !tbaa !36
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.hz = and i64 %i.gh, 4294967295
  %i.ia = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.hz)
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds i8, ptr %i.hy, i64 %i.ib ; 2 uses
  %i.id = lshr i64 %i.gh, 40
  %i.ie = lshr i64 %i.gh, 48
  %i.if = lshr i64 %i.gh, 56
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.if
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !40
  %i.ii = and i64 %i.ie, 255                      ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ii
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !40
  %i.il = and i64 %i.id, 255
  %i.im = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.il
  %i.in = load i64, ptr %i.im, align 8, !tbaa !40
  %i.io = and i64 %i.gi, 255                      ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !40
  %i.ir = insertelement <4 x i64> poison, i64 %i.iq, i64 0
  %i.is = insertelement <4 x i64> %i.ir, i64 %i.in, i64 1
  %i.it = insertelement <4 x i64> %i.is, i64 %i.ik, i64 2
  %i.iu = insertelement <4 x i64> %i.it, i64 %i.ih, i64 3
  %i.iv = bitcast <4 x i64> %i.iu to <32 x i8>
  %i.iw = add <32 x i8> %i.iv, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.ix = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.j, <32 x i8> %i.iw)
  %i.iy = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.io
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !36
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.ii
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !36
  %i.jd = zext i8 %i.jc to i64
  %i.je = shl nuw nsw i64 %i.ja, 3
  %i.jf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.je
  %17 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !36
  %i.jg = shl nuw nsw i64 %i.jd, 3
  %i.jh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.jg
  %18 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !36
  %19 = shufflevector <2 x i64> %17, <2 x i64> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ji = bitcast <4 x i64> %19 to <32 x i8>
  %i.jj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ix, <32 x i8> %i.ji)
  %i.jk = bitcast <32 x i8> %i.jj to <4 x i64>    ; 2 uses
  %i.jl = shufflevector <4 x i64> %i.jk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.jl, ptr %i.ic, align 1, !tbaa !36
  %20 = shufflevector <4 x i64> %i.jk, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.jn = and i64 %i.gi, 65535
  %i.jo = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.jn)
  %i.jp = sub nsw i64 0, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %i.jm, i64 %i.jp
  store <2 x i64> %20, ptr %i.jq, align 1, !tbaa !36
  %i.jr = xor i64 %i.gh, -1
  %i.js = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jr)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.js ; 2 uses
  %i.ju = add nuw i64 %.sroa.11.0612.i, 128       ; 3 uses
  %i.jv = icmp ult i64 %i.ju, %spec.select.i.i
  br i1 %i.jv, label %.noexc47.i, label %._crit_edge.i, !llvm.loop !197

._crit_edge.i:                                    ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, %bb.a
  %.sroa.11.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ju, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.12.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.41.0.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.jt, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.32.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ch, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.jw = icmp eq i64 %2, %.sroa.11.0.lcssa.i
  br i1 %i.jw, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit, label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i
  %i.jy = sub i64 %2, %.sroa.11.0.lcssa.i         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.jx, i64 %i.jy, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %.0..0..0..0..0.608.i = load <32 x i8>, ptr %i.a, align 16, !tbaa !36 ; 5 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32.609.i = load <32 x i8>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !36 ; 5 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64.610.i = load <32 x i8>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !36 ; 5 uses
  %.96..96..96..96..96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.96..96..96..96..96.611.i = load <32 x i8>, ptr %.96..96..96..96..96..sroa_idx, align 16, !tbaa !36 ; 5 uses
  %i.jz = icmp eq <32 x i8> %.0..0..0..0..0.608.i, splat (i8 92)
  %i.ka = icmp eq <32 x i8> %.32..32..32..32..32.609.i, splat (i8 92)
  %i.kb = bitcast <32 x i1> %i.jz to i32
  %i.kc = zext i32 %i.kb to i64
  %i.kd = bitcast <32 x i1> %i.ka to i32
  %i.ke = sext i32 %i.kd to i64
  %i.kf = shl nsw i64 %i.ke, 32                   ; 2 uses
  %i.kg = or disjoint i64 %i.kf, %i.kc            ; 3 uses
  %.not.i119.i = icmp eq i64 %i.kg, 0
  br i1 %.not.i119.i, label %.noexc43.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.kh = xor i64 %.sroa.12.0.lcssa.i, -1
  %i.ki = and i64 %i.kg, %i.kh                    ; 2 uses
  %i.kj = shl i64 %i.ki, 1
  %i.kk = or i64 %i.kj, -6148914691236517206
  %i.kl = sub i64 %i.kk, %i.ki
  %i.km = xor i64 %i.kl, -6148914691236517206     ; 2 uses
  %i.kn = or i64 %i.kg, %.sroa.12.0.lcssa.i
  %i.ko = xor i64 %i.km, %i.kn
  %i.kp = and i64 %i.km, %i.kf
  %i.kq = lshr i64 %i.kp, 63
  br label %.noexc43.i

.noexc43.i:                                       ; preds = %bb.d, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.3.i = phi i64 [ %i.kq, %bb.d ], [ 0, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i120.i = phi i64 [ %i.ko, %bb.d ], [ %.sroa.12.0.lcssa.i, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.kr = icmp eq <32 x i8> %.0..0..0..0..0.608.i, splat (i8 34)
  %i.ks = icmp eq <32 x i8> %.32..32..32..32..32.609.i, splat (i8 34)
  %i.kt = bitcast <32 x i1> %i.kr to i32
  %i.ku = zext i32 %i.kt to i64
  %i.kv = bitcast <32 x i1> %i.ks to i32
  %i.kw = sext i32 %i.kv to i64
  %i.kx = shl nsw i64 %i.kw, 32
  %i.ky = or disjoint i64 %i.kx, %i.ku
  %i.kz = xor i64 %.sroa.0.0.i120.i, -1
  %i.la = and i64 %i.ky, %i.kz
  %i.lb = insertelement <2 x i64> poison, i64 %i.la, i64 0
  %i.lc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lb, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.ld = extractelement <2 x i64> %i.lc, i64 0
  %i.le = xor i64 %i.ld, %.sroa.32.0.lcssa.i      ; 2 uses
  %i.lf = ashr i64 %i.le, 63
  %i.lg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %.0..0..0..0..0.608.i)
  %i.lh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %.32..32..32..32..32.609.i)
  %i.li = icmp eq <32 x i8> %.0..0..0..0..0.608.i, %i.lg
  %i.lj = icmp eq <32 x i8> %.32..32..32..32..32.609.i, %i.lh
  %i.lk = bitcast <32 x i1> %i.li to i32
  %i.ll = zext i32 %i.lk to i64
  %i.lm = bitcast <32 x i1> %i.lj to i32
  %i.ln = sext i32 %i.lm to i64
  %i.lo = shl nsw i64 %i.ln, 32
  %i.lp = or disjoint i64 %i.lo, %i.ll
  %i.lq = icmp eq <32 x i8> %.64..64..64..64..64.610.i, splat (i8 92)
  %i.lr = icmp eq <32 x i8> %.96..96..96..96..96.611.i, splat (i8 92)
  %i.ls = bitcast <32 x i1> %i.lq to i32
  %i.lt = zext i32 %i.ls to i64
  %i.lu = bitcast <32 x i1> %i.lr to i32
  %i.lv = sext i32 %i.lu to i64
  %i.lw = shl nsw i64 %i.lv, 32
  %i.lx = or disjoint i64 %i.lw, %i.lt            ; 4 uses
  %.not.i113.i = icmp eq i64 %i.lx, 0
  br i1 %.not.i113.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc43.i
  %i.ly = xor i64 %.sroa.12.3.i, -1
  %i.lz = and i64 %i.lx, %i.ly
  %i.ma = shl i64 %i.lx, 1
  %i.mb = or i64 %i.ma, -6148914691236517206
  %i.mc = sub i64 %i.mb, %i.lz
  %i.md = or i64 %.sroa.12.3.i, %i.lx
  %i.me = xor i64 %i.md, %i.mc
  %i.mf = xor i64 %i.me, -6148914691236517206
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %bb.e, %.noexc43.i
  %.sroa.0.0.i114.i = phi i64 [ %i.mf, %bb.e ], [ %.sroa.12.3.i, %.noexc43.i ]
  %i.mg = icmp eq <32 x i8> %.64..64..64..64..64.610.i, splat (i8 34)
  %i.mh = icmp eq <32 x i8> %.96..96..96..96..96.611.i, splat (i8 34)
  %i.mi = bitcast <32 x i1> %i.mg to i32
  %i.mj = zext i32 %i.mi to i64
  %i.mk = bitcast <32 x i1> %i.mh to i32
  %i.ml = sext i32 %i.mk to i64
  %i.mm = shl nsw i64 %i.ml, 32
  %i.mn = or disjoint i64 %i.mm, %i.mj
  %i.mo = xor i64 %.sroa.0.0.i114.i, -1
  %i.mp = and i64 %i.mn, %i.mo
  %i.mq = insertelement <2 x i64> poison, i64 %i.mp, i64 0
  %i.mr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.mq, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.ms = extractelement <2 x i64> %i.mr, i64 0
  %i.mt = xor i64 %i.ms, %i.lf                    ; 2 uses
  %i.mu = ashr i64 %i.mt, 63
  %i.mv = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %.64..64..64..64..64.610.i)
  %i.mw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %.96..96..96..96..96.611.i)
  %i.mx = icmp eq <32 x i8> %.64..64..64..64..64.610.i, %i.mv
  %i.my = icmp eq <32 x i8> %.96..96..96..96..96.611.i, %i.mw
  %i.mz = bitcast <32 x i1> %i.mx to i32
  %i.na = zext i32 %i.mz to i64
  %i.nb = bitcast <32 x i1> %i.my to i32
  %i.nc = sext i32 %i.nb to i64
  %i.nd = shl nsw i64 %i.nc, 32
  %i.ne = or disjoint i64 %i.nd, %i.na
  %i.nf = xor i64 %i.le, -1
  %i.ng = and i64 %i.lp, %i.nf                    ; 11 uses
  %i.nh = lshr i64 %i.ng, 32                      ; 2 uses
  %i.ni = lshr i64 %i.ng, 8
  %i.nj = lshr i64 %i.ng, 16
  %i.nk = lshr i64 %i.ng, 24
  %i.nl = and i64 %i.nk, 255
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !40
  %i.no = and i64 %i.nj, 255                      ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !40
  %i.nr = and i64 %i.ni, 255
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.nr
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !40
  %i.nu = and i64 %i.ng, 255                      ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !40
  %i.nx = insertelement <4 x i64> poison, i64 %i.nw, i64 0
  %i.ny = insertelement <4 x i64> %i.nx, i64 %i.nt, i64 1
  %i.nz = insertelement <4 x i64> %i.ny, i64 %i.nq, i64 2
  %i.oa = insertelement <4 x i64> %i.nz, i64 %i.nn, i64 3
  %i.ob = bitcast <4 x i64> %i.oa to <32 x i8>
  %i.oc = add <32 x i8> %i.ob, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.od = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %.0..0..0..0..0.608.i, <32 x i8> %i.oc)
  %i.oe = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.nu
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !36
  %i.og = zext i8 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.no
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !36
  %i.oj = zext i8 %i.oi to i64
  %i.ok = shl nuw nsw i64 %i.og, 3
  %i.ol = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.ok
  %21 = load <2 x i64>, ptr %i.ol, align 8, !tbaa !36
  %i.om = shl nuw nsw i64 %i.oj, 3
  %i.on = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.om
  %22 = load <2 x i64>, ptr %i.on, align 8, !tbaa !36
  %23 = shufflevector <2 x i64> %21, <2 x i64> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oo = bitcast <4 x i64> %23 to <32 x i8>
  %i.op = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.od, <32 x i8> %i.oo)
  %i.oq = bitcast <32 x i8> %i.op to <4 x i64>    ; 2 uses
  %i.or = shufflevector <4 x i64> %i.oq, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.or, ptr %i.b, align 16, !tbaa !36
  %24 = shufflevector <4 x i64> %i.oq, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.os = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ot = and i64 %i.ng, 65535
  %i.ou = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.ot)
  %i.ov = sub nsw i64 0, %i.ou
  %i.ow = getelementptr inbounds i8, ptr %i.os, i64 %i.ov
  store <2 x i64> %24, ptr %i.ow, align 1, !tbaa !36
  %i.ox = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.oy = and i64 %i.ng, 4294967295
  %i.oz = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.oy)
  %i.pa = sub nsw i64 0, %i.oz
  %i.pb = getelementptr inbounds i8, ptr %i.ox, i64 %i.pa ; 2 uses
  %i.pc = lshr i64 %i.ng, 40
  %i.pd = lshr i64 %i.ng, 48
  %i.pe = lshr i64 %i.ng, 56
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !40
  %i.ph = and i64 %i.pd, 255                      ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ph
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !40
  %i.pk = and i64 %i.pc, 255
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.pk
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !40
  %i.pn = and i64 %i.nh, 255                      ; 2 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.pn
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !40
  %i.pq = insertelement <4 x i64> poison, i64 %i.pp, i64 0
  %i.pr = insertelement <4 x i64> %i.pq, i64 %i.pm, i64 1
  %i.ps = insertelement <4 x i64> %i.pr, i64 %i.pj, i64 2
  %i.pt = insertelement <4 x i64> %i.ps, i64 %i.pg, i64 3
  %i.pu = bitcast <4 x i64> %i.pt to <32 x i8>
  %i.pv = add <32 x i8> %i.pu, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.pw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %.32..32..32..32..32.609.i, <32 x i8> %i.pv)
  %i.px = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.pn
  %i.py = load i8, ptr %i.px, align 1, !tbaa !36
  %i.pz = zext i8 %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.ph
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !36
  %i.qc = zext i8 %i.qb to i64
  %i.qd = shl nuw nsw i64 %i.pz, 3
  %i.qe = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.qd
  %25 = load <2 x i64>, ptr %i.qe, align 8, !tbaa !36
  %i.qf = shl nuw nsw i64 %i.qc, 3
  %i.qg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.qf
  %26 = load <2 x i64>, ptr %i.qg, align 8, !tbaa !36
  %27 = shufflevector <2 x i64> %25, <2 x i64> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qh = bitcast <4 x i64> %27 to <32 x i8>
  %i.qi = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.pw, <32 x i8> %i.qh)
  %i.qj = bitcast <32 x i8> %i.qi to <4 x i64>    ; 2 uses
  %i.qk = shufflevector <4 x i64> %i.qj, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qk, ptr %i.pb, align 1, !tbaa !36
  %28 = shufflevector <4 x i64> %i.qj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.qm = and i64 %i.nh, 65535
  %i.qn = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.qm)
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = getelementptr inbounds i8, ptr %i.ql, i64 %i.qo
  store <2 x i64> %28, ptr %i.qp, align 1, !tbaa !36
  %i.qq = xor i64 %i.ng, -1
  %i.qr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.qq) ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qr ; 3 uses
  %i.qt = xor i64 %i.mt, -1
  %i.qu = and i64 %i.ne, %i.qt                    ; 11 uses
  %i.qv = lshr i64 %i.qu, 32                      ; 2 uses
  %i.qw = lshr i64 %i.qu, 8
  %i.qx = lshr i64 %i.qu, 16
  %i.qy = lshr i64 %i.qu, 24
  %i.qz = and i64 %i.qy, 255
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.qz
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !40
  %i.rc = and i64 %i.qx, 255                      ; 2 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.rc
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !40
  %i.rf = and i64 %i.qw, 255
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.rf
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !40
  %i.ri = and i64 %i.qu, 255                      ; 2 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ri
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !40
  %i.rl = insertelement <4 x i64> poison, i64 %i.rk, i64 0
  %i.rm = insertelement <4 x i64> %i.rl, i64 %i.rh, i64 1
  %i.rn = insertelement <4 x i64> %i.rm, i64 %i.re, i64 2
  %i.ro = insertelement <4 x i64> %i.rn, i64 %i.rb, i64 3
  %i.rp = bitcast <4 x i64> %i.ro to <32 x i8>
  %i.rq = add <32 x i8> %i.rp, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.rr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %.64..64..64..64..64.610.i, <32 x i8> %i.rq)
  %i.rs = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.ri
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !36
  %i.ru = zext i8 %i.rt to i64
  %i.rv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.rc
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !36
  %i.rx = zext i8 %i.rw to i64
  %i.ry = shl nuw nsw i64 %i.ru, 3
  %i.rz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.ry
  %29 = load <2 x i64>, ptr %i.rz, align 8, !tbaa !36
  %i.sa = shl nuw nsw i64 %i.rx, 3
  %i.sb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.sa
  %30 = load <2 x i64>, ptr %i.sb, align 8, !tbaa !36
  %31 = shufflevector <2 x i64> %29, <2 x i64> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sc = bitcast <4 x i64> %31 to <32 x i8>
  %i.sd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.rr, <32 x i8> %i.sc)
  %i.se = bitcast <32 x i8> %i.sd to <4 x i64>    ; 2 uses
  %i.sf = shufflevector <4 x i64> %i.se, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.sf, ptr %i.qs, align 1, !tbaa !36
  %32 = shufflevector <4 x i64> %i.se, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.sh = and i64 %i.qu, 65535
  %i.si = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.sh)
  %i.sj = sub nsw i64 0, %i.si
  %i.sk = getelementptr inbounds i8, ptr %i.sg, i64 %i.sj
  store <2 x i64> %32, ptr %i.sk, align 1, !tbaa !36
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.sm = and i64 %i.qu, 4294967295
  %i.sn = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.sm)
  %i.so = sub nsw i64 0, %i.sn
  %i.sp = getelementptr inbounds i8, ptr %i.sl, i64 %i.so ; 2 uses
  %i.sq = lshr i64 %i.qu, 40
  %i.sr = lshr i64 %i.qu, 48
  %i.ss = lshr i64 %i.qu, 56
  %i.st = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ss
  %i.su = load i64, ptr %i.st, align 8, !tbaa !40
  %i.sv = and i64 %i.sr, 255                      ; 2 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.sv
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !40
  %i.sy = and i64 %i.sq, 255
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !40
  %i.tb = and i64 %i.qv, 255                      ; 2 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.tb
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !40
  %i.te = insertelement <4 x i64> poison, i64 %i.td, i64 0
  %i.tf = insertelement <4 x i64> %i.te, i64 %i.ta, i64 1
  %i.tg = insertelement <4 x i64> %i.tf, i64 %i.sx, i64 2
  %i.th = insertelement <4 x i64> %i.tg, i64 %i.su, i64 3
  %i.ti = bitcast <4 x i64> %i.th to <32 x i8>
  %i.tj = add <32 x i8> %i.ti, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.tk = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %.96..96..96..96..96.611.i, <32 x i8> %i.tj)
  %i.tl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.tb
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !36
  %i.tn = zext i8 %i.tm to i64
  %i.to = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.sv
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !36
  %i.tq = zext i8 %i.tp to i64
  %i.tr = shl nuw nsw i64 %i.tn, 3
  %i.ts = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.tr
  %33 = load <2 x i64>, ptr %i.ts, align 8, !tbaa !36
  %i.tt = shl nuw nsw i64 %i.tq, 3
  %i.tu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.tt
  %34 = load <2 x i64>, ptr %i.tu, align 8, !tbaa !36
  %35 = shufflevector <2 x i64> %33, <2 x i64> %34, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tv = bitcast <4 x i64> %35 to <32 x i8>
  %i.tw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.tk, <32 x i8> %i.tv)
  %i.tx = bitcast <32 x i8> %i.tw to <4 x i64>    ; 2 uses
  %i.ty = shufflevector <4 x i64> %i.tx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ty, ptr %i.sp, align 1, !tbaa !36
  %36 = shufflevector <4 x i64> %i.tx, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.ua = and i64 %i.qv, 65535
  %i.ub = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.ua)
  %i.uc = sub nsw i64 0, %i.ub
  %i.ud = getelementptr inbounds i8, ptr %i.tz, i64 %i.uc
  store <2 x i64> %36, ptr %i.ud, align 1, !tbaa !36
  %i.ue = xor i64 %i.qu, -1
  %i.uf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ue)
  %i.ug = add nuw nsw i64 %i.uf, %i.qr
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ug, i64 %i.jy) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.41.0.lcssa.i, ptr nonnull align 16 %i.b, i64 %spec.select.i, i1 false)
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.41.0.lcssa.i, i64 %spec.select.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit

_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit: ; preds = %._crit_edge.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.41.1.i = phi ptr [ %.sroa.41.0.lcssa.i, %._crit_edge.i ], [ %i.uh, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ]
  %.sroa.32.1.i = phi i64 [ %.sroa.32.0.lcssa.i, %._crit_edge.i ], [ %i.mu, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ]
  %.not.i190.i = icmp eq i64 %.sroa.32.1.i, 0     ; 2 uses
  %i.ui = ptrtoint ptr %.sroa.41.1.i to i64
  %i.uj = ptrtoint ptr %3 to i64
  %i.uk = sub i64 %i.ui, %i.uj
  %storemerge.i.i = select i1 %.not.i190.i, i64 %i.uk, i64 0
  %.0.i15.i = select i1 %.not.i190.i, i32 0, i32 15
  store i64 %storemerge.i.i, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0.i15.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %2, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !107
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %bb.b, !prof !108

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ne i32 %3, 0                     ; 2 uses
  br i1 %.not.i, label %bb.d, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %2, 3
  br i1 %i.h, label %bb.e, label %bb.i, !prof !108

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %2, 2
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36
  %i.l = icmp ugt i8 %i.k, -65
  br i1 %i.l, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %1, align 1, !tbaa !36
  %i.n = icmp ugt i8 %i.m, -33
  br i1 %i.n, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i

bb.h:                                             ; preds = %bb.e
  %i.o = load i8, ptr %1, align 1, !tbaa !36
  %i.p = icmp ugt i8 %i.o, -65
  br i1 %i.p, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i

bb.i:                                             ; preds = %bb.d
  %i.q = add i64 %2, -1                           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !36
  %i.t = icmp ugt i8 %i.s, -65
  br i1 %i.t, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add i64 %2, -2                           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !36
  %i.x = icmp ugt i8 %i.w, -33
  br i1 %i.x, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = add i64 %2, -3                           ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !36
  %i.ab = icmp ugt i8 %i.aa, -17
  br i1 %i.ab, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i: ; preds = %bb.k
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i: ; preds = %bb.h, %bb.g, %bb.f
  %.013.ph.i = phi i64 [ 1, %bb.f ], [ 1, %bb.h ], [ 2, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109
  br label %._crit_edge.thread.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i: ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %bb.k, %bb.j, %bb.i, %bb.c
  %.013.i = phi i64 [ %i.y, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ %2, %bb.c ], [ %2, %bb.k ], [ %i.q, %bb.i ], [ %i.u, %bb.j ] ; 5 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.013.i, i64 128)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !109 ; 3 uses
  %.not2308.i = icmp ult i64 %.013.i, 129
  br i1 %.not2308.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i
  %.sroa.32.02272.i = phi i64 [ %i.ek, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ 0, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.41638.02271.i = phi <4 x i64> [ %.sroa.41638.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ zeroinitializer, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.70.02270.i = phi <4 x i64> [ %.sroa.70.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ zeroinitializer, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.sroa.79.02269.i = phi <4 x i64> [ %.sroa.79.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ zeroinitializer, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.sroa.89.02268.i = phi ptr [ %.sroa.89.4.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ %i.ag, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 29 uses
  %.sroa.226.02267.i = phi i64 [ %i.xz, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ 0, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 5 uses
  %.sroa.236.02266.i = phi i64 [ %i.yc, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ 0, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.12.02265.i = phi i64 [ %.sroa.12.3.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ 0, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 3 uses
  %.sroa.0.02264.i = phi i64 [ %i.fo, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ 0, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.11.02261.i = phi i64 [ %i.yd, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i ], [ 0, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 30 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.02261.i ; 4 uses
  %i.ai = load <4 x i64>, ptr %i.ah, align 1, !tbaa !36 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ak = load <4 x i64>, ptr %i.aj, align 1, !tbaa !36 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.am = load <4 x i64>, ptr %i.al, align 1, !tbaa !36 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.ao = load <4 x i64>, ptr %i.an, align 1, !tbaa !36 ; 6 uses
  %i.ap = bitcast <4 x i64> %i.ai to <32 x i8>    ; 9 uses
  %i.aq = icmp eq <32 x i8> %i.ap, splat (i8 92)
  %i.ar = bitcast <4 x i64> %i.ak to <32 x i8>    ; 10 uses
  %i.as = icmp eq <32 x i8> %i.ar, splat (i8 92)
  %i.at = bitcast <32 x i1> %i.aq to i32
  %i.au = zext i32 %i.at to i64
  %i.av = bitcast <32 x i1> %i.as to i32
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 32                   ; 2 uses
  %i.ay = or disjoint i64 %i.ax, %i.au            ; 3 uses
  %.not.i68.i19.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i68.i19.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i20.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.az = xor i64 %.sroa.12.02265.i, -1
  %i.ba = and i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = shl i64 %i.ba, 1
  %i.bc = or i64 %i.bb, -6148914691236517206
  %i.bd = sub i64 %i.bc, %i.ba
  %i.be = xor i64 %i.bd, -6148914691236517206     ; 2 uses
  %i.bf = or i64 %i.ay, %.sroa.12.02265.i
  %i.bg = xor i64 %i.be, %i.bf
  %i.bh = and i64 %i.be, %i.ax
  %i.bi = lshr i64 %i.bh, 63
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i20.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i20.i: ; preds = %bb.l, %.lr.ph.i
  %.sroa.12.2.i = phi i64 [ %i.bi, %bb.l ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.0.0.i69.i21.i = phi i64 [ %i.bg, %bb.l ], [ %.sroa.12.02265.i, %.lr.ph.i ]
  %i.bj = icmp eq <32 x i8> %i.ap, splat (i8 34)
  %i.bk = icmp eq <32 x i8> %i.ar, splat (i8 34)
  %i.bl = bitcast <32 x i1> %i.bj to i32
  %i.bm = zext i32 %i.bl to i64
  %i.bn = bitcast <32 x i1> %i.bk to i32
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 32
  %i.bq = or disjoint i64 %i.bp, %i.bm
  %i.br = xor i64 %.sroa.0.0.i69.i21.i, -1
  %i.bs = and i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.bu = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bt, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.bv = extractelement <2 x i64> %i.bu, i64 0
  %i.bw = xor i64 %i.bv, %.sroa.32.02272.i        ; 3 uses
  %i.bx = ashr i64 %i.bw, 63
  %i.by = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.ap)
  %i.bz = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.ar)
  %i.ca = icmp eq <32 x i8> %i.by, %i.ap
  %i.cb = icmp eq <32 x i8> %i.bz, %i.ar
  %i.cc = bitcast <32 x i1> %i.ca to i32
  %i.cd = zext i32 %i.cc to i64
  %i.ce = bitcast <32 x i1> %i.cb to i32
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 32
  %i.ch = or disjoint i64 %i.cg, %i.cd
  %i.ci = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.ap)
  %i.cj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.ar)
  %i.ck = bitcast <4 x i64> %i.ai to <32 x i8>
  %i.cl = or <32 x i8> %i.ck, splat (i8 32)
  %i.cm = icmp eq <32 x i8> %i.cl, %i.ci
  %i.cn = bitcast <4 x i64> %i.ak to <32 x i8>
  %i.co = or <32 x i8> %i.cn, splat (i8 32)
  %i.cp = icmp eq <32 x i8> %i.co, %i.cj
  %i.cq = bitcast <32 x i1> %i.cm to i32
  %i.cr = zext i32 %i.cq to i64
  %i.cs = bitcast <32 x i1> %i.cp to i32
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 32
  %i.cv = or disjoint i64 %i.cu, %i.cr            ; 2 uses
  %i.cw = or i64 %i.cv, %i.ch
  %i.cx = xor i64 %i.cw, -1                       ; 2 uses
  %i.cy = xor i64 %i.bs, -1
  %i.cz = and i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = shl i64 %i.cz, 1
  %i.db = or disjoint i64 %i.da, %.sroa.0.02264.i
end_hunk_0
