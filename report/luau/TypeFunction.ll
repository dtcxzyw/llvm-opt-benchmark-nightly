Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeFunction?download=true
inline.NumInlined: 2735
inline.NumDeleted: 1179
begin_hunk_0_@_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_4TypeE:bb.a
  %i.fk = load ptr, ptr %i.p, align 8, !tbaa !331
  br label %.invoke

.invoke:                                          ; preds = %bb.bh, %bb.bi, %bb.bb, %bb.bc, %_ZN4Luau3getINS_8LazyTypeEEEPKT_PKNS_4TypeE.exit, %bb.ai, %bb.s, %bb.w, %bb.af, %bb.h, %bb.n, %bb.aw, %bb.bo
  %i.fl = phi ptr [ %i.fk, %bb.bo ], [ %i.dl, %bb.aw ], [ %i.aj, %bb.n ], [ %i.u, %bb.h ], [ %i.bz, %bb.af ], [ %i.bi, %bb.w ], [ %i.az, %bb.s ], [ %i.cg, %bb.ai ], [ %i.el, %_ZN4Luau3getINS_8LazyTypeEEEPKT_PKNS_4TypeE.exit ], [ %.0360, %bb.bb ], [ %.0360, %bb.bc ], [ %.0360, %bb.bi ], [ %.0360, %bb.bh ]
  invoke void @_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %i.fl)
          to label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.fm)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
  %i.fn = load ptr, ptr %0, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 192
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = invoke noundef zeroext i1 %i.fp(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull %.0360, ptr noundef nonnull align 8 dereferenceable(228) %i.p)
          to label %bb.bq unwind label %.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.fq, label %bb.br, label %.loopexit456

bb.br:                                            ; preds = %bb.bq
  %i.fr = getelementptr inbounds nuw i8, ptr %.0360, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !36 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0360, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !36 ; 2 uses
  %.not464 = icmp eq ptr %i.fs, %i.fu
  br i1 %.not464, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bt, %bb.br
  %i.fv = getelementptr inbounds nuw i8, ptr %.0360, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !40 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0360, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !40 ; 2 uses
  %.not434466 = icmp eq ptr %i.fw, %i.fy
  br i1 %.not434466, label %.loopexit456, label %.lr.ph469

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph478, %bb.an, %bb.ap, %bb.al, %bb.aa, %bb.ac, %bb.y, %bb.ba, %.lr.ph486, %.lr.ph482, %bb.bg, %.lr.ph473, %_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit.invoke, %.invoke, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit, %_ZN4Luau3getINS_20PendingExpansionTypeEEEPKT_PKNS_4TypeE.exit, %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit, %bb.ar, %bb.at, %bb.av, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit, %bb.p, %bb.q, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit, %bb.j, %bb.k, %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_4TypeEEEEEPKT_S5_.exit, %bb.d, %_ZN4Luau2isIJNS_9Unifiable5BoundIPKNS_4TypeEEEERS5_EEbOT0_.exit.thread, %bb.ae, %bb.t, %bb.ah, %_ZN4Luau3getINS_13MetatableTypeEEEPKT_PKNS_4TypeE.exit, %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %lpad.loopexit.split-lp584 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bs:                                            ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.lr.ph:                                           ; preds = %bb.br, %bb.bt
  %.sroa.0274.0465 = phi ptr [ %i.gb, %bb.bt ], [ %i.fs, %bb.br ] ; 2 uses
  %i.ga = load ptr, ptr %.sroa.0274.0465, align 8, !tbaa !83
  invoke void @_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %i.ga)
          to label %bb.bt unwind label %.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %.lr.ph
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0274.0465, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gb, %i.fu
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph469:                                        ; preds = %._crit_edge, %bb.bu
  %.sroa.0270.0467 = phi ptr [ %i.gd, %bb.bu ], [ %i.fw, %._crit_edge ] ; 2 uses
  %i.gc = load ptr, ptr %.sroa.0270.0467, align 8, !tbaa !133
  invoke void @_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %i.gc)
          to label %bb.bu unwind label %.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %.lr.ph469
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0270.0467, i64 8 ; 2 uses
  %.not434 = icmp eq ptr %i.gd, %i.fy
  br i1 %.not434, label %.loopexit456, label %.lr.ph469

.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph469, %.lr.ph, %bb.bp
  %lpad.loopexit.split-lp589 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.bv

.loopexit456:                                     ; preds = %bb.bu, %._crit_edge, %bb.bq
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread

bb.bv:                                            ; preds = %.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bs
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp589, %.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fz, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit.split-lp

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %bb.bm, %bb.bf, %bb.az, %_ZN4Luau3getINS_11BlockedTypeEEEPKT_PKNS_4TypeE.exit.invoke, %.invoke, %bb.f, %._crit_edge474, %bb.be, %bb.ay, %bb.e, %bb.g, %bb.u, %._crit_edge496, %bb.au, %bb.aj, %bb.bd, %bb.bj, %.loopexit456, %bb.bn, %_ZN4Luau3getINS_8LazyTypeEEEPKT_PKNS_4TypeE.exit, %bb.ax, %bb.ag, %bb.o, %bb.q, %bb.i, %bb.m, %bb.l, %bb.d
  call void @_ZN4Luau16RecursionCounterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bv
  %.pn244 = phi { ptr, i32 } [ %.pn.pn, %bb.bv ], [ %lpad.loopexit.split-lp584, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau16RecursionCounterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn244
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4LuauL23reduceFunctionsInternalENS_8VecDequeIPKNS_4TypeESaIS3_EEENS0_IPKNS_11TypePackVarESaIS8_EEENS_12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toISD_EEESt6vectorIS3_S4_ENS_8LocationENS_7NotNullINS_19TypeFunctionContextEEEb(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) %4, ptr noundef byval(%"struct.Luau::Location") align 8 %5, ptr %6, i1 noundef zeroext %7) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit:
  %8 = alloca %"struct.Luau::TypeFunctionReducer", align 8 ; 42 uses
  %9 = alloca %"struct.Luau::CodeTooComplex", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  store ptr null, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  store i64 0, ptr %i.d, align 8, !tbaa !38
  %i.f = load ptr, ptr %2, align 8, !tbaa !40
  store ptr null, ptr %2, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.b, align 8, !tbaa !38
  store i64 0, ptr %i.b, align 8, !tbaa !38
  store i64 0, ptr %i.c, align 8, !tbaa !38
  %i.r = load i64, ptr %i.i, align 8, !tbaa !38
  store i64 0, ptr %i.i, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.g, align 8, !tbaa !38
  store i64 0, ptr %i.g, align 8, !tbaa !38
  store i64 0, ptr %i.h, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.z = load <2 x i64>, ptr %i.k, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 24, i1 false)
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %4, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %6, ptr %8, align 8, !tbaa !135
  store ptr %i.a, ptr %i.o, align 8, !tbaa !37
  store <2 x i64> %i.q, ptr %i.p, align 8, !tbaa !38
  store i64 %i.e, ptr %i.s, align 8, !tbaa !35
  store ptr %i.f, ptr %i.t, align 8, !tbaa !42
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !38
  store i64 %i.r, ptr %i.w, align 8, !tbaa !43
  store ptr %i.j, ptr %i.x, align 8, !tbaa !47
  store <2 x i64> %i.z, ptr %i.y, align 8, !tbaa !38
  store ptr %i.m, ptr %i.ab, align 8, !tbaa !48
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 264 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 304 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 344 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 384 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ag, i8 0, i64 80, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  %i.al = zext i1 %7 to i8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  store i8 %i.al, ptr %i.am, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !333
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 336
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !336
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 240 ; 4 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !350, !range !65, !noundef !81
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 0, i64 32, i1 false)
  br label %bb.m

bb.b:                                             ; preds = %_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit
  store i8 1, ptr %i.as, align 8, !tbaa !350
  br label %bb.c

bb.c:                                             ; preds = %_ZN4Luau19TypeFunctionReducer4stepEv.exit, %bb.b
  %.05 = phi i32 [ 0, %bb.b ], [ %i.be, %_ZN4Luau19TypeFunctionReducer4stepEv.exit ] ; 2 uses
  %i.az = load i64, ptr %i.s, align 8, !tbaa !35
  %i.ba = icmp eq i64 %i.az, 0                    ; 2 uses
  %i.bb = load i64, ptr %i.w, align 8
  %i.bc = icmp eq i64 %i.bb, 0                    ; 2 uses
  %i.bd = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %i.bd, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4Luau19TypeFunctionReducer8stepTypeEv(ptr noundef nonnull align 8 dereferenceable(444) %8)
          to label %_ZN4Luau19TypeFunctionReducer4stepEv.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  br i1 %i.bc, label %_ZN4Luau19TypeFunctionReducer4stepEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4Luau19TypeFunctionReducer8stepPackEv(ptr noundef nonnull align 8 dereferenceable(444) %8)
          to label %_ZN4Luau19TypeFunctionReducer4stepEv.exit unwind label %bb.j

_ZN4Luau19TypeFunctionReducer4stepEv.exit:        ; preds = %bb.f, %bb.e, %bb.g
  %i.be = add nuw nsw i32 %.05, 1
  %i.bf = load i32, ptr @_ZN5DFInt40LuauTypeFamilyGraphReductionMaximumStepsE, align 8, !tbaa !68
  %.not = icmp slt i32 %.05, %i.bf
  br i1 %.not, label %bb.c, label %bb.h, !llvm.loop !332

bb.h:                                             ; preds = %_ZN4Luau19TypeFunctionReducer4stepEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !158 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !159
  %.not.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i, label %bb.i, label %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_14CodeTooComplexEEEEvPT_DpOT0_.exit.i

_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_14CodeTooComplexEEEEvPT_DpOT0_.exit.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !160
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 0, ptr %i.bm, align 8, !tbaa !60
  store i8 0, ptr %i.bl, align 8, !tbaa !59
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i32 15, ptr %i.bn, align 8, !tbaa !162
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !158
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 184
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !158
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_14CodeTooComplexEEEERS1_DpOT_.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE17_M_realloc_insertIJRNS0_8LocationENS0_14CodeTooComplexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_14CodeTooComplexEEEERS1_DpOT_.exit unwind label %bb.k

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_14CodeTooComplexEEEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt15__new_allocatorIN4Luau9TypeErrorEE9constructIS1_JRNS0_8LocationENS0_14CodeTooComplexEEEEvPT_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.l

.loopexit:                                        ; preds = %bb.c, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRNS0_8LocationENS0_14CodeTooComplexEEEERS1_DpOT_.exit
  %i.bs = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !163
  store <2 x ptr> %i.bs, ptr %0, align 8, !tbaa !163
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ag, i8 0, i64 24, i1 false)
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !164
  %i.bz = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !163
  %i.ca = insertelement <4 x ptr> poison, ptr %i.bx, i64 0
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %i.by, i64 1
  %i.cc = shufflevector <2 x ptr> %i.bz, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x ptr> %i.cb, <4 x ptr> %i.cc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.cd, ptr %i.bt, align 8, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !165
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !165
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.cj = load <2 x i64>, ptr %i.ci, align 8, !tbaa !38
  store <2 x i64> %i.cj, ptr %i.ch, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 248
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !351
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !351
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i8 0, i64 24, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.co = load ptr, ptr %i.ah, align 8, !tbaa !166
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !166
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.cr = load <2 x i64>, ptr %i.cq, align 8, !tbaa !38
  store <2 x i64> %i.cr, ptr %i.cp, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !352
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i8 0, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cw = load ptr, ptr %i.ai, align 8, !tbaa !165
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !165
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.cz = load <2 x i64>, ptr %i.cy, align 8, !tbaa !38
  store <2 x i64> %i.cz, ptr %i.cx, align 8, !tbaa !38
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 328
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !351
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !351
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !166
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !166
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 352
  %i.dh = load <2 x i64>, ptr %i.dg, align 8, !tbaa !38
  store <2 x i64> %i.dh, ptr %i.df, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 368
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !352
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i8 0, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dm = load ptr, ptr %i.ak, align 8, !tbaa !165
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !165
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 392
  %i.dp = load <2 x i64>, ptr %i.do, align 8, !tbaa !38
  store <2 x i64> %i.dp, ptr %i.dn, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 408
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !351
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !351
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i8 0, i64 24, i1 false)
  store i8 0, ptr %i.as, align 8, !tbaa !350
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn16 = phi { ptr, i32 } [ %i.bq, %bb.j ], [ %i.br, %bb.k ]
  store i8 0, ptr %i.as, align 8, !tbaa !350
  call void @_ZN4Luau19TypeFunctionReducerD2Ev(ptr noundef nonnull align 8 dead_on_return(444) dereferenceable(444) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  resume { ptr, i32 } %.pn16

bb.m:                                             ; preds = %.loopexit, %bb.a
  call void @_ZN4Luau28FunctionGraphReductionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.ag) #26
  %i.dt = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i37, label %_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #26
  br label %_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i

_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i: ; preds = %bb.n, %bb.m
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.o

end_hunk_0
