Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8simdjson8westmere25dom_parser_implementation19parse_wobbly_stringEPKhPh:bb.a
  %i.cl = add nsw i32 %i.ck, -56557568
  %i.cm = or disjoint i32 %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.co = icmp ult i32 %i.ax, 128
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cp = trunc nuw nsw i32 %i.ax to i8
  store i8 %i.cp, ptr %i.x, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.cq = icmp ult i32 %i.ax, 2048
  br i1 %i.cq, label %bb.j, label %.thread87

bb.j:                                             ; preds = %bb.i
  %i.cr = lshr i32 %i.ax, 6
  %i.cs = trunc nuw nsw i32 %i.cr to i8
  %i.ct = or disjoint i8 %i.cs, -64
  store i8 %i.ct, ptr %i.x, align 1, !tbaa !36
  %i.cu = trunc i32 %i.ax to i8
  %i.cv = and i8 %i.cu, 63
  %i.cw = or disjoint i8 %i.cv, -128
  %i.cx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

.thread87:                                        ; preds = %bb.i
  %i.cy = icmp ult i32 %i.ax, 65536
  br i1 %i.cy, label %.thread87.thread, label %bb.k

.thread87.thread:                                 ; preds = %bb.e, %bb.f, %.thread87
  %i.cz = lshr i32 %i.ax, 12
  %i.da = trunc nuw nsw i32 %i.cz to i8
  %i.db = or disjoint i8 %i.da, -32
  store i8 %i.db, ptr %i.x, align 1, !tbaa !36
  %i.dc = lshr i32 %i.ax, 6
  %i.dd = trunc i32 %i.dc to i8
  %i.de = and i8 %i.dd, 63
  %i.df = or disjoint i8 %i.de, -128
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !36
  %i.dh = trunc i32 %i.ax to i8
  %i.di = and i8 %i.dh, 63
  %i.dj = or disjoint i8 %i.di, -128
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

bb.k:                                             ; preds = %.thread87
  %i.dl = icmp ult i32 %i.ax, 1114112
  br i1 %i.dl, label %bb.l, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit

bb.l:                                             ; preds = %.thread126, %bb.k
  %.58591124130 = phi ptr [ %i.cn, %.thread126 ], [ %i.ay, %bb.k ]
  %.2.i288690125129 = phi i32 [ %i.cm, %.thread126 ], [ %i.ax, %bb.k ] ; 4 uses
  %i.dm = lshr i32 %.2.i288690125129, 6
  %i.dn = lshr i32 %.2.i288690125129, 12
  %i.do = lshr i32 %.2.i288690125129, 18
  %i.dp = trunc i32 %.2.i288690125129 to i8
  %i.dq = trunc i32 %i.dm to i8
  %i.dr = trunc i32 %i.dn to i8
  %i.ds = trunc nsw i32 %i.do to i8
  %i.dt = insertelement <4 x i8> poison, i8 %i.ds, i64 0
  %i.du = insertelement <4 x i8> %i.dt, i8 %i.dr, i64 1
  %i.dv = insertelement <4 x i8> %i.du, i8 %i.dq, i64 2
  %i.dw = insertelement <4 x i8> %i.dv, i8 %i.dp, i64 3
  %i.dx = and <4 x i8> %i.dw, <i8 -1, i8 63, i8 63, i8 63>
  %i.dy = or disjoint <4 x i8> %i.dx, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.dy, ptr %i.x, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread: ; preds = %bb.h, %bb.j, %.thread87.thread, %bb.l
  %.584.ph = phi ptr [ %.58591124130, %bb.l ], [ %i.ay, %.thread87.thread ], [ %i.ay, %bb.j ], [ %i.ay, %bb.h ]
  %.0.i.i.ph = phi i64 [ 4, %bb.l ], [ 3, %.thread87.thread ], [ 2, %bb.j ], [ 1, %bb.h ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i.i.ph
  br label %.noexc.backedge

bb.m:                                             ; preds = %bb.c
  %i.ea = zext i8 %i.u to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !36  ; 2 uses
  %.not.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 %i.q
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %.077, i64 %i.q
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.s
  br label %.noexc.backedge

.noexc.backedge:                                  ; preds = %bb.n, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread, %bb.o
  %.077.be = phi ptr [ %.584.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread ], [ %i.eh, %bb.o ], [ %i.ef, %bb.n ]
  %.0.be = phi ptr [ %i.dz, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread ], [ %i.ei, %bb.o ], [ %i.eg, %bb.n ]
  br label %.noexc

bb.o:                                             ; preds = %bb.b
  %i.eh = getelementptr inbounds nuw i8, ptr %.077, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 32
  br label %.noexc.backedge

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit: ; preds = %bb.m, %bb.k, %.noexc2
  %.5.i.ph = phi ptr [ %i.o, %.noexc2 ], [ null, %bb.k ], [ null, %bb.m ]
  ret ptr %.5.i.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson8westmere25dom_parser_implementation5parseEPKhmRNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #20 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #41 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK8simdjson8fallback14implementation32create_dom_parser_implementationEmmRSt10unique_ptrINS_8internal25dom_parser_implementationESt14default_deleteIS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(96) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 96, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8simdjson8fallback25dom_parser_implementationE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !88     ; 3 uses
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZN8simdjson8fallback25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.simdjson::fallback::(anonymous namespace)::stage1::structural_scanner", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %2, ptr %i.b, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef nonnull align 8 dereferenceable(256) @constinit, i64 256, i1 false), !tbaa.struct !217
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 12 uses
  %i.e = trunc i64 %2 to i32                      ; 16 uses
  %.not182 = icmp eq i32 %i.e, 0
  br i1 %.not182, label %._crit_edge140, label %.noexc.preheader.lr.ph

.noexc.preheader.lr.ph:                           ; preds = %bb.a
  %i.f = icmp ne i32 %3, 0
  %.not83 = icmp eq i32 %3, 0
  %i.g = and i64 %2, 4294967295                   ; 5 uses
  %i.h = add i32 %i.e, -1
  br label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.preheader.lr.ph, %.critedge.i
  %i.i = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.ej, %.critedge.i ] ; 6 uses
  %.08.i139 = phi i8 [ 0, %.noexc.preheader.lr.ph ], [ %.1.i, %.critedge.i ] ; 6 uses
  %i.j = phi ptr [ %i.d, %.noexc.preheader.lr.ph ], [ %i.em, %.critedge.i ] ; 4 uses
  %i.k = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.en, %.critedge.i ] ; 2 uses
  %i.l = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.ek, %.critedge.i ] ; 7 uses
  %i.m = zext i32 %i.k to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !36
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !36
  %i.s = and i8 %i.r, 1
  %.not97 = icmp eq i8 %i.s, 0
  br i1 %.not97, label %.noexc._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc.preheader
  %indvars.iv.next235 = add nuw nsw i64 %i.m, 1   ; 3 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next235, %i.g
  br i1 %i.t, label %.noexc.lr.ph, label %._crit_edge, !llvm.loop !211

.noexc.lr.ph:                                     ; preds = %.lr.ph.preheader
  br label %.noexc, !llvm.loop !211

.noexc:                                           ; preds = %.noexc.lr.ph, %.lr.ph
  %indvars.iv.next236 = phi i64 [ %indvars.iv.next235, %.noexc.lr.ph ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next236
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !36
  %i.z = and i8 %i.y, 1
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %.noexc._crit_edge.loopexit, label %.lr.ph, !llvm.loop !211

.lr.ph:                                           ; preds = %.noexc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next236, 1 ; 3 uses
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.aa, label %.noexc, label %.lr.ph.._crit_edge_crit_edge, !llvm.loop !211

.lr.ph.._crit_edge_crit_edge:                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph.._crit_edge_crit_edge, %.lr.ph.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %.lr.ph.._crit_edge_crit_edge ], [ %indvars.iv.next235, %.lr.ph.preheader ]
  %i.ab = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %.noexc._crit_edge, !llvm.loop !211

.noexc._crit_edge.loopexit:                       ; preds = %.noexc
  %i.ac = trunc nuw i64 %indvars.iv.next236 to i32
  br label %.noexc._crit_edge

.noexc._crit_edge:                                ; preds = %.noexc._crit_edge.loopexit, %._crit_edge, %.noexc.preheader
  %i.ad = phi i32 [ %i.ab, %._crit_edge ], [ %i.k, %.noexc.preheader ], [ %i.ac, %.noexc._crit_edge.loopexit ] ; 8 uses
  %.not.i = icmp ult i32 %i.ad, %i.e
  br i1 %.not.i, label %bb.b, label %._crit_edge140.loopexit

bb.b:                                             ; preds = %.noexc._crit_edge
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !36  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 34
  br i1 %i.ah, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  store i32 %i.ad, ptr %i.j, align 4, !tbaa !37
  %i.ai = add nuw i32 %i.ad, 1                    ; 3 uses
  %i.aj = icmp ult i32 %i.ai, %i.e
  br i1 %i.aj, label %.preheader87, label %.noexc3

.preheader87:                                     ; preds = %bb.c, %.noexc7
  %i.ak = phi i32 [ %7, %.noexc7 ], [ %i.l, %bb.c ] ; 11 uses
  %i.al = phi i32 [ %8, %.noexc7 ], [ %i.ai, %bb.c ] ; 2 uses
  %i.am = phi i32 [ %6, %.noexc7 ], [ %i.i, %bb.c ] ; 11 uses
  %i.an = zext i32 %i.al to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !36
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !36
  %i.at = and i8 %i.as, 12
  %.not82111 = icmp eq i8 %i.at, 0
  br i1 %.not82111, label %.lr.ph112.preheader, label %._crit_edge116

.lr.ph112.preheader:                              ; preds = %.preheader87
  %indvars.iv.next194242 = add nuw nsw i64 %i.an, 1 ; 3 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next194242, %i.g
  br i1 %i.au, label %.lr.ph244, label %._crit_edge113, !llvm.loop !212

.lr.ph244:                                        ; preds = %.lr.ph112.preheader
  br label %bb.d, !llvm.loop !212

bb.d:                                             ; preds = %.lr.ph244, %.lr.ph112
  %indvars.iv.next194243 = phi i64 [ %indvars.iv.next194242, %.lr.ph244 ], [ %indvars.iv.next194, %.lr.ph112 ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next194243
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = and i8 %i.az, 12
  %.not82 = icmp eq i8 %i.ba, 0
  br i1 %.not82, label %.lr.ph112, label %._crit_edge116.loopexit, !llvm.loop !212

.lr.ph112:                                        ; preds = %bb.d
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv.next194243, 1 ; 3 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next194, %i.g
  br i1 %i.bb, label %bb.d, label %.lr.ph112.._crit_edge113_crit_edge, !llvm.loop !212

.lr.ph112.._crit_edge113_crit_edge:               ; preds = %.lr.ph112
  br label %._crit_edge113, !llvm.loop !212

._crit_edge113:                                   ; preds = %.lr.ph112.._crit_edge113_crit_edge, %.lr.ph112.preheader
  %indvars.iv.next194.lcssa = phi i64 [ %indvars.iv.next194, %.lr.ph112.._crit_edge113_crit_edge ], [ %indvars.iv.next194242, %.lr.ph112.preheader ]
  %i.bc = trunc nuw i64 %indvars.iv.next194.lcssa to i32
  br label %._crit_edge116, !llvm.loop !212

._crit_edge116.loopexit:                          ; preds = %bb.d
  %i.bd = trunc nuw i64 %indvars.iv.next194243 to i32
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.loopexit, %._crit_edge113, %.preheader87
  %i.be = phi i32 [ %i.bc, %._crit_edge113 ], [ %i.al, %.preheader87 ], [ %i.bd, %._crit_edge116.loopexit ] ; 19 uses
  %.not.i6 = icmp ult i32 %i.be, %i.e
  br i1 %.not.i6, label %bb.e, label %.noexc3

bb.e:                                             ; preds = %._crit_edge116
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36  ; 8 uses
  switch i8 %i.bh, label %bb.g [
    i8 34, label %.noexc3
    i8 92, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.bi = add i32 %i.be, 2
  br label %.noexc7

bb.g:                                             ; preds = %bb.e
  %.not4.i = icmp sgt i8 %i.bh, -1
  br i1 %.not4.i, label %bb.ac, label %bb.h, !prof !110

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i8 %i.bh to i32                    ; 3 uses
  %i.bk = and i32 %i.bj, 64
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.i, label %bb.j, !prof !108

bb.i:                                             ; preds = %bb.h
  %i.bm = add nuw i32 %i.be, 1
  br label %.noexc7

bb.j:                                             ; preds = %bb.h
  %i.bn = and i32 %i.bj, 32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %5 = add nuw i32 %i.be, 1                       ; 2 uses
  %i.bp = zext i32 %5 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !36
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %.noexc7, label %bb.l, !prof !108

bb.l:                                             ; preds = %bb.k
  %i.bt = icmp samesign ult i8 %i.bh, -62         ; 2 uses
  %spec.select168 = select i1 %i.bt, i32 11, i32 %i.am
  %spec.select169 = select i1 %i.bt, i32 11, i32 %i.ak
  %i.bu = add i32 %i.be, 2
  br label %.noexc7

bb.m:                                             ; preds = %bb.j
  %i.bv = and i32 %i.bj, 16
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bx = add i32 %i.be, 2                        ; 2 uses
  %i.by = icmp ugt i32 %i.bx, %i.e
  br i1 %i.by, label %.critedge2.i, label %bb.o, !prof !108

bb.o:                                             ; preds = %bb.n
  %i.bz = add nuw i32 %i.be, 1                    ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !36  ; 3 uses
  %i.cd = icmp slt i8 %i.cc, -64
  br i1 %i.cd, label %bb.p, label %.noexc7, !prof !110

bb.p:                                             ; preds = %bb.o
  %i.ce = zext i32 %i.bx to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !36
  %i.ch = icmp sgt i8 %i.cg, -65
  br i1 %i.ch, label %.noexc7, label %bb.q, !prof !108

.critedge2.i:                                     ; preds = %bb.n
  br i1 %.not83, label %.critedge2.i..critedge2.i.thread_crit_edge, label %.noexc3

.critedge2.i..critedge2.i.thread_crit_edge:       ; preds = %.critedge2.i
  %.pre = add nuw i32 %i.be, 1
  br label %.noexc7

bb.q:                                             ; preds = %bb.p
  switch i8 %i.bh, label %.thread [
    i8 -32, label %bb.r
    i8 -19, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = icmp samesign ult i8 %i.cc, -96         ; 2 uses
  %spec.select170 = select i1 %i.ci, i32 11, i32 %i.am
  %spec.select171 = select i1 %i.ci, i32 11, i32 %i.ak
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.cj = icmp samesign ugt i8 %i.cc, -97         ; 2 uses
  %spec.select172 = select i1 %i.cj, i32 11, i32 %i.am
  %spec.select173 = select i1 %i.cj, i32 11, i32 %i.ak
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.r, %bb.q
  %i.ck = phi i32 [ %spec.select170, %bb.r ], [ %spec.select172, %bb.s ], [ %i.am, %bb.q ]
  %i.cl = phi i32 [ %spec.select171, %bb.r ], [ %spec.select173, %bb.s ], [ %i.ak, %bb.q ]
  %i.cm = add i32 %i.be, 3
  br label %.noexc7

bb.t:                                             ; preds = %bb.m
  %i.cn = add i32 %i.be, 3                        ; 2 uses
  %i.co = icmp ugt i32 %i.cn, %i.e
  br i1 %i.co, label %.critedge4.i, label %bb.u, !prof !108

bb.u:                                             ; preds = %bb.t
  %i.cp = add nuw i32 %i.be, 1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !36  ; 3 uses
  %i.ct = icmp slt i8 %i.cs, -64
  br i1 %i.ct, label %bb.v, label %.critedge4.i, !prof !110

bb.v:                                             ; preds = %bb.u
  %i.cu = add i32 %i.be, 2
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !36
  %i.cy = icmp slt i8 %i.cx, -64
  br i1 %i.cy, label %bb.w, label %.critedge4.i, !prof !110

bb.w:                                             ; preds = %bb.v
  %i.cz = zext i32 %i.cn to i64
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !36
  %i.dc = icmp sgt i8 %i.db, -65
  br i1 %i.dc, label %.critedge4.i, label %bb.y, !prof !108

.critedge4.i:                                     ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.dd = add i32 %i.be, 2
  %i.de = icmp ugt i32 %i.dd, %i.e
  %or.cond = and i1 %i.f, %i.de
  br i1 %or.cond, label %.noexc3, label %bb.x

bb.x:                                             ; preds = %.critedge4.i
  %i.df = add nuw i32 %i.be, 1
  br label %.noexc7

bb.y:                                             ; preds = %bb.w
  switch i8 %i.bh, label %bb.ab [
    i8 -16, label %bb.z
    i8 -12, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.dg = icmp samesign ult i8 %i.cs, -112
  br label %.thread37

bb.aa:                                            ; preds = %bb.y
  %i.dh = icmp samesign ugt i8 %i.cs, -113
  br label %.thread37

bb.ab:                                            ; preds = %bb.y
  %i.di = icmp samesign ugt i8 %i.bh, -12
  br label %.thread37

.thread37:                                        ; preds = %bb.ab, %bb.aa, %bb.z
  %.sink226 = phi i1 [ %i.di, %bb.ab ], [ %i.dh, %bb.aa ], [ %i.dg, %bb.z ] ; 2 uses
  %spec.select178 = select i1 %.sink226, i32 11, i32 %i.am
  %spec.select179 = select i1 %.sink226, i32 11, i32 %i.ak
  %i.dj = add i32 %i.be, 4
  br label %.noexc7

bb.ac:                                            ; preds = %bb.g
  %i.dk = icmp samesign ult i8 %i.bh, 32          ; 2 uses
  %spec.select180 = select i1 %i.dk, i32 14, i32 %i.am
  %spec.select181 = select i1 %i.dk, i32 14, i32 %i.ak
  %i.dl = add nuw i32 %i.be, 1
  br label %.noexc7

.noexc7:                                          ; preds = %bb.p, %bb.o, %.critedge2.i..critedge2.i.thread_crit_edge, %bb.k, %bb.i, %bb.l, %.thread, %bb.x, %.thread37, %bb.ac, %bb.f
  %6 = phi i32 [ %spec.select180, %bb.ac ], [ %i.am, %bb.f ], [ 11, %bb.i ], [ %spec.select178, %.thread37 ], [ 11, %bb.x ], [ %spec.select168, %bb.l ], [ 11, %bb.k ], [ 11, %bb.o ], [ %i.ck, %.thread ], [ 11, %bb.p ], [ 11, %.critedge2.i..critedge2.i.thread_crit_edge ] ; 2 uses
  %7 = phi i32 [ %spec.select181, %bb.ac ], [ %i.ak, %bb.f ], [ 11, %bb.i ], [ %spec.select179, %.thread37 ], [ 11, %bb.x ], [ %spec.select169, %bb.l ], [ 11, %bb.k ], [ 11, %bb.o ], [ %i.cl, %.thread ], [ 11, %bb.p ], [ 11, %.critedge2.i..critedge2.i.thread_crit_edge ] ; 2 uses
  %8 = phi i32 [ %i.dl, %bb.ac ], [ %i.bi, %bb.f ], [ %i.bm, %bb.i ], [ %i.dj, %.thread37 ], [ %i.df, %bb.x ], [ %i.bu, %bb.l ], [ %5, %bb.k ], [ %i.bz, %bb.o ], [ %i.cm, %.thread ], [ %i.bz, %bb.p ], [ %.pre, %.critedge2.i..critedge2.i.thread_crit_edge ] ; 3 uses
  %i.dm = icmp ult i32 %8, %i.e
  br i1 %i.dm, label %.preheader87, label %.noexc3, !llvm.loop !213

.noexc3:                                          ; preds = %.critedge2.i, %.critedge4.i, %.noexc7, %._crit_edge116, %bb.e, %bb.c
  %.lcssa121 = phi i32 [ %i.i, %bb.c ], [ %i.am, %.critedge2.i ], [ %i.am, %.critedge4.i ], [ %i.am, %bb.e ], [ %i.am, %._crit_edge116 ], [ %6, %.noexc7 ]
  %.lcssa94 = phi i32 [ %i.l, %bb.c ], [ %i.ak, %.critedge2.i ], [ %i.ak, %.critedge4.i ], [ %i.ak, %bb.e ], [ %i.ak, %._crit_edge116 ], [ %7, %.noexc7 ]
  %9 = phi i32 [ %i.ai, %bb.c ], [ %i.e, %.critedge2.i ], [ %i.e, %.critedge4.i ], [ %i.be, %bb.e ], [ %i.be, %._crit_edge116 ], [ %8, %.noexc7 ]
  %.0.i = phi i8 [ 1, %bb.c ], [ 1, %.critedge2.i ], [ 1, %.critedge4.i ], [ 0, %bb.e ], [ 1, %._crit_edge116 ], [ 1, %.noexc7 ]
  %i.dn = or i8 %.0.i, %.08.i139
  br label %.critedge.i

bb.ad:                                            ; preds = %bb.b
  %i.do = zext i8 %i.ag to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !36
  %i.dr = and i8 %i.dq, 2
  %.not80 = icmp eq i8 %i.dr, 0
  store i32 %i.ad, ptr %i.j, align 4, !tbaa !37
  %i.ds = add nuw i32 %i.ad, 1
  %i.dt = icmp ult i32 %i.ds, %i.e
  %or.cond229 = select i1 %.not80, i1 %i.dt, i1 false
  br i1 %or.cond229, label %.lr.ph104.preheader, label %.critedge.i

.lr.ph104.preheader:                              ; preds = %bb.ad
  %i.du = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !36
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !36
  %i.ea = and i8 %i.dz, 3
  %.not81237 = icmp eq i8 %i.ea, 0
  br i1 %.not81237, label %.lr.ph239, label %.critedge.i

.lr.ph239:                                        ; preds = %.lr.ph104.preheader, %.lr.ph104
  %indvars.iv190238 = phi i64 [ %indvars.iv.next191, %.lr.ph104 ], [ %i.du, %.lr.ph104.preheader ] ; 2 uses
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190238, 1 ; 3 uses
  %i.eb = icmp samesign ult i64 %indvars.iv.next191, %i.g
  br i1 %i.eb, label %.lr.ph104, label %..critedge.i.loopexit_crit_edge, !llvm.loop !214

.lr.ph104:                                        ; preds = %.lr.ph239
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next191
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !36
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !36
  %i.eh = and i8 %i.eg, 3
  %.not81 = icmp eq i8 %i.eh, 0
  br i1 %.not81, label %.lr.ph239, label %.lr.ph104..critedge.i.loopexit_crit_edge, !llvm.loop !214

.lr.ph104..critedge.i.loopexit_crit_edge:         ; preds = %.lr.ph104
  %i.ei = trunc nuw i64 %indvars.iv190238 to i32
  br label %.critedge.i

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph239
  br label %.critedge.i, !llvm.loop !214

.critedge.i:                                      ; preds = %.lr.ph104.preheader, %.lr.ph104..critedge.i.loopexit_crit_edge, %..critedge.i.loopexit_crit_edge, %bb.ad, %.noexc3
  %i.ej = phi i32 [ %.lcssa121, %.noexc3 ], [ %i.i, %bb.ad ], [ %i.i, %..critedge.i.loopexit_crit_edge ], [ %i.i, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.i, %.lr.ph104.preheader ]
  %i.ek = phi i32 [ %.lcssa94, %.noexc3 ], [ %i.l, %bb.ad ], [ %i.l, %..critedge.i.loopexit_crit_edge ], [ %i.l, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.l, %.lr.ph104.preheader ] ; 2 uses
  %i.el = phi i32 [ %9, %.noexc3 ], [ %i.ad, %bb.ad ], [ %i.h, %..critedge.i.loopexit_crit_edge ], [ %i.ei, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.ad, %.lr.ph104.preheader ]
  %.1.i = phi i8 [ %i.dn, %.noexc3 ], [ %.08.i139, %bb.ad ], [ %.08.i139, %..critedge.i.loopexit_crit_edge ], [ %.08.i139, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %.08.i139, %.lr.ph104.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.en = add i32 %i.el, 1                        ; 2 uses
  %i.eo = icmp ult i32 %i.en, %i.e
  br i1 %i.eo, label %.noexc.preheader, label %._crit_edge140.loopexit, !llvm.loop !215

._crit_edge140.loopexit:                          ; preds = %.noexc._crit_edge, %.critedge.i
  %.lcssa96.ph = phi i32 [ %i.ek, %.critedge.i ], [ %i.l, %.noexc._crit_edge ]
  %.lcssa95.ph = phi ptr [ %i.em, %.critedge.i ], [ %i.j, %.noexc._crit_edge ]
  %.08.i.lcssa.ph = phi i8 [ %.1.i, %.critedge.i ], [ %.08.i139, %.noexc._crit_edge ]
  %i.ep = trunc nuw i8 %.08.i.lcssa.ph to i1
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.a
  %.lcssa96 = phi i32 [ 0, %bb.a ], [ %.lcssa96.ph, %._crit_edge140.loopexit ] ; 3 uses
  %.lcssa95 = phi ptr [ %i.d, %bb.a ], [ %.lcssa95.ph, %._crit_edge140.loopexit ] ; 4 uses
  %.08.i.lcssa = phi i1 [ false, %bb.a ], [ %i.ep, %._crit_edge140.loopexit ] ; 3 uses
  store i32 %i.e, ptr %.lcssa95, align 4, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %.lcssa95, i64 4
  store i32 %i.e, ptr %i.eq, align 4, !tbaa !37
  %i.er = getelementptr inbounds nuw i8, ptr %.lcssa95, i64 8
  store i32 0, ptr %i.er, align 4, !tbaa !37
  %i.es = ptrtoint ptr %.lcssa95 to i64
  %i.et = ptrtoint ptr %i.d to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = lshr exact i64 %i.eu, 2
  %i.ew = trunc i64 %i.ev to i32                  ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !84
  %i.ey = icmp eq i32 %i.ew, 0
  br i1 %i.ey, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit, label %bb.ae, !prof !108

bb.ae:                                            ; preds = %._crit_edge140
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ez, align 8, !tbaa !86
  switch i32 %3, label %bb.bi [
    i32 1, label %bb.af
    i32 2, label %bb.av
  ]

bb.af:                                            ; preds = %bb.ae
  br i1 %.08.i.lcssa, label %bb.ag, label %.preheader

bb.ag:                                            ; preds = %bb.af
  %i.fa = add i32 %i.ew, -1                       ; 3 uses
  store i32 %i.fa, ptr %i.ex, align 8, !tbaa !84
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit, label %.preheader, !prof !108

.preheader:                                       ; preds = %bb.ag, %bb.af
  %i.fc = phi i32 [ %i.fa, %bb.ag ], [ %i.ew, %bb.af ] ; 4 uses
  %.035.i14158 = add i32 %i.fc, -1                ; 2 uses
  %.not.i15159 = icmp eq i32 %.035.i14158, 0
  br i1 %.not.i15159, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %.preheader
  %i.fd = zext i32 %.035.i14158 to i64
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.an
  %indvars.iv199 = phi i64 [ %i.fd, %.lr.ph164.preheader ], [ %indvars.iv.next200, %bb.an ] ; 4 uses
  %.035.in.i13162 = phi i32 [ %i.fc, %.lr.ph164.preheader ], [ %i.fy, %bb.an ]
  %.036.i12161 = phi i32 [ 0, %.lr.ph164.preheader ], [ %.238.i20, %bb.an ] ; 7 uses
  %.039.i11160 = phi i32 [ 0, %.lr.ph164.preheader ], [ %.241.i19, %bb.an ] ; 7 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv199
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !37
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !36
  switch i8 %i.fi, label %bb.al [
    i8 58, label %bb.an
    i8 44, label %bb.an
    i8 125, label %bb.ah
    i8 93, label %bb.ai
    i8 123, label %bb.aj
    i8 91, label %bb.ak
  ]

bb.ah:                                            ; preds = %.lr.ph164
  %i.fj = add nsw i32 %.036.i12161, -1
  br label %bb.an

bb.ai:                                            ; preds = %.lr.ph164
  %i.fk = add nsw i32 %.039.i11160, -1
  br label %bb.an

bb.aj:                                            ; preds = %.lr.ph164
  %i.fl = add nsw i32 %.036.i12161, 1
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph164
  %i.fm = add nsw i32 %.039.i11160, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.lr.ph164
  %.140.i16 = phi i32 [ %.039.i11160, %.lr.ph164 ], [ %.039.i11160, %bb.aj ], [ %i.fm, %bb.ak ] ; 5 uses
  %.137.i17 = phi i32 [ %.036.i12161, %.lr.ph164 ], [ %i.fl, %bb.aj ], [ %.036.i12161, %bb.ak ] ; 5 uses
  %i.fn = add i32 %.035.in.i13162, -2
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !37
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !36
  switch i8 %i.ft, label %bb.am [
    i8 123, label %bb.an
    i8 91, label %bb.an
    i8 58, label %bb.an
    i8 44, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.fu = trunc nuw i64 %indvars.iv199 to i32
  %i.fv = icmp ne i32 %.140.i16, 0
  %i.fw = icmp ne i32 %.137.i17, 0
  %or.cond.i29 = select i1 %i.fv, i1 true, i1 %i.fw
  %spec.select85 = select i1 %or.cond.i29, i32 %i.fu, i32 %i.fc
  br label %.noexc4.thread53

bb.an:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.ai, %bb.ah, %.lr.ph164, %.lr.ph164
  %.241.i19 = phi i32 [ %.039.i11160, %.lr.ph164 ], [ %i.fk, %bb.ai ], [ %.039.i11160, %bb.ah ], [ %.039.i11160, %.lr.ph164 ], [ %.140.i16, %bb.al ], [ %.140.i16, %bb.al ], [ %.140.i16, %bb.al ], [ %.140.i16, %bb.al ] ; 2 uses
  %.238.i20 = phi i32 [ %.036.i12161, %.lr.ph164 ], [ %.036.i12161, %bb.ai ], [ %i.fj, %bb.ah ], [ %.036.i12161, %.lr.ph164 ], [ %.137.i17, %bb.al ], [ %.137.i17, %bb.al ], [ %.137.i17, %bb.al ], [ %.137.i17, %bb.al ] ; 2 uses
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, -1 ; 2 uses
  %i.fx = and i64 %indvars.iv.next200, 4294967295
  %.not.i15 = icmp eq i64 %i.fx, 0
  %i.fy = trunc nuw i64 %indvars.iv199 to i32
  br i1 %.not.i15, label %._crit_edge165, label %.lr.ph164, !llvm.loop !216

._crit_edge165:                                   ; preds = %bb.an, %.preheader
  %.039.i11.lcssa = phi i32 [ 0, %.preheader ], [ %.241.i19, %bb.an ] ; 5 uses
  %.036.i12.lcssa = phi i32 [ 0, %.preheader ], [ %.238.i20, %bb.an ] ; 5 uses
  %i.fz = load i32, ptr %i.d, align 4, !tbaa !37  ; 2 uses
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !36
  switch i8 %i.gc, label %bb.as [
    i8 125, label %bb.ao
    i8 93, label %bb.ap
    i8 123, label %bb.aq
    i8 91, label %bb.ar
  ]

bb.ao:                                            ; preds = %._crit_edge165
  %i.gd = add nsw i32 %.036.i12.lcssa, -1
  br label %bb.as

bb.ap:                                            ; preds = %._crit_edge165
  %i.ge = add nsw i32 %.039.i11.lcssa, -1
  br label %bb.as

bb.aq:                                            ; preds = %._crit_edge165
  %i.gf = add nsw i32 %.036.i12.lcssa, 1
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge165
  %i.gg = add nsw i32 %.039.i11.lcssa, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %._crit_edge165
  %.443.i26 = phi i32 [ %.039.i11.lcssa, %._crit_edge165 ], [ %.039.i11.lcssa, %bb.ao ], [ %i.ge, %bb.ap ], [ %.039.i11.lcssa, %bb.aq ], [ %i.gg, %bb.ar ]
  %.4.i27 = phi i32 [ %.036.i12.lcssa, %._crit_edge165 ], [ %i.gd, %bb.ao ], [ %.036.i12.lcssa, %bb.ap ], [ %i.gf, %bb.aq ], [ %.036.i12.lcssa, %bb.ar ]
  %i.gh = icmp eq i32 %.443.i26, 0
  %i.gi = icmp eq i32 %.4.i27, 0
  %or.cond4.i28.not = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %or.cond4.i28.not, label %.noexc4.thread53, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gj = icmp eq i32 %i.fz, 0
  br i1 %i.gj, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ex, align 8, !tbaa !84
  br label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit

.noexc4.thread53:                                 ; preds = %bb.am, %bb.as
  %.5.i2551 = phi i32 [ %i.fc, %bb.as ], [ %spec.select85, %bb.am ]
  store i32 %.5.i2551, ptr %i.ex, align 8, !tbaa !84
  br label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit

bb.av:                                            ; preds = %bb.ae
  br i1 %.08.i.lcssa, label %thread-pre-split59, label %.preheader86

thread-pre-split59:                               ; preds = %bb.av
  %i.gk = add i32 %i.ew, -1                       ; 3 uses
  store i32 %i.gk, ptr %i.ex, align 8, !tbaa !84
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %.noexc5, label %.preheader86

.preheader86:                                     ; preds = %bb.av, %thread-pre-split59
  %i.gm = phi i32 [ %i.gk, %thread-pre-split59 ], [ %i.ew, %bb.av ] ; 4 uses
  %.035.i148 = add i32 %i.gm, -1                  ; 2 uses
  %.not.i8149 = icmp eq i32 %.035.i148, 0
  br i1 %.not.i8149, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %.preheader86
  %i.gn = zext i32 %.035.i148 to i64
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.bc
  %indvars.iv196 = phi i64 [ %i.gn, %.lr.ph154.preheader ], [ %indvars.iv.next197, %bb.bc ] ; 4 uses
end_hunk_0
