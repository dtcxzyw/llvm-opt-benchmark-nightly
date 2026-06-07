inline.NumInlined: 1310
inline.NumDeleted: 761
begin_hunk_0_@_ZN6duckdb18ListLambdaBindData9SerializeERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_14ScalarFunctionE:bb.a
_ZN6duckdb10Serializer24WritePropertyWithDefaultIbEEvtPKcRKT_S6_.exit: ; preds = %bb.f, %bb.g
  %.sink.i17 = phi i1 [ true, %bb.g ], [ false, %bb.f ]
  %i.bw = load ptr, ptr %0, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %.sink.i17), !inline_history !147
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ListLambdaBindData11DeserializeERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.94") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(360) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = load ptr, ptr %1, align 8, !tbaa !67, !noalias !148
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !148
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str), !noalias !148, !inline_history !151
  %i.d = load ptr, ptr %1, align 8, !tbaa !67, !noalias !152
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noalias !152
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !152, !inline_history !155
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.g = load ptr, ptr %1, align 8, !tbaa !67, !noalias !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %bb.c, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.n, %bb.c ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  br label %common.resume

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !67, !noalias !148
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !67, !noalias !156
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !noalias !156
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.1)
          to label %.noexc unwind label %bb.k, !inline_history !159

.noexc:                                           ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !67, !noalias !156 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !156
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.k, !inline_history !159

bb.e:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !noalias !160
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc14 unwind label %bb.k, !inline_history !159

.noexc14:                                         ; preds = %bb.e
  br i1 %i.x, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %bb.f

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i: ; preds = %.noexc14
  %i.y = load ptr, ptr %1, align 8, !tbaa !67, !noalias !160
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !160
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc15 unwind label %bb.k, !inline_history !159

.noexc15:                                         ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !160
  invoke void @_ZN6duckdb10Expression11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc16 unwind label %bb.k

.noexc16:                                         ; preds = %.noexc15
  %i.ab = load ptr, ptr %3, align 8, !tbaa !142, !noalias !160 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !160
  %i.ac = load ptr, ptr %1, align 8, !tbaa !67, !noalias !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !160
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.f unwind label %bb.g, !noalias !160

bb.f:                                             ; preds = %.noexc16, %.noexc14
  %.sroa.040.2 = phi ptr [ %i.ab, %.noexc16 ], [ null, %.noexc14 ] ; 4 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !67, !noalias !160
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !160
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i unwind label %bb.g, !noalias !160

bb.g:                                             ; preds = %bb.f, %.noexc16
  %.ph.i.i = phi ptr [ %i.ab, %.noexc16 ], [ %.sroa.040.2, %bb.f ] ; 2 uses
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %.ph.i.i, null
  br i1 %.not.i6.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32, label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.h, %bb.g
  %.sink8.i = phi ptr [ %.sroa.040.2, %bb.h ], [ %.ph.i.i, %bb.g ] ; 2 uses
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %lpad.thr_comm.split-lp.i.i, %bb.g ]
  %i.ai = load ptr, ptr %.sink8.i, align 8, !tbaa !67, !noalias !156
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !156
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(88) %.sink8.i) #19, !noalias !156, !inline_history !159
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32

_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i: ; preds = %bb.f
  %i.al = load ptr, ptr %1, align 8, !tbaa !67, !noalias !156
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !noalias !156
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext true)
          to label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.h, !noalias !156

bb.h:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.040.2, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32, label %common.resume.sink.split.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i
  %.sroa.040.3 = phi ptr [ %.sroa.040.2, %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i ], [ null, %bb.d ] ; 7 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.2)
          to label %.noexc17 unwind label %bb.l, !inline_history !163

.noexc17:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc18 unwind label %bb.l, !inline_history !163

.noexc18:                                         ; preds = %.noexc17
  %i.aw = load ptr, ptr %1, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyIbEET_tPKc.exit unwind label %bb.l, !inline_history !163

_ZN6duckdb12Deserializer12ReadPropertyIbEET_tPKc.exit: ; preds = %.noexc18
  %i.az = load ptr, ptr %1, align 8, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 103, ptr noundef nonnull @.str.3)
          to label %.noexc20 unwind label %bb.m, !inline_history !164 ; 2 uses

.noexc20:                                         ; preds = %_ZN6duckdb12Deserializer12ReadPropertyIbEET_tPKc.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc21 unwind label %bb.m, !inline_history !164

.noexc21:                                         ; preds = %bb.i
  %i.bh = load ptr, ptr %1, align 8, !tbaa !67
  %i.bi = zext i1 %i.bg to i8
  br label %bb.j

bb.j:                                             ; preds = %.noexc21, %.noexc20
  %.sink7.i = phi ptr [ %i.bh, %.noexc21 ], [ %i.bd, %.noexc20 ]
  %.0.i = phi i8 [ %i.bi, %.noexc21 ], [ 0, %.noexc20 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink7.i, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.bc)
          to label %_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultIbEET_tPKcS2_.exit unwind label %bb.m, !inline_history !164

_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultIbEET_tPKcS2_.exit: ; preds = %bb.j
  %i.bl = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc23 unwind label %bb.n   ; 8 uses

.noexc23:                                         ; preds = %_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultIbEET_tPKcS2_.exit
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN6duckdb18ListLambdaBindDataE, i32 0, i32 0, i32 2), ptr %i.bl, align 8, !tbaa !67, !noalias !165
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit29 unwind label %.body.i, !noalias !165, !inline_history !168

.body.i:                                          ; preds = %.noexc23
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.bl) #19, !noalias !165, !inline_history !168
  %.not.i6.i = icmp eq ptr %.sroa.040.3, null
  br i1 %.not.i6.i, label %.body24.thread, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i7.i: ; preds = %.body.i
  %i.bo = load ptr, ptr %.sroa.040.3, align 8, !tbaa !67, !noalias !165
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !165
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.040.3) #19, !noalias !165, !inline_history !169
  br label %.body24.thread

.body24.thread:                                   ; preds = %.body.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i7.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #21, !noalias !165
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit29: ; preds = %.noexc23
  %i.br = ptrtoint ptr %.sroa.040.3 to i64
  %i.bs = zext i1 %i.av to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !142, !noalias !165
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i8 %i.bs, ptr %i.bu, align 8, !tbaa !170, !noalias !165
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 41
  store i8 %.0.i, ptr %i.bv, align 1, !tbaa !180, !noalias !165
  store ptr %i.bl, ptr %0, align 8, !tbaa !181
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.k:                                             ; preds = %.noexc15, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, %bb.e, %bb.d, %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32

bb.l:                                             ; preds = %.noexc18, %.noexc17, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.m:                                             ; preds = %bb.j, %bb.i, %_ZN6duckdb12Deserializer12ReadPropertyIbEET_tPKc.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.n:                                             ; preds = %_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultIbEET_tPKcS2_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.l ], [ %i.by, %bb.m ], [ %i.bz, %bb.n ] ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.040.3, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i34

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i34: ; preds = %.body24
  %i.ca = load ptr, ptr %.sroa.040.3, align 8, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.040.3) #19, !inline_history !183
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i34, %.body24, %.body24.thread, %bb.g, %common.resume.sink.split.i, %bb.h, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.bw, %bb.k ], [ %lpad.thr_comm.split-lp.i.i, %bb.g ], [ %i.ao, %bb.h ], [ %i.bn, %.body24.thread ], [ %.pn.pn, %.body24 ], [ %.pn.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i34 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LambdaFunctions22DetermineListChildTypeERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !184
  switch i8 %i.a, label %bb.d [
    i8 1, label %bb.i
    i8 2, label %bb.i
    i8 108, label %bb.b
    i8 101, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ArrayType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.sink = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %1, %bb.a ], [ %1, %bb.a ]
  tail call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sink)
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn16, %bb.h ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ArrayType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LambdaFunctions18BindBinaryChildrenERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEEm(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @_ZN6duckdb15LambdaFunctions22DetermineListChildTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  switch i64 %2, label %bb.e [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef zeroext 14)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #2

declare void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LambdaFunctions21ListLambdaPrepareBindERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_13ClientContextERNS_14ScalarFunctionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.94") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(360) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 10 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %7 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i8, ptr %i.c, align 8, !tbaa !184
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 1)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %bb.c unwind label %bb.p       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %4, align 8, !tbaa !184
  store i8 %i.h, ptr %i.g, align 8, !tbaa !184
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !189
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !189
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !191  ; 8 uses
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !190
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.s, align 8, !tbaa !192
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !194
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #19, !inline_history !195
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #19, !inline_history !195
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, !prof !197

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #19
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e, %bb.c
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !191 ; 8 uses
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !190
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i4.i.i, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ai, align 8, !tbaa !192
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !194
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #19, !inline_history !195
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #19, !inline_history !195
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

bb.l:                                             ; preds = %bb.j
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i5.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i5.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i

bb.n:                                             ; preds = %bb.l
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i7.i.i = phi i32 [ %i.al, %bb.m ], [ %i.av, %bb.n ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i7.i.i, 1
  br i1 %i.aw, label %bb.o, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit, !prof !197

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #19
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

_ZN6duckdb11LogicalTypeaSEOS0_.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i, %bb.o
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.ay = load i8, ptr %5, align 8, !tbaa !184
  store i8 %i.ay, ptr %i.ax, align 8, !tbaa !184
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !189
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !189
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !190
  %i.bf = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !190
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !190
  store <2 x ptr> %i.bf, ptr %i.bd, align 8, !tbaa !190
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  %i.bg = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22, !noalias !198 ; 8 uses
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN6duckdb18ListLambdaBindDataE, i32 0, i32 0, i32 2), ptr %i.bg, align 8, !tbaa !67, !noalias !198
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_ZNSt10unique_ptrIN6duckdb18ListLambdaBindDataESt14default_deleteIS1_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit5.i, !noalias !198, !inline_history !168

common.resume:                                    ; preds = %bb.p, %bb.t, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit23, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit5.i ], [ %i.bm, %bb.p ], [ %i.bt, %bb.t ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit23 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit5.i: ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.bg) #19, !noalias !198, !inline_history !168
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #21, !noalias !198
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb18ListLambdaBindDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 0, ptr %i.bj, align 8, !tbaa !142, !noalias !198
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i8 0, ptr %i.bk, align 8, !tbaa !170, !noalias !198
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 41
  store i8 0, ptr %i.bl, align 1, !tbaa !180, !noalias !198
  br label %bb.z

bb.p:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

bb.q:                                             ; preds = %bb.a
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.bo = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !184
  %i.br = icmp eq i8 %i.bq, 2
  br i1 %i.br, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bs) #19
  br label %common.resume

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0) ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !142
  store i64 %i.bv, ptr %7, align 8, !tbaa !142
  store ptr null, ptr %i.bu, align 8, !tbaa !142
  invoke void @_ZN6duckdb19BoundCastExpression18AddArrayCastToListERNS_13ClientContextENS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull %7)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.w unwind label %bb.y       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bx = load ptr, ptr %6, align 8, !tbaa !142
  store ptr null, ptr %6, align 8, !tbaa !142
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !142 ; 3 uses
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !142
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.w
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(88) %i.by) #19, !inline_history !201
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.cc = load ptr, ptr %6, align 8, !tbaa !142   ; 3 uses
  %.not.i14 = icmp eq ptr %i.cc, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(88) %i.cc) #19, !inline_history !183
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  %i.cg = load ptr, ptr %7, align 8, !tbaa !142   ; 3 uses
  %.not.i15 = icmp eq ptr %i.cg, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit17, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i16

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i16: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(88) %i.cg) #19, !inline_history !183
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit17: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit20

bb.y:                                             ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %6, align 8, !tbaa !142   ; 3 uses
  %.not.i18 = icmp eq ptr %i.cm, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit20, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i19

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i19: ; preds = %bb.y
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #19, !inline_history !183
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit20

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit20: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i19, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.x ], [ %i.cl, %bb.y ], [ %i.cl, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i19 ]
  %i.cq = load ptr, ptr %7, align 8, !tbaa !142   ; 3 uses
  %.not.i21 = icmp eq ptr %i.cq, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit23, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i22

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i22: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit20
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !67
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(88) %i.cq) #19, !inline_history !183
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit23

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit23: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit20, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit17, %_ZNSt10unique_ptrIN6duckdb18ListLambdaBindDataESt14default_deleteIS1_EED2Ev.exit
  %storemerge = phi ptr [ null, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit17 ], [ %i.bg, %_ZNSt10unique_ptrIN6duckdb18ListLambdaBindDataESt14default_deleteIS1_EED2Ev.exit ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !181
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.e = load ptr, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  store i64 %i.i, ptr %i.b, align 8, !tbaa !20
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !197

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.e = load ptr, ptr %0, align 8, !tbaa !188    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  store i64 %i.i, ptr %i.b, align 8, !tbaa !20
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZN6duckdb19BoundCastExpression18AddArrayCastToListERNS_13ClientContextENS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(512), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LambdaFunctions14ListLambdaBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.94") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::unique_ptr.94", align 8 ; 5 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN6duckdb15LambdaFunctions21ListLambdaPrepareBindERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_13ClientContextERNS_14ScalarFunctionE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.94") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2)
  %i.b = load ptr, ptr %5, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit16

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundLambdaExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !142  ; 4 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !142
  %i.i = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc unwind label %.body    ; 8 uses

.noexc:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN6duckdb18ListLambdaBindDataE, i32 0, i32 0, i32 2), ptr %i.i, align 8, !tbaa !67, !noalias !206
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.c unwind label %.body.i, !noalias !206, !inline_history !168

.body.i:                                          ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.i) #19, !noalias !206, !inline_history !168
  %.not.i5.i = icmp eq i64 %i.g, 0
  br i1 %.not.i5.i, label %.body.thread, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i: ; preds = %.body.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !67, !noalias !206
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !206
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(88) %i.h) #19, !noalias !206, !inline_history !209
  br label %.body.thread

.body.thread:                                     ; preds = %.body.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #21, !noalias !206
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit

.body:                                            ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i10 = icmp eq i64 %i.g, 0
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i11: ; preds = %.body
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(88) %i.h) #19, !inline_history !183
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %.body.thread, %.body, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i11
  %.pn = phi { ptr, i32 } [ %i.p, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i11 ], [ %i.l, %.body.thread ], [ %i.p, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.g, ptr %i.t, align 8, !tbaa !142, !noalias !206
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 %i.a, ptr %i.u, align 8, !tbaa !170, !noalias !206
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 41
  store i8 0, ptr %i.v, align 1, !tbaa !180, !noalias !206
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit16: ; preds = %bb.a, %bb.c
  %storemerge.in = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.a ]
  %storemerge = ptrtoint ptr %storemerge.in to i64
  store i64 %storemerge, ptr %0, align 8, !tbaa !210
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundLambdaExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !211
  %.not = icmp eq i8 %i.b, 41
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LambdaFunctions21ListTransformFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"struct.duckdb::LambdaFunctions::LambdaInfo", align 8 ; 17 uses
  %6 = alloca %"class.duckdb::vector.24", align 8 ; 8 uses
  %7 = alloca %"struct.duckdb::LambdaFunctions::ColumnInfo", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::LambdaExecuteInfo", align 8 ; 14 uses
  %9 = alloca %"class.duckdb::Vector", align 8    ; 9 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  store i8 0, ptr %i.h, align 1, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN6duckdb15LambdaFunctions10LambdaInfoC2ERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorERb(ptr noundef nonnull align 8 dereferenceable(156) %5, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  %i.i = load i8, ptr %i.h, align 1, !tbaa !146, !range !140, !noundef !141
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN6duckdbL13ExecuteLambdaINS_20ListTransformFunctorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  invoke void @_ZN6duckdb15LambdaFunctions20GetMutableColumnInfoERNS_6vectorINS0_10ColumnInfoELb1ESaIS2_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.24") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 0)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 6 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_6VectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !217
  store ptr %i.q, ptr %7, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #19
  br label %.body.i

_ZN6duckdb15SelectionVectorC2Em.exit.i.i:         ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.u)
          to label %_ZN6duckdb15LambdaFunctions10ColumnInfoC2ERNS_6VectorE.exit.i unwind label %bb.i

end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !23, !alias.scope !302, !noalias !305
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !196, !alias.scope !305, !noalias !302
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !196, !alias.scope !302, !noalias !305
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !249, !alias.scope !305, !noalias !302
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !249, !alias.scope !302, !noalias !305
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !23, !alias.scope !305, !noalias !302
  store i64 0, ptr %i.bi, align 8, !tbaa !249, !alias.scope !305, !noalias !302
  store i8 0, ptr %i.ba, align 8, !tbaa !196, !alias.scope !305, !noalias !302
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !301

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #21
  br label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !289
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !292
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !294
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE17_M_realloc_insertIJRNS0_6VectorEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
  unreachable

_ZNKSt6vectorIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 112                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 82351536043346212)
  %i.l = select i1 %i.j, i64 82351536043346212, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 112
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  store ptr %2, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #19
  br label %.thread

_ZN6duckdb15SelectionVectorC2Em.exit.i:           ; preds = %_ZNKSt6vectorIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.u)
          to label %_ZNSt16allocator_traitsISaIN6duckdb15LambdaFunctions10ColumnInfoEEE9constructIS2_JRNS0_6VectorEEEEvRS3_PT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #19
  br label %.thread

_ZNSt16allocator_traitsISaIN6duckdb15LambdaFunctions10ColumnInfoEEE9constructIS2_JRNS0_6VectorEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %i.w = invoke noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN6duckdb15LambdaFunctions10ColumnInfoEES4_ET0_T_S7_S6_(ptr %i.c, ptr %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.f ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN6duckdb15LambdaFunctions10ColumnInfoEEE9constructIS2_JRNS0_6VectorEEEEvRS3_PT_DpOT0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = invoke noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN6duckdb15LambdaFunctions10ColumnInfoEES4_ET0_T_S7_S6_(ptr %1, ptr %i.b, ptr noundef nonnull %i.x)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb15LambdaFunctions10ColumnInfoEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 ] ; 2 uses
  tail call void @_ZN6duckdb15LambdaFunctions10ColumnInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.05.i.i) #19
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb15LambdaFunctions10ColumnInfoEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !309

_ZSt8_DestroyIPN6duckdb15LambdaFunctions10ColumnInfoEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb15LambdaFunctions10ColumnInfoEEvT_S4_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #21
  br label %_ZNSt12_Vector_baseIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb15LambdaFunctions10ColumnInfoEEvT_S4_.exit, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !308
  store ptr %i.y, ptr %i.a, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !15
  ret void

.thread:                                          ; preds = %bb.c, %bb.d
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #19 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %_ZNSt16allocator_traitsISaIN6duckdb15LambdaFunctions10ColumnInfoEEE9constructIS2_JRNS0_6VectorEEEEvRS3_PT_DpOT0_.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #19 ; 0 uses
  tail call void @_ZN6duckdb15LambdaFunctions10ColumnInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.q) #19
  br label %.loopexit

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb15LambdaFunctions10ColumnInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #19 ; 0 uses
  %.not4.i.i30 = icmp eq ptr %i.p, %i.x
  br i1 %.not4.i.i30, label %.loopexit, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %bb.g, %.lr.ph.i.i31
  %.05.i.i32 = phi ptr [ %i.ak, %.lr.ph.i.i31 ], [ %i.p, %bb.g ] ; 3 uses
  tail call void @_ZN6duckdb15LambdaFunctions10ColumnInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.05.i.i32) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i32, i64 112
  %.not.i.i33 = icmp eq ptr %.05.i.i32, %i.w
  br i1 %.not.i.i33, label %.loopexit, label %.lr.ph.i.i31, !llvm.loop !309

bb.h:                                             ; preds = %.loopexit
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i31, %.thread, %bb.f, %bb.g
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #21
  invoke void @__cxa_rethrow() #20
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.al

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #23
  unreachable

bb.k:                                             ; preds = %.loopexit
  unreachable
}

declare void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22, !noalias !310 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !192, !noalias !310
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !194, !noalias !310
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !67, !noalias !310
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN6duckdb13SelectionDataC1Em(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %1)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !310

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #21, !noalias !310
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196, !noalias !315
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.b, align 8, !tbaa !3, !noalias !315
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.b, align 8, !tbaa !3, !noalias !315
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4, !noalias !315 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.d, %bb.c
  %i.j = load atomic i64, ptr %i.b acquire, align 8, !noalias !315 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.b, align 8, !tbaa !192, !noalias !315
  store i32 0, ptr %i.c, align 4, !tbaa !194, !noalias !315
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !315
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !315
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !noalias !315, !inline_history !316
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !315
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !315
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !noalias !315, !inline_history !316
  br label %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196, !noalias !315
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.l, -1
  store i32 %i.t, ptr %i.b, align 8, !tbaa !3, !noalias !315
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4, !noalias !315
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.u, %bb.h ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.i, label %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !197

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !noalias !315
  br label %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.w, align 8, !tbaa !317
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !191  ; 8 uses
  store ptr %i.a, ptr %i.x, align 8, !tbaa !191
  %.not.i.i.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i1, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !192
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !194
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #19, !inline_history !318
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #19, !inline_history !318
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.m ], [ %i.am, %bb.n ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.o, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit, !prof !197

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #19
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.ao = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_13SelectionDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !319
  store ptr %i.aq, ptr %0, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_13SelectionDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !323    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EE13AssertNotNullEb.exit, !prof !197

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
end_hunk_3
begin_hunk_4_@_ZSt16__do_uninit_copyISt13move_iteratorIPN6duckdb15LambdaFunctions10ColumnInfoEES4_ET0_T_S7_S6_:bb.a
  store ptr %i.g, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !191
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 8, !tbaa !192
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !194
  %i.s = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i) #19, !inline_history !326
  %i.v = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i) #19, !inline_history !326
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !197

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.f, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i.i.i, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i.i.i, %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !240
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !240
  %i.af = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 32
  tail call void @_ZN6duckdb19UnifiedVectorFormatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(73) %i.af, ptr noundef nonnull align 8 dereferenceable(73) %i.ag) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.013, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.ah, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !327

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ai, %bb.k ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind
declare void @_ZN6duckdb19UnifiedVectorFormatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(680)) local_unnamed_addr #2

declare void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #2

declare void @_ZN6duckdb10Expression11DeserializeERNS_12DeserializerE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18ListLambdaBindDataD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6duckdb18ListLambdaBindDataD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(88) %i.b) #19, !inline_history !328
  br label %_ZN6duckdb18ListLambdaBindDataD2Ev.exit

_ZN6duckdb18ListLambdaBindDataD2Ev.exit:          ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #19
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb18ListLambdaBindData4CopyEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.94") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !329
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc unwind label %bb.e, !inline_history !330 ; 8 uses

.noexc:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %2, align 8, !tbaa !142, !noalias !331 ; 3 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !142, !noalias !331
  %i.m = load i8, ptr %i.i, align 8, !tbaa !146, !range !140, !noalias !331, !noundef !141
  %i.n = load i8, ptr %i.h, align 1, !tbaa !146, !range !140, !noalias !331, !noundef !141
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN6duckdb18ListLambdaBindDataE, i32 0, i32 0, i32 2), ptr %i.g, align 8, !tbaa !67, !noalias !331
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZNSt10unique_ptrIN6duckdb18ListLambdaBindDataESt14default_deleteIS1_EED2Ev.exit unwind label %.body.i, !noalias !331, !inline_history !334

.body.i:                                          ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.g) #19, !noalias !331, !inline_history !334
  %.not.i6.i = icmp eq i64 %i.k, 0
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i7.i: ; preds = %.body.i
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !67, !noalias !331
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !331
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(88) %i.l) #19, !noalias !331, !inline_history !335
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i7.i, %.body.i
  call void @_ZdlPv(ptr noundef nonnull %i.g) #21, !noalias !331, !inline_history !330
  br label %.body

_ZNSt10unique_ptrIN6duckdb18ListLambdaBindDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.k, ptr %i.t, align 8, !tbaa !142, !noalias !331
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i8 %i.m, ptr %i.u, align 8, !tbaa !170, !noalias !331
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  store i8 %i.n, ptr %i.v, align 1, !tbaa !180, !noalias !331
  store ptr %i.g, ptr %0, align 8, !tbaa !181
  %i.w = load ptr, ptr %2, align 8, !tbaa !142    ; 3 uses
  %.not.i2 = icmp eq ptr %i.w, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb18ListLambdaBindDataESt14default_deleteIS1_EED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(88) %i.w) #19, !inline_history !183
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb18ListLambdaBindDataESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit8.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.p, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit8.i ]
  %i.ab = load ptr, ptr %2, align 8, !tbaa !142   ; 3 uses
  %.not.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit5, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i4

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i4: ; preds = %.body
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(88) %i.ab) #19, !inline_history !183
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit5

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit5: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb18ListLambdaBindData6EqualsERKNS_12FunctionDataE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_ZN6duckdb10Expression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i8, ptr %i.g, align 8, !tbaa !170, !range !140, !noundef !141
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i8, ptr %i.i, align 8, !tbaa !170, !range !140, !noundef !141
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.m = load i8, ptr %i.l, align 1, !tbaa !180, !range !140, !noundef !141
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.o = load i8, ptr %i.n, align 1, !tbaa !180, !range !140, !noundef !141
  %i.p = icmp eq i8 %i.m, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.p, %bb.d ]
  ret i1 %i.q
}

declare noundef zeroext i1 @_ZNK6duckdb12FunctionData21SupportStatementCacheEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb10Expression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15LambdaFunctions10LambdaInfoC2ERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorERb(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !217
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.c, align 8, !tbaa !336
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !337
  store i64 %i.i, ptr %i.g, align 8, !tbaa !238
  %i.j = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.l = zext i1 %i.j to i8
  store i8 %i.l, ptr %i.k, align 1, !tbaa !254
  %i.m = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.c unwind label %bb.j       ; 3 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %i.d, align 8, !tbaa !349
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !184
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %3, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %4, align 1, !tbaa !146
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.k:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !350, !nonnull !141, !align !369
  %i.x = invoke noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 472
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.n unwind label %bb.y       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !142
  %i.ac = ptrtoint ptr %i.ab to i64
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !142
  invoke void @_ZNK6duckdb12optional_ptrINS_10ExpressionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.o unwind label %bb.y

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_12ValidityMaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !243
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %"class.duckdb::shared_ptr.12", align 16 ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.b, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.12") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x ptr>, ptr %2, align 16, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !191  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !190
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !192
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !194
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #19, !inline_history !404
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #19, !inline_history !404
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, !prof !197

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #19
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !191  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !194
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #19, !inline_history !405
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #19, !inline_history !405
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i1 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !197

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #19
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.am = call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !406
  store ptr %i.an, ptr %0, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !410 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  store i32 1, ptr %i.b, align 8, !tbaa !192, !noalias !410
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !194, !noalias !410
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !67, !noalias !410
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !20, !noalias !410
  store ptr null, ptr %i.d, align 8, !tbaa !413, !noalias !410
  %i.f = add i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #22
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !410 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.a
  store ptr %i.i, ptr %i.d, align 8, !tbaa !406, !noalias !410
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 -1, i64 %i.h, i1 false), !tbaa !20, !noalias !410
  br label %bb.b

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #21, !noalias !410
  resume { ptr, i32 } %i.j

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  store ptr %i.d, ptr %0, align 8, !tbaa !415, !alias.scope !407
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8, !tbaa !191, !alias.scope !407
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196, !noalias !407
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.b, align 8, !tbaa !3, !noalias !407
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4, !noalias !407 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i: ; preds = %bb.d, %bb.c
  %i.n = load atomic i64, ptr %i.b acquire, align 8, !noalias !407 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i
  store i32 0, ptr %i.b, align 8, !tbaa !192, !noalias !407
  store i32 0, ptr %i.c, align 4, !tbaa !194, !noalias !407
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !407
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !407
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !noalias !407, !inline_history !416
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !407
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !407
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !noalias !407, !inline_history !416
  br label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196, !noalias !407
  %.not.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.p, -1
  store i32 %i.x, ptr %i.b, align 8, !tbaa !3, !noalias !407
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4, !noalias !407
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !197

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !noalias !407
  br label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.41", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !415    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EE13AssertNotNullEb.exit, !prof !197

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !406  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #21
  br label %_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit

_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
end_hunk_5
