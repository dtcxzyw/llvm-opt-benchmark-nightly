Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/section?download=true
inline.NumInlined: 3914
inline.NumDeleted: 1733
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZSt19__relocate_object_aIN8WasmEdge3AST7SubTypeES2_SaIS2_EEvPT_PT0_RT1_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i8, ptr %i.n, align 8, !tbaa !67    ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 -1, label %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = load <2 x ptr>, ptr %i.l, align 8, !tbaa !1754
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !1754
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1755
  store ptr %i.s, ptr %i.q, align 8, !tbaa !1755
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.l, i8 0, i64 24, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = load <2 x ptr>, ptr %i.l, align 8, !tbaa !1756
  store <2 x ptr> %i.t, ptr %i.k, align 8, !tbaa !1756
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.l, i8 0, i64 24, i1 false)
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !200
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !1756
  %i.ab = insertelement <4 x ptr> poison, ptr %i.y, i64 0
  %i.ac = insertelement <4 x ptr> %i.ab, ptr %i.z, i64 1
  %i.ad = shufflevector <2 x ptr> %i.aa, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x ptr> %i.ac, <4 x ptr> %i.ad, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ae, ptr %i.u, align 8, !tbaa !1756
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !202
  store ptr null, ptr %i.ah, align 8, !tbaa !194
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !202
  store ptr null, ptr %i.ag, align 8, !tbaa !205
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1758
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1758
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  unreachable

_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.thread: ; preds = %bb.a
  store i8 -1, ptr %i.m, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.an, i64 20, i1 false)
  br label %_ZN8WasmEdge3AST7SubTypeD2Ev.exit

bb.e:                                             ; preds = %bb.b, %bb.c
  store i8 %i.o, ptr %i.m, align 8, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, ptr noundef nonnull align 8 dereferenceable(20) %i.ap, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS6_EENS5_12FunctionTypeEEE8_M_resetEvEUlOT_E_JRSt7variantIJS8_S9_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(73) %i.l)
          to label %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #22
  unreachable

_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i:       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !71  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i1.i, label %_ZN8WasmEdge3AST7SubTypeD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %.pre to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.av) #23
  br label %_ZN8WasmEdge3AST7SubTypeD2Ev.exit

_ZN8WasmEdge3AST7SubTypeD2Ev.exit:                ; preds = %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i.thread, %_ZN8WasmEdge3AST13CompositeTypeD2Ev.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 16 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !83     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 168                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1764
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 168                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 54901024028897476
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 54901024028897475, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, i8 0, i64 168, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.q, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.s, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  store i8 99, ptr %i.t, align 2, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 83
  store i8 112, ptr %i.u, align 1, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.v, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.x, align 2, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 139
  store i8 64, ptr %i.y, align 1, !tbaa !40
  %i.z = add nsw i64 %1, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.prol ]
  %i.ab = icmp eq i64 %1, 1
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 23 uses
  %.057.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.08.i.i.i, i8 0, i64 168, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 82
  store i8 99, ptr %i.ag, align 2, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 83
  store i8 112, ptr %i.ah, align 1, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ai, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.ak, align 2, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 139
  store i8 64, ptr %i.al, align 1, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.am, i8 0, i64 168, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 250
  store i8 99, ptr %i.ar, align 2, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 251
  store i8 112, ptr %i.as, align 1, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 264
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.at, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.av, align 2, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 307
  store i8 64, ptr %i.aw, align 1, !tbaa !40
  %i.ax = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 336 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1759

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ay, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !82
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.az = icmp ult i64 %i.n, %1
  br i1 %i.az, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ba = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 54901024028897475) ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 168
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #25 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.f ; 14 uses
  %xtraiter51 = and i64 %1, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.be, i8 0, i64 168, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 82
  store i8 99, ptr %i.bj, align 2, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 83
  store i8 112, ptr %i.bk, align 1, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bl, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.bn, align 2, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 139
  store i8 64, ptr %i.bo, align 1, !tbaa !40
  %i.bp = add nsw i64 %1, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.be, %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bp, %.lr.ph.i.i.i30.prol ]
  %i.br = icmp eq i64 %1, 1
  br i1 %i.br, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.co, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 23 uses
  %.057.i.i.i32 = phi i64 [ %i.cn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.08.i.i.i31, i8 0, i64 168, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 82
  store i8 99, ptr %i.bw, align 2, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 83
  store i8 112, ptr %i.bx, align 1, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.by, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.ca, align 2, !tbaa !40
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 139
  store i8 64, ptr %i.cb, align 1, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cc, i8 0, i64 168, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 176
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 250
  store i8 99, ptr %i.ch, align 2, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 251
  store i8 112, ptr %i.ci, align 1, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 264
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cj, i8 0, i64 17, i1 false)
  store i8 127, ptr %i.cl, align 2, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 307
  store i8 64, ptr %i.cm, align 1, !tbaa !40
  %i.cn = add i64 %.057.i.i.i32, -2               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 336
  %.not.i.i.i33.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1759

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.dv, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.bd, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.du, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.cp = load i8, ptr %.0911.i.i.i, align 8, !tbaa !209, !alias.scope !1766, !noalias !1765
  store i8 %i.cp, ptr %.012.i.i.i, align 8, !tbaa !209, !alias.scope !1765, !noalias !1766
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !51, !alias.scope !1765, !noalias !1766
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !53, !alias.scope !1766, !noalias !1765 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.cx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.cz, i1 false), !alias.scope !1767
  br label %_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !53, !alias.scope !1765, !noalias !1766
  %i.da = load i64, ptr %i.cu, align 8, !tbaa !40, !alias.scope !1766, !noalias !1765
  store i64 %i.da, ptr %i.cs, align 8, !tbaa !40, !alias.scope !1765, !noalias !1766
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765
  br label %_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i

_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i:      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.db = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.cx, %bb.e ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !54, !alias.scope !1765, !noalias !1766
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !53, !alias.scope !1766, !noalias !1765
  store i64 0, ptr %i.dc, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765
  store i8 0, ptr %i.cu, align 8, !tbaa !40, !alias.scope !1766, !noalias !1765
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 3 uses
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !51, !alias.scope !1765, !noalias !1766
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !53, !alias.scope !1766, !noalias !1765 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 5 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 16
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.di, i64 %i.dn, i1 false), !alias.scope !1767
  br label %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8WasmEdge3AST4DescC2EOS1_.exit.i.i.i.i.i
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !53, !alias.scope !1765, !noalias !1766
  %i.do = load i64, ptr %i.di, align 8, !tbaa !40, !alias.scope !1766, !noalias !1765
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !40, !alias.scope !1765, !noalias !1766
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765
  br label %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.dp = phi i64 [ %i.dl, %bb.f ], [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !54, !alias.scope !1765, !noalias !1766
  store ptr %i.di, ptr %i.df, align 8, !tbaa !53, !alias.scope !1766, !noalias !1765
  store i64 0, ptr %i.dq, align 8, !tbaa !54, !alias.scope !1766, !noalias !1765
  store i8 0, ptr %i.di, align 8, !tbaa !40, !alias.scope !1766, !noalias !1765
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ds, ptr noundef nonnull align 8 dereferenceable(96) %i.dt, i64 96, i1 false), !alias.scope !1767
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 168 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 168
  %.not.i.i.i38 = icmp eq ptr %i.du, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1763

_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN8WasmEdge3AST10ImportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !1764
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dy) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.bd, ptr %0, align 8, !tbaa !83
  %i.dz = getelementptr inbounds nuw [168 x i8], ptr %i.be, i64 %1
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw [168 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.ea, ptr %i.h, align 8, !tbaa !1764
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ImportDescEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader8loadDescERNS_3AST10ImportDescE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !71     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !79
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !84
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #25 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !79
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !79
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #23
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1775
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i.prol, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.p, align 2, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 27
  store i8 112, ptr %i.q, align 1, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1768

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.v, align 2, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 27
  store i8 112, ptr %i.w, align 1, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.z, align 2, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 83
  store i8 112, ptr %i.aa, align 1, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.ad, align 2, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 139
  store i8 112, ptr %i.ae, align 1, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.ah, align 2, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 195
  store i8 112, ptr %i.ai, align 1, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1769

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !87
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 164703072086692425) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 56
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #25 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i31.prol, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.as, align 2, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 27
  store i8 112, ptr %i.at, align 1, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 56 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1770

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i31, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.ay, align 2, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 27
  store i8 112, ptr %i.az, align 1, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.bc, align 2, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 83
  store i8 112, ptr %i.bd, align 1, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.bg, align 2, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 139
  store i8 112, ptr %i.bh, align 1, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i8 0, i64 40, i1 false)
  store i8 99, ptr %i.bk, align 2, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 195
  store i8 112, ptr %i.bl, align 1, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1769

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %i.bp = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !1777, !noalias !1776
  store <2 x ptr> %i.bp, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !1776, !noalias !1777
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !213, !alias.scope !1777, !noalias !1776
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !213, !alias.scope !1776, !noalias !1777
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1777, !noalias !1776
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false), !tbaa.struct !1778, !alias.scope !1779
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.bv, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1774

_ZNSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN8WasmEdge3AST12TableSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !1775
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST12TableSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN8WasmEdge3AST12TableSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN8WasmEdge3AST12TableSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !88
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %1
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !87
  %i.cb = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.cb, ptr %i.h, align 8, !tbaa !1775
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST12TableSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST12TableSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST12TableSegmentEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8WasmEdge3AST12TableSegmentEEvPT_.exit
  %.05 = phi ptr [ %i.aj, %_ZSt8_DestroyIN8WasmEdge3AST12TableSegmentEEvPT_.exit ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.05, align 8, !tbaa !216  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.05.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZN8WasmEdge3AST11Instruction5resetEv.exit ], [ %i.a, %.lr.ph ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 25 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 4 uses
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  store i32 0, ptr %.05.i.i.i.i.i.i, align 16, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = and i8 %i.e, 2
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.05.i.i.i.i.i.i, align 16, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.g:                                             ; preds = %bb.d
  %i.n = and i8 %i.e, 4
  %.not4.i = icmp eq i8 %i.n, 0
  br i1 %.not4.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %.05.i.i.i.i.i.i, align 16, !tbaa !40 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 32) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.j:                                             ; preds = %bb.g
  %i.q = and i8 %i.e, 8
  %.not5.i = icmp eq i8 %i.q, 0
  br i1 %.not5.i, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %.05.i.i.i.i.i.i, align 16, !tbaa !40 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !220  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !221
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #23
  br label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i

_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 40) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

_ZN8WasmEdge3AST11Instruction5resetEv.exit:       ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i
  %i.aa = load i8, ptr %i.d, align 1
  %i.ab = and i8 %i.aa, -16
  store i8 %i.ab, ptr %i.d, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.pr.i.i.i.i = load ptr, ptr %.05, align 8, !tbaa !216
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.ad = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.a, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN8WasmEdge3AST12TableSegmentEEvPT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !213
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #23
  br label %_ZSt8_DestroyIN8WasmEdge3AST12TableSegmentEEvPT_.exit

_ZSt8_DestroyIN8WasmEdge3AST12TableSegmentEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.05, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1780

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN8WasmEdge3AST12TableSegmentEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

declare void @_ZN8WasmEdge6Loader6Loader11loadSegmentERNS_3AST12TableSegmentE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !92     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1785
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10MemoryTypeEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10MemoryTypeEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !91
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !1786, !alias.scope !1787
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1784

_ZNSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN8WasmEdge3AST10MemoryTypeESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST10MemoryTypeESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN8WasmEdge3AST10MemoryTypeESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN8WasmEdge3AST10MemoryTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !92
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !1785
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10MemoryTypeEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST10MemoryTypeESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader8loadTypeERNS_3AST10MemoryTypeE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !96     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1795
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i.prol, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.p, align 2, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 27
  store i8 64, ptr %i.q, align 1, !tbaa !40
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1788

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.u, align 2, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 27
  store i8 64, ptr %i.v, align 1, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.x, align 2, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 67
  store i8 64, ptr %i.y, align 1, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.aa, align 2, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 107
  store i8 64, ptr %i.ab, align 1, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.ad, align 2, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 147
  store i8 64, ptr %i.ae, align 1, !tbaa !40
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1789

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !95
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 230584300921369395) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 40
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #25 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i31.prol, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.an, align 2, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 27
  store i8 64, ptr %i.ao, align 1, !tbaa !40
  %i.ap = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1790

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i31, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.as, align 2, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 27
  store i8 64, ptr %i.at, align 1, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.av, align 2, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 67
  store i8 64, ptr %i.aw, align 1, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.ay, align 2, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 107
  store i8 64, ptr %i.az, align 1, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i8 0, i64 40, i1 false)
  store i8 127, ptr %i.bb, align 2, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 147
  store i8 64, ptr %i.bc, align 1, !tbaa !40
  %i.bd = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1789

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i37 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.bf = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !1797, !noalias !1796
  store <2 x ptr> %i.bf, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !1796, !noalias !1797
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !213, !alias.scope !1797, !noalias !1796
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !213, !alias.scope !1796, !noalias !1797
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1797, !noalias !1796
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull align 8 dereferenceable(12) %i.bk, i64 12, i1 false), !tbaa.struct !1800, !alias.scope !1801
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1794

_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !1795
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.al, ptr %0, align 8, !tbaa !96
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %1
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !95
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.br, ptr %i.h, align 8, !tbaa !1795
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST13GlobalSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST13GlobalSegmentEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8WasmEdge3AST13GlobalSegmentEEvPT_.exit
  %.05 = phi ptr [ %i.aj, %_ZSt8_DestroyIN8WasmEdge3AST13GlobalSegmentEEvPT_.exit ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.05, align 8, !tbaa !216  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.05.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZN8WasmEdge3AST11Instruction5resetEv.exit ], [ %i.a, %.lr.ph ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 25 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 4 uses
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  store i32 0, ptr %.05.i.i.i.i.i.i, align 16, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = and i8 %i.e, 2
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.05.i.i.i.i.i.i, align 16, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.g:                                             ; preds = %bb.d
  %i.n = and i8 %i.e, 4
  %.not4.i = icmp eq i8 %i.n, 0
  br i1 %.not4.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %.05.i.i.i.i.i.i, align 16, !tbaa !40 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 32) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.j:                                             ; preds = %bb.g
  %i.q = and i8 %i.e, 8
  %.not5.i = icmp eq i8 %i.q, 0
  br i1 %.not5.i, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %.05.i.i.i.i.i.i, align 16, !tbaa !40 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !220  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !221
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #23
  br label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i

_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 40) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

_ZN8WasmEdge3AST11Instruction5resetEv.exit:       ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i
  %i.aa = load i8, ptr %i.d, align 1
  %i.ab = and i8 %i.aa, -16
  store i8 %i.ab, ptr %i.d, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.pr.i.i.i.i = load ptr, ptr %.05, align 8, !tbaa !216
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.ad = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.a, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN8WasmEdge3AST13GlobalSegmentEEvPT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !213
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #23
  br label %_ZSt8_DestroyIN8WasmEdge3AST13GlobalSegmentEEvPT_.exit

_ZSt8_DestroyIN8WasmEdge3AST13GlobalSegmentEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1802

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN8WasmEdge3AST13GlobalSegmentEEvPT_.exit, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader11loadSegmentERNS_3AST13GlobalSegmentE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !100    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1810
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i.prol, i8 0, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  store ptr %i.q, ptr %i.p, align 8, !tbaa !51
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1803

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 8
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i, i8 0, i64 48, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store ptr %i.v, ptr %i.u, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store ptr %i.y, ptr %i.x, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 200
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 216
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 248
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 264
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 0, i64 48, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 296
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 312
  store ptr %i.an, ptr %i.am, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 0, i64 48, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 344
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 360
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !51
  %i.ar = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1804

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.as, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !99
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.at = icmp ult i64 %i.n, %1
  br i1 %i.at, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.au = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 192153584101141162) ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, 48
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #25 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f ; 3 uses
  %xtraiter48 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i30.prol ], [ %i.ay, %_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31.prol, i8 0, i64 48, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !51
  %i.bb = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 48 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1805

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ay, %_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bc, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bb, %.lr.ph.i.i.i30.prol ]
  %i.bd = icmp ult i64 %1, 8
  br i1 %i.bd, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.cc, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 25 uses
  %.057.i.i.i32 = phi i64 [ %i.cb, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31, i8 0, i64 48, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i8 0, i64 48, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i8 0, i64 48, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !51
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i8 0, i64 48, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 152
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, i8 0, i64 48, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 200
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 216
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i8 0, i64 48, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 248
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 264
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i8 0, i64 48, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 296
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 312
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, i8 0, i64 48, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 344
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 360
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !51
  %i.cb = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 384
  %.not.i.i.i33.7 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1804

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cw, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ax, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.cv, %_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  %i.cd = load i8, ptr %.0911.i.i.i, align 8, !tbaa !209, !alias.scope !1812, !noalias !1811
  store i8 %i.cd, ptr %.012.i.i.i, align 8, !tbaa !209, !alias.scope !1811, !noalias !1812
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !51, !alias.scope !1811, !noalias !1812
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !53, !alias.scope !1812, !noalias !1811 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !54, !alias.scope !1812, !noalias !1811 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false), !alias.scope !1813
  br label %_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !53, !alias.scope !1811, !noalias !1812
  %i.co = load i64, ptr %i.ci, align 8, !tbaa !40, !alias.scope !1812, !noalias !1811
  store i64 %i.co, ptr %i.cg, align 8, !tbaa !40, !alias.scope !1811, !noalias !1812
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !54, !alias.scope !1812, !noalias !1811
  br label %_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.cp = phi i64 [ %i.cl, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.cp, ptr %i.cr, align 8, !tbaa !54, !alias.scope !1811, !noalias !1812
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !53, !alias.scope !1812, !noalias !1811
  store i64 0, ptr %i.cq, align 8, !tbaa !54, !alias.scope !1812, !noalias !1811
  store i8 0, ptr %i.ci, align 8, !tbaa !40, !alias.scope !1812, !noalias !1811
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !1815, !alias.scope !1812, !noalias !1811
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !1815, !alias.scope !1811, !noalias !1812
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.cv, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1809

_ZNSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN8WasmEdge3AST10ExportDescES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN8WasmEdge3AST10ExportDescESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !1810
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cz) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST10ExportDescESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN8WasmEdge3AST10ExportDescESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN8WasmEdge3AST10ExportDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.f
  store ptr %i.ax, ptr %0, align 8, !tbaa !100
  %i.da = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %1
  store ptr %i.da, ptr %i.a, align 8, !tbaa !99
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.db, ptr %i.h, align 8, !tbaa !1810
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST10ExportDescEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST10ExportDescESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader8loadDescERNS_3AST10ExportDescE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST14ElementSegmentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !104    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 6                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1821
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 6                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 144115188075855871         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.p, align 8, !tbaa !1828
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.q, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 99, ptr %i.r, align 2, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  store i8 112, ptr %i.s, align 1, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  %i.u = add nsw i64 %1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST14ElementSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.x, align 8, !tbaa !1828
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 30
  store i8 99, ptr %i.z, align 2, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 31
  store i8 112, ptr %i.aa, align 1, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.ad, align 8, !tbaa !1828
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  store i32 0, ptr %i.ae, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 94
  store i8 99, ptr %i.af, align 2, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 95
  store i8 112, ptr %i.ag, align 1, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ah, i8 0, i64 28, i1 false)
  %i.ai = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST14ElementSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1816

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST14ElementSegmentEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !103
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST14ElementSegmentESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST14ElementSegmentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 144115188075855871) ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 6
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #25 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 9 uses
  %xtraiter44 = and i64 %1, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8WasmEdge3AST14ElementSegmentESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.aq, align 8, !tbaa !1828
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 0, ptr %i.ar, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 30
end_hunk_0
begin_hunk_1_@_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST11CodeSegmentEEEvT_S6_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !79
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i, !prof !68

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i

_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i:              ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.06, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1853 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.06, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !232
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #23
  br label %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i: ; preds = %bb.h, %_ZN8WasmEdge6SymbolIvED2Ev.exit.i.i
  %i.y = load ptr, ptr %.06, align 8, !tbaa !216  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !217 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i, %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZN8WasmEdge3AST11Instruction5resetEv.exit ], [ %i.y, %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i ] ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 25 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1             ; 4 uses
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  store i32 0, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ah = and i8 %i.ac, 2
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.n:                                             ; preds = %bb.k
  %i.al = and i8 %i.ac, 4
  %.not4.i = icmp eq i8 %i.al, 0
  br i1 %.not4.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 32) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = and i8 %i.ac, 8
  %.not5.i = icmp eq i8 %i.ao, 0
  br i1 %.not5.i, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !220 ; 3 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i4, label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !221
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #23
  br label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i

_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i: ; preds = %bb.t, %bb.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 40) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

_ZN8WasmEdge3AST11Instruction5resetEv.exit:       ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i
  %i.ay = load i8, ptr %i.ab, align 1
  %i.az = and i8 %i.ay, -16
  store i8 %i.az, ptr %i.ab, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.pr.i.i.i.i.i = load ptr, ptr %.06, align 8, !tbaa !216
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i
  %i.bb = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.y, %_ZNSt6vectorISt4pairIjN8WasmEdge7ValTypeEESaIS3_EED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !213
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #23
  br label %_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit

_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %.06, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.bh, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1852

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN8WasmEdge3AST11CodeSegmentEEvPT_.exit, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader11loadSegmentERNS_3AST11CodeSegmentE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1861
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.prol, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.p, align 8, !tbaa !1864
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1854

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.u, align 8, !tbaa !1864
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.x, align 8, !tbaa !1864
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.aa, align 8, !tbaa !1864
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.ad, align 8, !tbaa !1864
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1855

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !111
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 164703072086692425) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 56
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #25 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i31.prol, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.an, align 8, !tbaa !1864
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  %i.ap = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 56 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1856

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i31, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.as, align 8, !tbaa !1864
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.at, i8 0, i64 28, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.av, align 8, !tbaa !1864
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aw, i8 0, i64 28, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.ay, align 8, !tbaa !1864
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.az, i8 0, i64 28, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.bb, align 8, !tbaa !1864
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  %i.bd = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1855

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i37 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %i.bf = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !1866, !noalias !1865
  store <2 x ptr> %i.bf, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !1865, !noalias !1866
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !213, !alias.scope !1866, !noalias !1865
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !213, !alias.scope !1865, !noalias !1866
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1866, !noalias !1865
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1866, !noalias !1865
  store i64 %i.bl, ptr %i.bj, align 8, !alias.scope !1865, !noalias !1866
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !61, !alias.scope !1866, !noalias !1865
  store <2 x ptr> %i.bo, ptr %i.bm, align 8, !tbaa !61, !alias.scope !1865, !noalias !1866
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !59, !alias.scope !1866, !noalias !1865
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !59, !alias.scope !1865, !noalias !1866
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false), !alias.scope !1866, !noalias !1865
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.bs, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1860

_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11DataSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !1861
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bw) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST11DataSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN8WasmEdge3AST11DataSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.al, ptr %0, align 8, !tbaa !112
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %1
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !111
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.by, ptr %i.h, align 8, !tbaa !1861
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST11DataSegmentEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST11DataSegmentESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST11DataSegmentEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5 = icmp eq ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8WasmEdge3AST11DataSegmentEEvPT_.exit
  %.06 = phi ptr [ %i.aq, %_ZSt8_DestroyIN8WasmEdge3AST11DataSegmentEEvPT_.exit ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.06, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.b, %.lr.ph
  %i.h = load ptr, ptr %.06, align 8, !tbaa !216  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !217  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZN8WasmEdge3AST11Instruction5resetEv.exit ], [ %i.h, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 25 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  store i32 0, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = and i8 %i.l, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.h:                                             ; preds = %bb.e
  %i.u = and i8 %i.l, 4
  %.not4.i = icmp eq i8 %i.u, 0
  br i1 %.not4.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 32) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

bb.k:                                             ; preds = %bb.h
  %i.x = and i8 %i.l, 8
  %.not5.i = icmp eq i8 %i.x, 0
  br i1 %.not5.i, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %.05.i.i.i.i.i.i.i, align 16, !tbaa !40 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN8WasmEdge3AST11Instruction5resetEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !220 ; 3 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i4, label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !221
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #23
  br label %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i

_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i: ; preds = %bb.n, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 40) #23
  br label %_ZN8WasmEdge3AST11Instruction5resetEv.exit

_ZN8WasmEdge3AST11Instruction5resetEv.exit:       ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN8WasmEdge3AST11Instruction13TryDescriptorD2Ev.exit.i
  %i.ah = load i8, ptr %i.k, align 1
  %i.ai = and i8 %i.ah, -16
  store i8 %i.ai, ptr %i.k, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZN8WasmEdge3AST11Instruction5resetEv.exit
  %.pr.i.i.i.i.i = load ptr, ptr %.06, align 8, !tbaa !216
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.ak = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.h, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN8WasmEdge3AST11DataSegmentEEvPT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !213
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #23
  br label %_ZSt8_DestroyIN8WasmEdge3AST11DataSegmentEEvPT_.exit

_ZSt8_DestroyIN8WasmEdge3AST11DataSegmentEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %.06, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.aq, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1867

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN8WasmEdge3AST11DataSegmentEEvPT_.exit, %bb.a
  ret void
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN8WasmEdge3AST7TagTypeESaIS2_EE17_M_default_appendEm:bb.a
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1872
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !1870

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST7TagTypeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1872
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1872
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1872
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1872
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST7TagTypeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !1869

_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST7TagTypeEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN8WasmEdge3AST7TagTypeESaIS2_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIN8WasmEdge3AST7TagTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST7TagTypeEmS2_ET_S4_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge3AST7TagTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN8WasmEdge3AST7TagTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST7TagTypeEmS2_ET_S4_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN8WasmEdge3AST7TagTypeESaIS2_EE13_M_deallocateEPS2_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST7TagTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aw = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #23
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST7TagTypeESaIS2_EE13_M_deallocateEPS2_m.exit38

_ZNSt12_Vector_baseIN8WasmEdge3AST7TagTypeESaIS2_EE13_M_deallocateEPS2_m.exit38: ; preds = %_ZNSt6vectorIN8WasmEdge3AST7TagTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !116
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %1
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !115
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ay, ptr %i.h, align 8, !tbaa !1871
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8WasmEdge3AST7TagTypeEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST7TagTypeESaIS2_EE13_M_deallocateEPS2_m.exit38, %bb.a
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader8loadTypeERNS_3AST7TagTypeE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !129    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1873
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !127
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !127
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !128
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #25 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !127
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !127
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !1873
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !136    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1881
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.08.i.i.i.prol, i8 0, i64 41, i1 false)
  %i.p = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1874

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.prol ]
  %i.r = icmp ult i64 %1, 8
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.08.i.i.i, i8 0, i64 41, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.s, i8 0, i64 41, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.t, i8 0, i64 41, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.u, i8 0, i64 41, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.v, i8 0, i64 41, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.w, i8 0, i64 41, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.x, i8 0, i64 41, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.y, i8 0, i64 41, i1 false)
  %i.z = add i64 %.057.i.i.i, -8                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1875

_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aa, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !135
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ult i64 %i.n, %1
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #24
  unreachable

_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ac = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 192153584101141162) ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 48
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #25 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i30.prol ], [ %i.ag, %_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ah, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.08.i.i.i31.prol, i8 0, i64 41, i1 false)
  %i.ah = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 48 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1876

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ag, %_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ah, %.lr.ph.i.i.i30.prol ]
  %i.aj = icmp ult i64 %1, 8
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.as, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 9 uses
  %.057.i.i.i32 = phi i64 [ %i.ar, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.08.i.i.i31, i8 0, i64 41, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ak, i8 0, i64 41, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.al, i8 0, i64 41, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.am, i8 0, i64 41, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.an, i8 0, i64 41, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ao, i8 0, i64 41, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ap, i8 0, i64 41, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.aq, i8 0, i64 41, i1 false)
  %i.ar = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 384
  %.not.i.i.i33.7 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1875

_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i37 ], [ %i.af, %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.at = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !61, !alias.scope !1883, !noalias !1882
  store <2 x ptr> %i.at, ptr %.012.i.i.i, align 8, !tbaa !61, !alias.scope !1882, !noalias !1883
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !59, !alias.scope !1883, !noalias !1882
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !59, !alias.scope !1882, !noalias !1883
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1883, !noalias !1882
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.az = load <2 x i64>, ptr %i.ay, align 8, !tbaa !127, !alias.scope !1883, !noalias !1882
  store <2 x i64> %i.az, ptr %i.ax, align 8, !tbaa !127, !alias.scope !1882, !noalias !1883
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !40, !alias.scope !1883, !noalias !1882
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !40, !alias.scope !1882, !noalias !1883
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1880

_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !1881
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #23
  br label %_ZNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.af, ptr %0, align 8, !tbaa !136
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %1
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !135
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !1881
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt5tupleIJhmmSt6vectorIhSaIhEEEEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt5tupleIJhmmSt6vectorIhSaIhEEEESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !73}
!1 = distinct !{!1, !73}
!2 = distinct !{!2, !73}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{!6, !73}
!7 = !{i32 1, !"long-double-type", !"x86_fp80"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"_ZTSN8WasmEdge7ErrCode5ValueE", !12, i64 0}
!17 = !{!"long", !12, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"bool", !12, i64 0}
!21 = !{!"_ZTSSt22_Optional_payload_baseIN8WasmEdge4MMapEE", !12, i64 0, !20, i64 8}
!22 = !{!"_ZTSSt17_Optional_payloadIN8WasmEdge4MMapELb1ELb0ELb0EE", !21, i64 0}
!23 = !{!"_ZTSSt17_Optional_payloadIN8WasmEdge4MMapELb0ELb0ELb0EE", !22, i64 0}
!24 = !{!"_ZTSSt14_Optional_baseIN8WasmEdge4MMapELb0ELb0EE", !23, i64 0}
!25 = !{!"_ZTSSt8optionalIN8WasmEdge4MMapEE", !24, i64 0}
!26 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIhSaIhEEE", !12, i64 0, !20, i64 24}
!27 = !{!"_ZTSSt17_Optional_payloadISt6vectorIhSaIhEELb1ELb0ELb0EE", !26, i64 0}
!28 = !{!"_ZTSSt17_Optional_payloadISt6vectorIhSaIhEELb0ELb0ELb0EE", !27, i64 0}
!29 = !{!"_ZTSSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EE", !28, i64 0}
!30 = !{!"_ZTSSt8optionalISt6vectorIhSaIhEEE", !29, i64 0}
!31 = !{!"_ZTSN8WasmEdge7FileMgrE", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !19, i64 32, !25, i64 40, !30, i64 56}
!32 = !{!31, !17, i64 16}
!33 = !{!"_ZTSN8WasmEdge3AST7SectionE", !17, i64 0, !17, i64 8}
!34 = !{!33, !17, i64 8}
!35 = !{!"_ZTSN5cxx206detail21expected_storage_baseIjN8WasmEdge7ErrCodeELb1ELb1EEE", !20, i64 0, !12, i64 4}
!36 = !{!35, !20, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!31, !17, i64 8}
!40 = !{!12, !12, i64 0}
!41 = !{!"_ZTSN8WasmEdge7ErrInfo11InfoLoadingE", !17, i64 0}
!42 = !{!41, !17, i64 0}
!43 = !{!"_ZTSN8WasmEdge11ASTNodeAttrE", !12, i64 0}
!44 = !{!"_ZTSN8WasmEdge7ErrInfo7InfoASTE", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!"_ZTSN5cxx206detail21expected_storage_baseIvN8WasmEdge7ErrCodeELb0ELb1EEE", !20, i64 0, !12, i64 4}
!47 = !{!46, !20, i64 0}
!48 = !{!31, !17, i64 24}
!49 = !{!33, !17, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!51 = !{!50, !19, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !17, i64 8, !12, i64 16}
!53 = !{!52, !19, i64 0}
!54 = !{!52, !17, i64 8}
!55 = !{!"_ZTSN5cxx206detail21expected_storage_baseISt6vectorIhSaIhEEN8WasmEdge7ErrCodeELb0ELb1EEE", !20, i64 0, !12, i64 8}
!56 = !{!55, !20, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!58 = !{!57, !19, i64 0}
!59 = !{!57, !19, i64 16}
!60 = !{!57, !19, i64 8}
!61 = !{!19, !19, i64 0}
!62 = !{!"p1 _ZTSN8WasmEdge3AST7SubTypeE", !18, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST7SubTypeESaIS2_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!63, !62, i64 0}
!65 = !{!63, !62, i64 8}
!66 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEE", !12, i64 0, !12, i64 72}
!67 = !{!66, !12, i64 72}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = !{!"p1 int", !18, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!70, !69, i64 0}
!72 = !{!70, !69, i64 16}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"_ZTSN5cxx206detail21expected_storage_baseIhN8WasmEdge7ErrCodeELb1ELb1EEE", !20, i64 0, !12, i64 4}
!75 = !{!74, !20, i64 0}
!76 = !{!63, !62, i64 16}
!77 = !{!62, !62, i64 0}
!78 = !{!"_ZTSSt22_Optional_payload_baseIN8WasmEdge3AST7SubType7RecInfoEE", !12, i64 0, !20, i64 8}
!79 = !{!13, !13, i64 0}
!80 = !{!"p1 _ZTSN8WasmEdge3AST10ImportDescE", !18, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!81, !80, i64 8}
!83 = !{!81, !80, i64 0}
!84 = !{!70, !69, i64 8}
!85 = !{!"p1 _ZTSN8WasmEdge3AST12TableSegmentE", !18, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST12TableSegmentESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 8}
!88 = !{!86, !85, i64 0}
!89 = !{!"p1 _ZTSN8WasmEdge3AST10MemoryTypeE", !18, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST10MemoryTypeESaIS2_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!90, !89, i64 8}
!92 = !{!90, !89, i64 0}
!93 = !{!"p1 _ZTSN8WasmEdge3AST13GlobalSegmentE", !18, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!94, !93, i64 8}
!96 = !{!94, !93, i64 0}
end_hunk_2
