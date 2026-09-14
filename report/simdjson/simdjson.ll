Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8simdjson8westmere25dom_parser_implementation19parse_wobbly_stringEPKhPh:bb.a
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
  %i.e = trunc i64 %2 to i32                      ; 18 uses
  %.not182 = icmp eq i32 %i.e, 0
  br i1 %.not182, label %._crit_edge140, label %.noexc.preheader.lr.ph

.noexc.preheader.lr.ph:                           ; preds = %bb.a
  %i.f = icmp ne i32 %3, 0                        ; 3 uses
  %i.g = and i64 %2, 4294967295                   ; 5 uses
  %i.h = add i32 %i.e, -1
  br label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.preheader.lr.ph, %.critedge.i
  %i.i = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.eo, %.critedge.i ] ; 6 uses
  %.08.i139 = phi i8 [ 0, %.noexc.preheader.lr.ph ], [ %.1.i, %.critedge.i ] ; 6 uses
  %i.j = phi ptr [ %i.d, %.noexc.preheader.lr.ph ], [ %i.er, %.critedge.i ] ; 4 uses
  %i.k = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.es, %.critedge.i ] ; 2 uses
  %i.l = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.ep, %.critedge.i ] ; 7 uses
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
  br i1 %i.ah, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  store i32 %i.ad, ptr %i.j, align 4, !tbaa !37
  %i.ai = add nuw i32 %i.ad, 1                    ; 3 uses
  %i.aj = icmp ult i32 %i.ai, %i.e
  br i1 %i.aj, label %.preheader87, label %.noexc3

.preheader87:                                     ; preds = %bb.c, %.noexc7
  %i.ak = phi i32 [ %i.do, %.noexc7 ], [ %i.l, %bb.c ] ; 12 uses
  %i.al = phi i32 [ %i.dp, %.noexc7 ], [ %i.ai, %bb.c ] ; 2 uses
  %i.am = phi i32 [ %i.dn, %.noexc7 ], [ %i.i, %bb.c ] ; 12 uses
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
  %i.be = phi i32 [ %i.bc, %._crit_edge113 ], [ %i.al, %.preheader87 ], [ %i.bd, %._crit_edge116.loopexit ] ; 20 uses
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
  br i1 %.not4.i, label %bb.ae, label %bb.h, !prof !110

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
  br i1 %i.bo, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw i32 %i.be, 1                    ; 3 uses
  %.not221 = icmp ult i32 %i.be, %i.e
  br i1 %.not221, label %bb.l, label %bb.m, !prof !110

bb.l:                                             ; preds = %bb.k
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !36
  %i.bt = icmp sgt i8 %i.bs, -65
  br i1 %i.bt, label %.noexc7, label %bb.n, !prof !108

bb.m:                                             ; preds = %bb.k
  br i1 %i.f, label %.noexc3, label %.noexc7

bb.n:                                             ; preds = %bb.l
  %i.bu = icmp samesign ult i8 %i.bh, -62         ; 2 uses
  %spec.select168 = select i1 %i.bu, i32 11, i32 %i.am
  %spec.select169 = select i1 %i.bu, i32 11, i32 %i.ak
  %i.bv = add i32 %i.be, 2
  br label %.noexc7

bb.o:                                             ; preds = %bb.j
  %i.bw = and i32 %i.bj, 16
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.by = add i32 %i.be, 2                        ; 2 uses
  %i.bz = icmp ugt i32 %i.by, %i.e
  br i1 %i.bz, label %.critedge2.i, label %bb.q, !prof !108

bb.q:                                             ; preds = %bb.p
  %i.ca = add nuw i32 %i.be, 1                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !36  ; 3 uses
  %i.ce = icmp slt i8 %i.cd, -64
  br i1 %i.ce, label %bb.r, label %.noexc7, !prof !110

bb.r:                                             ; preds = %bb.q
  %i.cf = zext i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !36
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %.noexc7, label %bb.s, !prof !108

.critedge2.i:                                     ; preds = %bb.p
  br i1 %i.f, label %.noexc3, label %.critedge2.i..critedge2.i.thread_crit_edge

.critedge2.i..critedge2.i.thread_crit_edge:       ; preds = %.critedge2.i
  %.pre = add nuw i32 %i.be, 1
  br label %.noexc7

bb.s:                                             ; preds = %bb.r
  switch i8 %i.bh, label %.thread [
    i8 -32, label %bb.t
    i8 -19, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.cj = icmp samesign ult i8 %i.cd, -96         ; 2 uses
  %spec.select170 = select i1 %i.cj, i32 11, i32 %i.am
  %spec.select171 = select i1 %i.cj, i32 11, i32 %i.ak
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.ck = icmp samesign ugt i8 %i.cd, -97         ; 2 uses
  %spec.select172 = select i1 %i.ck, i32 11, i32 %i.am
  %spec.select173 = select i1 %i.ck, i32 11, i32 %i.ak
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.s
  %i.cl = phi i32 [ %spec.select170, %bb.t ], [ %spec.select172, %bb.u ], [ %i.am, %bb.s ]
  %i.cm = phi i32 [ %spec.select171, %bb.t ], [ %spec.select173, %bb.u ], [ %i.ak, %bb.s ]
  %i.cn = add i32 %i.be, 3
  br label %.noexc7

bb.v:                                             ; preds = %bb.o
  %i.co = add i32 %i.be, 3                        ; 2 uses
  %i.cp = icmp ugt i32 %i.co, %i.e
  br i1 %i.cp, label %.critedge4.i, label %bb.w, !prof !108

bb.w:                                             ; preds = %bb.v
  %i.cq = add nuw i32 %i.be, 1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !36  ; 3 uses
  %i.cu = icmp slt i8 %i.ct, -64
  br i1 %i.cu, label %bb.x, label %.critedge4.i, !prof !110

bb.x:                                             ; preds = %bb.w
  %i.cv = add i32 %i.be, 2
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !36
  %i.cz = icmp slt i8 %i.cy, -64
  br i1 %i.cz, label %bb.y, label %.critedge4.i, !prof !110

bb.y:                                             ; preds = %bb.x
  %i.da = zext i32 %i.co to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !36
  %i.dd = icmp sgt i8 %i.dc, -65
  br i1 %i.dd, label %.critedge4.i, label %bb.aa, !prof !108

.critedge4.i:                                     ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.de = add i32 %i.be, 2
  %i.df = icmp ugt i32 %i.de, %i.e
  %or.cond = and i1 %i.f, %i.df
  br i1 %or.cond, label %.noexc3, label %bb.z

bb.z:                                             ; preds = %.critedge4.i
  %i.dg = add nuw i32 %i.be, 1
  br label %.noexc7

bb.aa:                                            ; preds = %bb.y
  switch i8 %i.bh, label %bb.ad [
    i8 -16, label %bb.ab
    i8 -12, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp samesign ult i8 %i.ct, -112
  br label %.thread37

bb.ac:                                            ; preds = %bb.aa
  %i.di = icmp samesign ugt i8 %i.ct, -113
  br label %.thread37

bb.ad:                                            ; preds = %bb.aa
  %i.dj = icmp samesign ugt i8 %i.bh, -12
  br label %.thread37

.thread37:                                        ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sink226 = phi i1 [ %i.dj, %bb.ad ], [ %i.di, %bb.ac ], [ %i.dh, %bb.ab ] ; 2 uses
  %spec.select178 = select i1 %.sink226, i32 11, i32 %i.am
  %spec.select179 = select i1 %.sink226, i32 11, i32 %i.ak
  %i.dk = add i32 %i.be, 4
  br label %.noexc7

bb.ae:                                            ; preds = %bb.g
  %i.dl = icmp samesign ult i8 %i.bh, 32          ; 2 uses
  %spec.select180 = select i1 %i.dl, i32 14, i32 %i.am
  %spec.select181 = select i1 %i.dl, i32 14, i32 %i.ak
  %i.dm = add nuw i32 %i.be, 1
  br label %.noexc7

.noexc7:                                          ; preds = %bb.m, %bb.l, %bb.r, %bb.q, %.critedge2.i..critedge2.i.thread_crit_edge, %bb.i, %bb.n, %.thread, %bb.z, %.thread37, %bb.ae, %bb.f
  %i.dn = phi i32 [ %spec.select180, %bb.ae ], [ %i.am, %bb.f ], [ 11, %bb.i ], [ %spec.select178, %.thread37 ], [ 11, %bb.z ], [ %spec.select168, %bb.n ], [ 11, %.critedge2.i..critedge2.i.thread_crit_edge ], [ 11, %bb.q ], [ %i.cl, %.thread ], [ 11, %bb.r ], [ 11, %bb.l ], [ 11, %bb.m ] ; 2 uses
  %i.do = phi i32 [ %spec.select181, %bb.ae ], [ %i.ak, %bb.f ], [ 11, %bb.i ], [ %spec.select179, %.thread37 ], [ 11, %bb.z ], [ %spec.select169, %bb.n ], [ 11, %.critedge2.i..critedge2.i.thread_crit_edge ], [ 11, %bb.q ], [ %i.cm, %.thread ], [ 11, %bb.r ], [ 11, %bb.l ], [ 11, %bb.m ] ; 2 uses
  %i.dp = phi i32 [ %i.dm, %bb.ae ], [ %i.bi, %bb.f ], [ %i.bm, %bb.i ], [ %i.dk, %.thread37 ], [ %i.dg, %bb.z ], [ %i.bv, %bb.n ], [ %.pre, %.critedge2.i..critedge2.i.thread_crit_edge ], [ %i.ca, %bb.q ], [ %i.cn, %.thread ], [ %i.ca, %bb.r ], [ %i.bp, %bb.l ], [ %i.bp, %bb.m ] ; 3 uses
  %i.dq = icmp ult i32 %i.dp, %i.e
  br i1 %i.dq, label %.preheader87, label %.noexc3, !llvm.loop !213

.noexc3:                                          ; preds = %.critedge2.i, %.critedge4.i, %bb.m, %.noexc7, %._crit_edge116, %bb.e, %bb.c
  %.lcssa121 = phi i32 [ %i.i, %bb.c ], [ %i.am, %.critedge2.i ], [ %i.am, %.critedge4.i ], [ %i.am, %bb.m ], [ %i.am, %bb.e ], [ %i.am, %._crit_edge116 ], [ %i.dn, %.noexc7 ]
  %.lcssa94 = phi i32 [ %i.l, %bb.c ], [ %i.ak, %.critedge2.i ], [ %i.ak, %.critedge4.i ], [ %i.ak, %bb.m ], [ %i.ak, %bb.e ], [ %i.ak, %._crit_edge116 ], [ %i.do, %.noexc7 ]
  %i.dr = phi i32 [ %i.ai, %bb.c ], [ %i.e, %.critedge2.i ], [ %i.e, %.critedge4.i ], [ %i.e, %bb.m ], [ %i.be, %bb.e ], [ %i.be, %._crit_edge116 ], [ %i.dp, %.noexc7 ]
  %.0.i = phi i8 [ 1, %bb.c ], [ 1, %.critedge2.i ], [ 1, %.critedge4.i ], [ 1, %bb.m ], [ 0, %bb.e ], [ 1, %._crit_edge116 ], [ 1, %.noexc7 ]
  %i.ds = or i8 %.0.i, %.08.i139
  br label %.critedge.i

bb.af:                                            ; preds = %bb.b
  %i.dt = zext i8 %i.ag to i64
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !36
  %i.dw = and i8 %i.dv, 2
  %.not80 = icmp eq i8 %i.dw, 0
  store i32 %i.ad, ptr %i.j, align 4, !tbaa !37
  %i.dx = add nuw i32 %i.ad, 1
  %i.dy = icmp ult i32 %i.dx, %i.e
  %or.cond229 = select i1 %.not80, i1 %i.dy, i1 false
  br i1 %or.cond229, label %.lr.ph104.preheader, label %.critedge.i

.lr.ph104.preheader:                              ; preds = %bb.af
  %i.dz = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !36
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !36
  %i.ef = and i8 %i.ee, 3
  %.not81237 = icmp eq i8 %i.ef, 0
  br i1 %.not81237, label %.lr.ph239, label %.critedge.i

.lr.ph239:                                        ; preds = %.lr.ph104.preheader, %.lr.ph104
  %indvars.iv190238 = phi i64 [ %indvars.iv.next191, %.lr.ph104 ], [ %i.dz, %.lr.ph104.preheader ] ; 2 uses
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190238, 1 ; 3 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next191, %i.g
  br i1 %i.eg, label %.lr.ph104, label %..critedge.i.loopexit_crit_edge, !llvm.loop !214

.lr.ph104:                                        ; preds = %.lr.ph239
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next191
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !36
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !36
  %i.em = and i8 %i.el, 3
  %.not81 = icmp eq i8 %i.em, 0
  br i1 %.not81, label %.lr.ph239, label %.lr.ph104..critedge.i.loopexit_crit_edge, !llvm.loop !214

.lr.ph104..critedge.i.loopexit_crit_edge:         ; preds = %.lr.ph104
  %i.en = trunc nuw i64 %indvars.iv190238 to i32
  br label %.critedge.i

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph239
  br label %.critedge.i, !llvm.loop !214

.critedge.i:                                      ; preds = %.lr.ph104.preheader, %.lr.ph104..critedge.i.loopexit_crit_edge, %..critedge.i.loopexit_crit_edge, %bb.af, %.noexc3
  %i.eo = phi i32 [ %.lcssa121, %.noexc3 ], [ %i.i, %bb.af ], [ %i.i, %..critedge.i.loopexit_crit_edge ], [ %i.i, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.i, %.lr.ph104.preheader ]
  %i.ep = phi i32 [ %.lcssa94, %.noexc3 ], [ %i.l, %bb.af ], [ %i.l, %..critedge.i.loopexit_crit_edge ], [ %i.l, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.l, %.lr.ph104.preheader ] ; 2 uses
  %i.eq = phi i32 [ %i.dr, %.noexc3 ], [ %i.ad, %bb.af ], [ %i.h, %..critedge.i.loopexit_crit_edge ], [ %i.en, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.ad, %.lr.ph104.preheader ]
  %.1.i = phi i8 [ %i.ds, %.noexc3 ], [ %.08.i139, %bb.af ], [ %.08.i139, %..critedge.i.loopexit_crit_edge ], [ %.08.i139, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %.08.i139, %.lr.ph104.preheader ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.es = add i32 %i.eq, 1                        ; 2 uses
  %i.et = icmp ult i32 %i.es, %i.e
  br i1 %i.et, label %.noexc.preheader, label %._crit_edge140.loopexit, !llvm.loop !215

._crit_edge140.loopexit:                          ; preds = %.noexc._crit_edge, %.critedge.i
  %.lcssa96.ph = phi i32 [ %i.ep, %.critedge.i ], [ %i.l, %.noexc._crit_edge ]
  %.lcssa95.ph = phi ptr [ %i.er, %.critedge.i ], [ %i.j, %.noexc._crit_edge ]
  %.08.i.lcssa.ph = phi i8 [ %.1.i, %.critedge.i ], [ %.08.i139, %.noexc._crit_edge ]
  %i.eu = trunc nuw i8 %.08.i.lcssa.ph to i1
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.a
  %.lcssa96 = phi i32 [ 0, %bb.a ], [ %.lcssa96.ph, %._crit_edge140.loopexit ] ; 3 uses
  %.lcssa95 = phi ptr [ %i.d, %bb.a ], [ %.lcssa95.ph, %._crit_edge140.loopexit ] ; 4 uses
  %.08.i.lcssa = phi i1 [ false, %bb.a ], [ %i.eu, %._crit_edge140.loopexit ] ; 3 uses
  store i32 %i.e, ptr %.lcssa95, align 4, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %.lcssa95, i64 4
  store i32 %i.e, ptr %i.ev, align 4, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %.lcssa95, i64 8
  store i32 0, ptr %i.ew, align 4, !tbaa !37
  %i.ex = ptrtoint ptr %.lcssa95 to i64
  %i.ey = ptrtoint ptr %i.d to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = lshr exact i64 %i.ez, 2
  %i.fb = trunc i64 %i.fa to i32                  ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !84
  %i.fd = icmp eq i32 %i.fb, 0
  br i1 %i.fd, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit, label %bb.ag, !prof !108

bb.ag:                                            ; preds = %._crit_edge140
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.fe, align 8, !tbaa !86
  switch i32 %3, label %bb.bk [
end_hunk_0
begin_hunk_1_@_ZN8simdjson8internalL22get_fallback_singletonEv
define internal fastcc void @_ZN8simdjson8internalL22get_fallback_singletonEv() unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton) #41
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, i64 8), align 8, !tbaa !40
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, i64 16), align 8, !tbaa !48
  store i64 31, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, i64 24), align 8, !tbaa !40
  store ptr @.str.43, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, i64 32), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, i64 40), align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8simdjson8fallback14implementationE, i64 16), ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, align 8, !tbaa !53
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use8set_bestEv(ptr nonnull align 8 poison) #41 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(44) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #42
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use11descriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use8set_bestEv(ptr nonnull align 8 poison) #41 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(44) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #42
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use25required_instruction_setsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use8set_bestEv(ptr nonnull align 8 poison) #41 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(44) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret i32 %i.e

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #42
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use32create_dom_parser_implementationEmmRSt10unique_ptrINS0_25dom_parser_implementationESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use8set_bestEv(ptr nonnull align 8 poison) #41 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(44) %i.a, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use6minifyEPKhmPhRm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use8set_bestEv(ptr nonnull align 8 poison) #41 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #41
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use13validate_utf8EPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use8set_bestEv(ptr nonnull align 8 poison) #41 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef %1, i64 noundef %2) #41
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal25dom_parser_implementationD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8simdjson8internal25dom_parser_implementationE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #43
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal25dom_parser_implementationD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #42
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #30

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.usub.sat.v32i8(<32 x i8>, <32 x i8>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx.ptestz.256(<4 x i64>, <4 x i64>) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8>, <64 x i8>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i8> @llvm.usub.sat.v64i8(<64 x i8>, <64 x i8>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse41.ptestz(<2 x i64>, <2 x i64>) #33

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #36

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #37

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal9dtoa_impl16grisu2_digit_genEPcRiS3_NS1_5diyfpES4_S4_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i32 %4, ptr noundef byval(%"struct.simdjson::internal::dtoa_impl::diyfp") align 8 %5, ptr noundef byval(%"struct.simdjson::internal::dtoa_impl::diyfp") align 8 %6) local_unnamed_addr #38 comdat {
bb.a:
  %i.a = load i64, ptr %6, align 8, !tbaa !223    ; 4 uses
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !224
  %i.e = load i64, ptr %5, align 8, !tbaa !223
  %i.f = sub i64 %i.a, %i.e                       ; 5 uses
  %i.g = sub nsw i32 0, %i.d
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = shl nuw i64 1, %i.h                      ; 4 uses
  %i.j = lshr i64 %i.a, %i.h
  %i.k = trunc i64 %i.j to i32                    ; 10 uses
  %i.l = add i64 %i.i, -1                         ; 2 uses
  %i.m = and i64 %i.l, %i.a                       ; 2 uses
  %i.n = icmp ugt i32 %i.k, 999999999
  br i1 %i.n, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.k, 99999999
  br i1 %i.o, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i32 %i.k, 9999999
  br i1 %i.p, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ugt i32 %i.k, 999999
  br i1 %i.q, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp samesign ugt i32 %i.k, 99999
  br i1 %i.r, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ugt i32 %i.k, 9999
  br i1 %i.s, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ugt i32 %i.k, 999
  br i1 %i.t, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp samesign ugt i32 %i.k, 99
  br i1 %i.u, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.k, 9            ; 2 uses
  %..i = select i1 %i.v, i32 10, i32 1
  %.21.i = select i1 %i.v, i32 2, i32 1
  br label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader

_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.054110.ph = phi i32 [ 10, %bb.a ], [ 9, %bb.b ], [ 8, %bb.c ], [ 7, %bb.d ], [ 6, %bb.e ], [ 5, %bb.f ], [ 4, %bb.g ], [ %.21.i, %bb.i ], [ 3, %bb.h ]
  %.077108.ph = phi i32 [ 1000000000, %bb.a ], [ 100000000, %bb.b ], [ 10000000, %bb.c ], [ 1000000, %bb.d ], [ 100000, %bb.e ], [ 10000, %bb.f ], [ 1000, %bb.g ], [ %..i, %bb.i ], [ 100, %bb.h ]
  br label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit

bb.j:                                             ; preds = %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit
  %i.w = icmp sgt i32 %.054110, 1
  br i1 %i.w, label %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit, label %.preheader, !llvm.loop !220

_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit: ; preds = %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader, %bb.j
  %.054110 = phi i32 [ %i.af, %bb.j ], [ %.054110.ph, %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.056109 = phi i32 [ %i.y, %bb.j ], [ %i.k, %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.077108 = phi i32 [ %.1, %bb.j ], [ %.077108.ph, %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 7 uses
  %i.x = udiv i32 %.056109, %.077108
  %i.y = urem i32 %.056109, %.077108              ; 2 uses
  %i.z = trunc i32 %i.x to i8
  %i.aa = add i8 %i.z, 48
  %i.ab = load i32, ptr %1, align 4, !tbaa !37    ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !37
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store i8 %i.aa, ptr %i.ae, align 1, !tbaa !36
  %i.af = add nsw i32 %.054110, -1                ; 2 uses
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl i64 %i.ag, %i.h
  %i.ai = add i64 %i.ah, %i.m                     ; 4 uses
  %.not58 = icmp ugt i64 %i.ai, %i.b              ; 2 uses
  br i1 %.not58, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit
  %i.aj = load i32, ptr %2, align 4, !tbaa !37
  %i.ak = add nsw i32 %i.aj, %i.af
  store i32 %i.ak, ptr %2, align 4, !tbaa !37
  %i.al = zext i32 %.077108 to i64
  %i.am = shl i64 %i.al, %i.h                     ; 3 uses
  %i.an = icmp uge i64 %i.ai, %i.f
  %i.ao = sub nuw i64 %i.b, %i.ai
  %.not21.i = icmp ult i64 %i.ao, %i.am
  %or.cond22.i = or i1 %i.an, %.not21.i
  br i1 %or.cond22.i, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ap = load i32, ptr %1, align 4, !tbaa !37
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -1     ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge2.i, %.lr.ph.i
  %.023.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.at, %.critedge2.i ] ; 2 uses
  %i.at = add i64 %.023.i, %i.am                  ; 4 uses
  %i.au = icmp ult i64 %i.at, %i.f
  br i1 %i.au, label %.critedge2.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sub nuw i64 %i.f, %.023.i
  %i.aw = sub nuw i64 %i.at, %i.f
  %i.ax = icmp ugt i64 %i.av, %i.aw
  br i1 %i.ax, label %.critedge2.thread.i, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit

.critedge2.thread.i:                              ; preds = %bb.m
  %7 = load i8, ptr %i.as, align 1, !tbaa !36
  %8 = add i8 %7, -1
  store i8 %8, ptr %i.as, align 1, !tbaa !36
  br label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit

.critedge2.i:                                     ; preds = %bb.l
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !36
  %i.az = add i8 %i.ay, -1
  store i8 %i.az, ptr %i.as, align 1, !tbaa !36
  %i.ba = sub i64 %i.b, %i.at
  %.not.i = icmp ult i64 %i.ba, %i.am
  br i1 %.not.i, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit, label %bb.l, !llvm.loop !221

bb.n:                                             ; preds = %_ZN8simdjson8internal9dtoa_impl18find_largest_pow10EjRj.exit
  %i.bb = udiv i32 %.077108, 10
  br label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit

_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit: ; preds = %.critedge2.i, %.critedge2.thread.i, %bb.m, %bb.n
  %.1 = phi i32 [ %i.bb, %bb.n ], [ %.077108, %.critedge2.thread.i ], [ %.077108, %bb.m ], [ %.077108, %.critedge2.i ]
  br i1 %.not58, label %bb.j, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68, !llvm.loop !220

.preheader:                                       ; preds = %bb.j, %.preheader
  %.055 = phi i64 [ %i.be, %.preheader ], [ %i.m, %bb.j ]
  %.053 = phi i64 [ %i.bn, %.preheader ], [ %i.f, %bb.j ]
  %.051 = phi i32 [ %i.bl, %.preheader ], [ 0, %bb.j ]
  %.0 = phi i64 [ %i.bm, %.preheader ], [ %i.b, %bb.j ]
  %i.bc = mul i64 %.055, 10                       ; 2 uses
  %i.bd = lshr i64 %i.bc, %i.h
  %i.be = and i64 %i.bc, %i.l                     ; 5 uses
  %i.bf = trunc i64 %i.bd to i8
  %i.bg = add i8 %i.bf, 48
  %i.bh = load i32, ptr %1, align 4, !tbaa !37    ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %1, align 4, !tbaa !37
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bg, ptr %i.bk, align 1, !tbaa !36
  %i.bl = add nuw nsw i32 %.051, 1                ; 2 uses
  %i.bm = mul i64 %.0, 10                         ; 4 uses
  %i.bn = mul i64 %.053, 10                       ; 5 uses
  %.not = icmp ugt i64 %i.be, %i.bm
  br i1 %.not, label %.preheader, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.bo = load i32, ptr %2, align 4, !tbaa !37
  %i.bp = sub nsw i32 %i.bo, %i.bl
  store i32 %i.bp, ptr %2, align 4, !tbaa !37
  %i.bq = icmp uge i64 %i.be, %i.bn
  %i.br = sub nuw i64 %i.bm, %i.be
  %.not21.i61 = icmp ult i64 %i.br, %i.i
  %or.cond22.i62 = or i1 %i.bq, %.not21.i61
  br i1 %or.cond22.i62, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.o
  %i.bs = load i32, ptr %1, align 4, !tbaa !37
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1     ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %.critedge2.i65, %.lr.ph.i63
  %.023.i64 = phi i64 [ %i.be, %.lr.ph.i63 ], [ %i.bw, %.critedge2.i65 ] ; 2 uses
  %i.bw = add i64 %.023.i64, %i.i                 ; 4 uses
  %i.bx = icmp ult i64 %i.bw, %i.bn
  br i1 %i.bx, label %.critedge2.i65, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = sub nuw i64 %i.bn, %.023.i64
  %i.bz = sub nuw i64 %i.bw, %i.bn
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %.critedge2.thread.i66, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68

.critedge2.thread.i66:                            ; preds = %bb.q
  %9 = load i8, ptr %i.bv, align 1, !tbaa !36
  %10 = add i8 %9, -1
  store i8 %10, ptr %i.bv, align 1, !tbaa !36
  br label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68

.critedge2.i65:                                   ; preds = %bb.p
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !36
  %i.cc = add i8 %i.cb, -1
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !36
  %i.cd = sub i64 %i.bm, %i.bw
  %.not.i66 = icmp ult i64 %i.cd, %i.i
  br i1 %.not.i66, label %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %bb.p, !llvm.loop !221

_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit68: ; preds = %bb.k, %_ZN8simdjson8internal9dtoa_impl12grisu2_roundEPcimmmm.exit, %.critedge2.i65, %.critedge2.thread.i66, %bb.q, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !43
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread63, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 5 uses
  %i.e = icmp slt i32 %i.d, -324
  br i1 %i.e, label %.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %i.d, 309
  br i1 %i.f, label %.thread63, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %.lr.ph89

thread-pre-split:                                 ; preds = %bb.e
  %i.h = add nuw nsw i32 %i.p, %.04487            ; 2 uses
  %i.i = icmp sgt i32 %i.q, 0
  br i1 %i.i, label %.lr.ph, label %.lr.ph89

.lr.ph:                                           ; preds = %.preheader, %thread-pre-split
  %.04487 = phi i32 [ %i.h, %thread-pre-split ], [ 0, %.preheader ]
  %i.j = phi i32 [ %i.q, %thread-pre-split ], [ %i.d, %.preheader ] ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 19
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalEE6powers, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !36
  %i.o = zext i8 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.p = phi i32 [ %i.o, %bb.d ], [ 60, %.lr.ph ] ; 2 uses
  tail call void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef %i.p)
  %i.q = load i32, ptr %i.c, align 4, !tbaa !44   ; 4 uses
  %i.r = icmp sgt i32 %i.q, -2048
  br i1 %i.r, label %thread-pre-split, label %.thread63, !llvm.loop !225

.lr.ph89:                                         ; preds = %thread-pre-split, %.preheader
  %.pr83 = phi i32 [ %i.d, %.preheader ], [ %i.q, %thread-pre-split ]
  %.044.lcssa = phi i32 [ 0, %.preheader ], [ %i.h, %thread-pre-split ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph89, %bb.l
  %.288 = phi i32 [ %.044.lcssa, %.lr.ph89 ], [ %i.ah, %bb.l ] ; 2 uses
  %i.t = phi i32 [ %.pr83, %.lr.ph89 ], [ %i.af, %bb.l ] ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.s, align 2, !tbaa !36    ; 2 uses
  %i.w = icmp ugt i8 %i.v, 4
  br i1 %i.w, label %.thread68, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp samesign ult i8 %i.v, 2
  %i.y = select i1 %i.x, i32 2, i32 1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.z = sub nsw i32 0, %i.t                      ; 2 uses
  %i.aa = icmp samesign ult i32 %i.z, 19
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalEE6powers, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !36
  %i.ae = zext i8 %i.ad to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.045 = phi i32 [ %i.y, %bb.h ], [ %i.ae, %bb.j ], [ 60, %bb.i ] ; 2 uses
  tail call void @_ZN8simdjson8internal18decimal_left_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef %.045)
  %i.af = load i32, ptr %i.c, align 4, !tbaa !44  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 2047
  br i1 %i.ag, label %.thread63, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = sub nsw i32 %.288, %.045                ; 2 uses
  %i.ai = icmp slt i32 %i.af, 1
  br i1 %i.ai, label %bb.f, label %.thread68

.thread68:                                        ; preds = %bb.l, %bb.g
  %.2.lcssa.ph = phi i32 [ %i.ah, %bb.l ], [ %.288, %bb.g ] ; 3 uses
  %i.aj = add nsw i32 %.2.lcssa.ph, -1            ; 2 uses
  %i.ak = icmp slt i32 %.2.lcssa.ph, -1021
  br i1 %i.ak, label %.lr.ph94, label %._crit_edge

.lr.ph94:                                         ; preds = %.thread68, %.lr.ph94
  %.593 = phi i32 [ %i.am, %.lr.ph94 ], [ %i.aj, %.thread68 ] ; 2 uses
  %i.al = sub nuw nsw i32 -1022, %.593
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.al, i32 60) ; 2 uses
  tail call void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef %spec.store.select)
  %i.am = add nuw nsw i32 %spec.store.select, %.593 ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, -1022
  br i1 %i.an, label %.lr.ph94, label %._crit_edge.thread, !llvm.loop !226

._crit_edge:                                      ; preds = %.thread68
  %.not = icmp slt i32 %.2.lcssa.ph, 1025
  br i1 %.not, label %._crit_edge.thread, label %.thread63

._crit_edge.thread:                               ; preds = %.lr.ph94, %._crit_edge
  %.5.lcssa112 = phi i32 [ %i.aj, %._crit_edge ], [ %i.am, %.lr.ph94 ] ; 4 uses
  tail call void @_ZN8simdjson8internal18decimal_left_shiftERNS0_7decimalEj(ptr noundef nonnull align 4 dereferenceable(780) %0, i32 noundef 53)
  %i.ao = load i32, ptr %0, align 4, !tbaa !43    ; 4 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread76, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !44  ; 9 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread76, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp samesign ugt i32 %i.aq, 18
  br i1 %i.as, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit.thread74, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %.not42.i = icmp eq i32 %i.aq, 0                ; 2 uses
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.au = zext i32 %i.ao to i64                   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.aq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.av = icmp eq i32 %i.aq, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 30
  br label %bb.p

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.02840.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.br, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod129 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.aw = mul i64 %.02840.i.epil.init, 10
  %i.ax = icmp samesign ult i64 %indvars.iv.i.epil.init, %i.au
  br i1 %i.ax, label %bb.o, label %._crit_edge.i.loopexit.epilog-lcssa

bb.o:                                             ; preds = %.epil.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i.epil.init
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = zext i8 %i.az to i64
  br label %._crit_edge.i.loopexit.epilog-lcssa

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %bb.o, %.epil.preheader
  %i.bb = phi i64 [ %i.ba, %bb.o ], [ 0, %.epil.preheader ]
  %i.bc = add i64 %i.bb, %i.aw
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %.028.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.br, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bc, %._crit_edge.i.loopexit.epilog-lcssa ] ; 5 uses
  %i.bd = icmp ult i32 %i.aq, %i.ao
  br i1 %i.bd, label %bb.u, label %_ZN8simdjson8internal5roundERNS0_7decimalE.exit

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.t ] ; 4 uses
  %.02840.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.br, %bb.t ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.t ]
  %i.be = mul i64 %.02840.i, 10
  %i.bf = icmp samesign ult i64 %indvars.iv.i, %i.au
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !36
  %i.bi = zext i8 %i.bh to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = phi i64 [ %i.bi, %bb.q ], [ 0, %bb.p ]
  %i.bk = add i64 %i.bj, %i.be
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = mul i64 %i.bk, 10
  %i.bm = icmp samesign ult i64 %indvars.iv.next.i, %i.au
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !36
end_hunk_1
