Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/model_smt2_pp?download=true
inline.NumInlined: 643
inline.NumDeleted: 281
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z14sort_fun_declsR11ast_managerRK10model_coreR10ptr_bufferI9func_declLj16EE:bb.a
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !34
  store ptr %i.ll, ptr %i.lj, align 8, !tbaa !34
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !189

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.lm = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ln = icmp ugt i64 %i.lm, -4
  br i1 %i.ln, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc98
  %.not.i.i.i95 = icmp eq ptr %.pre.i.i, %i.t
  %i.lo = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i.i = or i1 %.not.i.i.i95, %i.lo
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP9func_declLb0ELj16EE6expandEv.exit.i, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i)
          to label %.noexc99 unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.cf
  %.pre2.pre.i = load i32, ptr %i.r, align 8, !tbaa !82
  br label %_ZN6bufferIP9func_declLb0ELj16EE6expandEv.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv.i.i
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !34
  store ptr %i.lr, ptr %i.lp, align 8, !tbaa !34
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv.next.i.i
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !34
  store ptr %i.lu, ptr %i.ls, align 8, !tbaa !34
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv.next.i.i.1
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !34
  store ptr %i.lx, ptr %i.lv, align 8, !tbaa !34
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv.next.i.i.2
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !34
  store ptr %i.ma, ptr %i.ly, align 8, !tbaa !34
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !190

_ZN6bufferIP9func_declLb0ELj16EE6expandEv.exit.i: ; preds = %.noexc99, %._crit_edge.i.i
  %.pre2.i96 = phi i32 [ %i.lb, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc99 ]
  store ptr %i.la, ptr %2, align 8, !tbaa !84
  store i32 %i.kx, ptr %i.s, align 4, !tbaa !83
  %.pre217.pre = load ptr, ptr %6, align 8, !tbaa !32
  br label %_ZN6bufferIP9func_declLb0ELj16EE9push_backERKS1_.exit

_ZN6bufferIP9func_declLb0ELj16EE9push_backERKS1_.exit: ; preds = %._crit_edge.i, %_ZN6bufferIP9func_declLb0ELj16EE6expandEv.exit.i
  %.pre217 = phi ptr [ %.pre217219, %._crit_edge.i ], [ %.pre217.pre, %_ZN6bufferIP9func_declLb0ELj16EE6expandEv.exit.i ]
  %i.mb = phi i32 [ %i.kv, %._crit_edge.i ], [ %.pre2.i96, %_ZN6bufferIP9func_declLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.mc = phi ptr [ %.pre.i97, %._crit_edge.i ], [ %i.la, %_ZN6bufferIP9func_declLb0ELj16EE6expandEv.exit.i ]
  %i.md = zext i32 %i.mb to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.md
  store ptr %i.bx, ptr %i.me, align 8, !tbaa !34
  %i.mf = add i32 %i.mb, 1
  store i32 %i.mf, ptr %i.r, align 8, !tbaa !82
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN6bufferIP9func_declLb0ELj16EE9push_backERKS1_.exit, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit43
  %.pre217221 = phi ptr [ %.pre217, %_ZN6bufferIP9func_declLb0ELj16EE9push_backERKS1_.exit ], [ %.pre218, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit43 ] ; 2 uses
  %i.mg = icmp eq ptr %.pre217221, null
  br i1 %i.mg, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %_ZNK6vectorIP9func_declLb0EjE5emptyEv.exit

_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit: ; preds = %bb.g, %bb.j, %_ZNK6vectorIP9func_declLb0EjE5emptyEv.exit, %bb.cg
  %i.mh = phi ptr [ %i.ab, %bb.j ], [ %.pre217220, %_ZNK6vectorIP9func_declLb0EjE5emptyEv.exit ], [ null, %bb.cg ], [ %i.ab, %bb.g ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge179, label %bb.f, !llvm.loop !191

.loopexit.split-lp153:                            ; preds = %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.cc ], [ %lpad.loopexit.split-lp369, %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIP9func_declLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn33.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_Z18collect_func_declsR11ast_managerP4exprR13obj_hashtableI9func_declEb(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIP9func_declLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIP9func_declLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIP9func_declLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIP9func_declLb0EjE7destroyEv.exit:      ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13model_smt2_ppRSoR19ast_printer_contextRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZL17pp_uninterp_sortsRSoR19ast_printer_contextRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i32 noundef %3)
  tail call fastcc void @_ZL9pp_constsRSoR19ast_printer_contextRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i32 noundef %3)
  tail call fastcc void @_ZL7pp_funsRSoR19ast_printer_contextRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17pp_uninterp_sortsRSoR19ast_printer_contextRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i32 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %class.ptr_buffer.38, align 8       ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %class.symbol, align 8              ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca [2 x ptr], align 16               ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %class.obj_ref, align 8            ; 9 uses
  %i.g = alloca [2 x ptr], align 16               ; 7 uses
  %12 = alloca %class.obj_ref, align 8            ; 7 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %class.params_ref, align 8         ; 7 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(952) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 16, ptr %i.p, align 4, !tbaa !92
  %i.q = load ptr, ptr %2, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %.preheader unwind label %.loopexit.split-lp296.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not372.a = icmp eq i32 %i.t, 0
  br i1 %.not372.a, label %._crit_edge371, label %.lr.ph370

.lr.ph370:                                        ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not.i = icmp eq i32 %3, 0                     ; 7 uses
  %i.ad = add i32 %3, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 904 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 112
  br label %bb.d

._crit_edge371:                                   ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.preheader
  %i.aw = load ptr, ptr %4, align 8, !tbaa !90    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.n
  %i.ax = icmp eq ptr %i.aw, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.ax
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP3appLb0ELj16EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge371
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aw)
          to label %_ZN6bufferIP3appLb0ELj16EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #19
  unreachable

_ZN6bufferIP3appLb0ELj16EED2Ev.exit:              ; preds = %._crit_edge371, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.d:                                             ; preds = %.lr.ph370, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.0101369 = phi i32 [ 0, %.lr.ph370 ], [ %i.lb, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(96) %2, i32 noundef %.0101369)
          to label %bb.e unwind label %.loopexit.split-lp296.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %2, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef %i.bd)
          to label %bb.f unwind label %.loopexit.split-lp296.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.bj = load ptr, ptr %1, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.bd, i32 noundef 13)
          to label %bb.h unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %.lr.ph.i.preheader unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.preheader
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc.1 unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.1:                                         ; preds = %.noexc
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !203 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %._crit_edge, label %_ZNK6vectorIP4exprLb0EjE3endEv.exit

_ZNK6vectorIP4exprLb0EjE3endEv.exit:              ; preds = %.noexc.1
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !33 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %.not357 = icmp eq i32 %i.bs, 0
  br i1 %.not357, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153, %.noexc.1, %_ZNK6vectorIP4exprLb0EjE3endEv.exit
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.3, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151 unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp296.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp296

bb.i:                                             ; preds = %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE3endEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %.0100358 = phi ptr [ %i.ce, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 ], [ %i.bp, %_ZNK6vectorIP4exprLb0EjE3endEv.exit ] ; 2 uses
  %i.by = load ptr, ptr %.0100358, align 8, !tbaa !93
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !97
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = invoke fastcc noundef i32 @_ZL9pp_symbolRSoRK6symbol(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %bb.j unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %.lr.ph
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.0100358, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.bv
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %.lr.ph, %.lr.ph.i.preheader, %.noexc, %._crit_edge, %bb.h, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %lpad.loopexit.split-lp513 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp288.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !209, !noalias !210 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151
  %14 = load ptr, ptr %i.x, align 8, !tbaa !211, !noalias !210 ; 2 uses
  %15 = icmp ugt ptr %i.cf, %14
  %.08.i.i.i = select i1 %15, ptr %i.cf, ptr %14
  %i.cg = load ptr, ptr %i.y, align 8, !tbaa !212, !noalias !210
  %i.ch = ptrtoint ptr %.08.i.i.i to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  store i64 %i.cj, ptr %i.z, align 8, !tbaa !79, !noalias !210
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !78, !noalias !210
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 0, ptr %i.cl, align 1, !tbaa !80, !noalias !210
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151
  store ptr %i.aa, ptr %6, align 8, !tbaa !75, !alias.scope !210
  %i.cm = load ptr, ptr %i.w, align 8, !tbaa !78, !noalias !210 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ab
  br i1 %i.cn, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.co = load i64, ptr %i.z, align 8, !tbaa !79, !noalias !210 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.cq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.cm, ptr %6, align 8, !tbaa !78, !alias.scope !210
  %i.cr = load i64, ptr %i.ab, align 8, !tbaa !80, !noalias !210
  store i64 %i.cr, ptr %i.aa, align 8, !tbaa !80, !alias.scope !210
  %.pre.i.i = load i64, ptr %i.z, align 8, !tbaa !79, !noalias !210
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %i.cs = phi i64 [ %i.co, %bb.k ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  store i64 %i.cs, ptr %i.ac, align 8, !tbaa !79, !alias.scope !210
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !78, !noalias !210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false), !noalias !210
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef nonnull %i.ab, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %6, align 8, !tbaa !78, !alias.scope !210 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.aa
  br i1 %i.cv, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.cw = load i64, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  br i1 %.not.i, label %_ZL9pp_indentRSoj.exit158, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %.noexc157
  %.03.i155 = phi i32 [ %i.cy, %.noexc157 ], [ 0, %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc157:                                        ; preds = %.lr.ph.i154
  %i.cy = add nuw i32 %.03.i155, 1                ; 2 uses
  %exitcond.not.i156 = icmp eq i32 %i.cy, %3
  br i1 %exitcond.not.i156, label %_ZL9pp_indentRSoj.exit158, label %.lr.ph.i154, !llvm.loop !9

_ZL9pp_indentRSoj.exit158:                        ; preds = %.noexc157, %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160.preheader: ; preds = %_ZL9pp_indentRSoj.exit158
  %i.da = and i64 %i.cw, 4294967295
  %.not373 = icmp eq i64 %i.da, 0
  br i1 %.not373, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160._crit_edge, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160.preheader
  %wide.trip.count = and i64 %i.cw, 4294967295
  br label %.lr.ph360

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160.preheader
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172
  %indvars.iv = phi i64 [ 0, %.lr.ph360.preheader ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172 ] ; 2 uses
  %i.dc = load ptr, ptr %6, align 8, !tbaa !78
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !80  ; 3 uses
  %i.df = icmp eq i8 %i.de, 10
  br i1 %i.df, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph360
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %bb.m
  br i1 %.not.i, label %_ZL9pp_indentRSoj.exit170, label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164, %.noexc169
  %.03.i167 = phi i32 [ %i.di, %.noexc169 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 ]
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc169:                                        ; preds = %.lr.ph.i166
  %i.di = add nuw i32 %.03.i167, 1                ; 2 uses
  %exitcond.not.i168 = icmp eq i32 %i.di, %3
  br i1 %exitcond.not.i168, label %_ZL9pp_indentRSoj.exit170, label %.lr.ph.i166, !llvm.loop !9

_ZL9pp_indentRSoj.exit170:                        ; preds = %.noexc169, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %.lr.ph360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.de, ptr %i.a, align 1, !tbaa !80
  %i.dk = load ptr, ptr %0, align 8, !tbaa !73
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %0, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !219
  %.not.i173 = icmp eq i64 %i.dp, 0
  br i1 %.not.i173, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.de)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172: ; preds = %_ZL9pp_indentRSoj.exit170, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160._crit_edge, label %.lr.ph360, !llvm.loop !196

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160._crit_edge
  br i1 %.not.i, label %_ZL9pp_indentRSoj.exit181, label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162, %.noexc180
  %.03.i178 = phi i32 [ %i.dt, %.noexc180 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162 ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc180:                                        ; preds = %.lr.ph.i177
  %i.dt = add nuw i32 %.03.i178, 1                ; 2 uses
  %exitcond.not.i179 = icmp eq i32 %i.dt, %3
  br i1 %exitcond.not.i179, label %_ZL9pp_indentRSoj.exit181, label %.lr.ph.i177, !llvm.loop !9

_ZL9pp_indentRSoj.exit181:                        ; preds = %.noexc180, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %_ZL9pp_indentRSoj.exit181
  %i.dv = load ptr, ptr %i.bh, align 8, !tbaa !203 ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %._crit_edge364, label %_ZNK6vectorIP4exprLb0EjE3endEv.exit185

_ZNK6vectorIP4exprLb0EjE3endEv.exit185:           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !33 ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ea
  %.not123361 = icmp eq i32 %i.dy, 0
  br i1 %.not123361, label %._crit_edge364, label %.lr.ph363

._crit_edge364:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183, %_ZNK6vectorIP4exprLb0EjE3endEv.exit185
  br i1 %.not.i, label %_ZL9pp_indentRSoj.exit191, label %.lr.ph.i187

.lr.ph.i187:                                      ; preds = %._crit_edge364, %.noexc190
  %.03.i188 = phi i32 [ %i.ed, %.noexc190 ], [ 0, %._crit_edge364 ]
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc190:                                        ; preds = %.lr.ph.i187
  %i.ed = add nuw i32 %.03.i188, 1                ; 2 uses
  %exitcond.not.i189 = icmp eq i32 %i.ed, %3
  br i1 %exitcond.not.i189, label %_ZL9pp_indentRSoj.exit191, label %.lr.ph.i187, !llvm.loop !9

.lr.ph363:                                        ; preds = %_ZNK6vectorIP4exprLb0EjE3endEv.exit185, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %.098362 = phi ptr [ %i.ev, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %i.dv, %_ZNK6vectorIP4exprLb0EjE3endEv.exit185 ] ; 2 uses
  %i.ee = load ptr, ptr %.098362, align 8, !tbaa !93
  br i1 %.not.i, label %_ZL9pp_indentRSoj.exit197, label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %.lr.ph363, %.noexc196
  %.03.i194 = phi i32 [ %i.eg, %.noexc196 ], [ 0, %.lr.ph363 ]
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc196 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc196:                                        ; preds = %.lr.ph.i193
  %i.eg = add nuw i32 %.03.i194, 1                ; 2 uses
  %exitcond.not.i195 = icmp eq i32 %i.eg, %3
  br i1 %exitcond.not.i195, label %_ZL9pp_indentRSoj.exit197, label %.lr.ph.i193, !llvm.loop !9

_ZL9pp_indentRSoj.exit197:                        ; preds = %.noexc196, %.lr.ph363
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZL9pp_indentRSoj.exit197
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !97
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = invoke fastcc noundef i32 @_ZL9pp_symbolRSoRK6symbol(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201: ; preds = %bb.q
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !97
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !98
  %i.eq = add i32 %i.ad, %i.el
  %i.er = load ptr, ptr %1, align 8, !tbaa !73
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ep, i32 noundef %i.eq)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %.098362, i64 8 ; 2 uses
  %.not123 = icmp eq ptr %i.ev, %i.eb
  br i1 %.not123, label %._crit_edge364, label %.lr.ph363

_ZL9pp_indentRSoj.exit191:                        ; preds = %.noexc190, %._crit_edge364
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205: ; preds = %_ZL9pp_indentRSoj.exit191
  store i32 0, ptr %i.o, align 8, !tbaa !91
end_hunk_0
begin_hunk_1_@_ZL17pp_uninterp_sortsRSoR19ast_printer_contextRK10model_corej:bb.a
  %i.jb = invoke noundef ptr @_ZN9format_ns7mk_seq1IPP3appNS_3f2fEEES2_R11ast_managerRKT_S9_T0_PKcSC_SC_(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %.loopexit.split-lp

bb.ax:                                            ; preds = %._crit_edge368
  %i.jd = load ptr, ptr %4, align 8, !tbaa !90
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !101
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %.0 = phi ptr [ %i.jb, %bb.av ], [ %i.je, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.jf = load ptr, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  %spec.select.i.i = select i1 %i.jg, ptr %i.m, ptr %i.jf
  store ptr null, ptr %11, align 8, !tbaa !161
  store ptr %spec.select.i.i, ptr %i.an, align 8, !tbaa !162
  %i.jh = load ptr, ptr %1, align 8, !tbaa !73
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  invoke void %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.az unwind label %bb.bp

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.jk = invoke noundef ptr @_ZN9format_ns9mk_stringER11ast_managerPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull @.str.16)
          to label %bb.ba unwind label %bb.bq

bb.ba:                                            ; preds = %bb.az
  %i.jl = load ptr, ptr %11, align 8, !tbaa !161
  %i.jm = invoke noundef ptr @_ZN9format_ns9mk_stringER11ast_managerPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull @.str.17)
          to label %bb.bb unwind label %bb.bq

bb.bb:                                            ; preds = %bb.ba
  %i.jn = invoke noundef ptr @_ZN9format_ns10mk_composeER11ast_managerP3appS3_(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef %i.jl, ptr noundef %i.jm)
          to label %bb.bc unwind label %bb.bq

bb.bc:                                            ; preds = %bb.bb
  %i.jo = invoke noundef ptr @_ZN9format_ns9mk_indentER11ast_managerjP3app(ptr noundef nonnull align 8 dereferenceable(952) %i.m, i32 noundef 4, ptr noundef %i.jn)
          to label %bb.bd unwind label %bb.bq

bb.bd:                                            ; preds = %bb.bc
  %i.jp = invoke noundef ptr @_ZN9format_ns10mk_composeER11ast_managerP3appS3_(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef %i.jk, ptr noundef %i.jo)
          to label %bb.be unwind label %bb.bq

bb.be:                                            ; preds = %bb.bd
  store ptr %i.jp, ptr %i.g, align 16, !tbaa !101
  store ptr %.0, ptr %i.ao, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.jq = load ptr, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  %spec.select.i.i235 = select i1 %i.jr, ptr %i.m, ptr %i.jq ; 2 uses
  store ptr null, ptr %12, align 8, !tbaa !161
  store ptr %spec.select.i.i235, ptr %i.ap, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store ptr %i.g, ptr %i.h, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !102
  %i.js = invoke noundef ptr @_ZN9format_ns7mk_seq1IPP3appNS_3f2fEEES2_R11ast_managerRKT_S9_T0_PKcSC_SC_(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14)
          to label %bb.bf unwind label %bb.br

bb.bf:                                            ; preds = %bb.be
  %i.jt = invoke noundef ptr @_ZN9format_ns9mk_indentER11ast_managerjP3app(ptr noundef nonnull align 8 dereferenceable(952) %i.m, i32 noundef %3, ptr noundef %i.js)
          to label %bb.bg unwind label %bb.br     ; 6 uses

bb.bg:                                            ; preds = %bb.bf
  %.not.i236 = icmp eq ptr %i.jt, null            ; 2 uses
  br i1 %.not.i236, label %bb.bh, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.bg
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !163
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !163
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.jt, ptr %12, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br i1 %.not.i, label %_ZL9pp_indentRSoj.exit244, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.bh, %.noexc243
  %.03.i240 = phi i32 [ %i.jy, %.noexc243 ], [ 0, %bb.bh ]
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc243 unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc243:                                        ; preds = %.lr.ph.i239
  %i.jy = add nuw i32 %.03.i240, 1                ; 2 uses
  %exitcond.not.i241 = icmp eq i32 %i.jy, %3
  br i1 %exitcond.not.i241, label %_ZL9pp_indentRSoj.exit244, label %.lr.ph.i239, !llvm.loop !9

_ZL9pp_indentRSoj.exit244:                        ; preds = %.noexc243, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store ptr null, ptr %13, align 8, !tbaa !166
  invoke void @_Z2ppRSoP3appR11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.jt, ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bi unwind label %bb.bs

bb.bi:                                            ; preds = %_ZL9pp_indentRSoj.exit244
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246: ; preds = %bb.bi
  br i1 %.not.i, label %_ZL9pp_indentRSoj.exit253, label %.lr.ph.i248

.lr.ph.i248:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246, %.noexc252
  %.03.i249 = phi i32 [ %i.kb, %.noexc252 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ]
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc252 unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc252:                                        ; preds = %.lr.ph.i248
  %i.kb = add nuw i32 %.03.i249, 1                ; 2 uses
  %exitcond.not.i250 = icmp eq i32 %i.kb, %3
  br i1 %exitcond.not.i250, label %_ZL9pp_indentRSoj.exit253, label %.lr.ph.i248, !llvm.loop !9

_ZL9pp_indentRSoj.exit253:                        ; preds = %.noexc252, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255 unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255: ; preds = %_ZL9pp_indentRSoj.exit253
  br i1 %.not.i236, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !163
  %i.kf = add i32 %i.ke, -1                       ; 2 uses
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !163
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.bk, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %spec.select.i.i235, ptr noundef nonnull %i.jt)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.kj = load ptr, ptr %11, align 8, !tbaa !161  ; 3 uses
  %.not.i.i257 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i257, label %_ZN7obj_refI3app11ast_managerED2Ev.exit258, label %bb.bm

bb.bm:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.kk = load ptr, ptr %i.an, align 8, !tbaa !167, !nonnull !168, !align !169
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !163
  %i.kn = add i32 %i.km, -1                       ; 2 uses
  store i32 %i.kn, ptr %i.kl, align 4, !tbaa !163
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.bn, label %_ZN7obj_refI3app11ast_managerED2Ev.exit258

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kk, ptr noundef nonnull %i.kj)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit258 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit258:       ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.kr = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.aa
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit258
  %i.kt = load i64, ptr %i.aa, align 8, !tbaa !80
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store ptr %i.ar, ptr %5, align 8, !tbaa !73
  %i.kv = load i64, ptr %i.at, align 8
  %i.kw = getelementptr inbounds i8, ptr %5, i64 %i.kv
  store ptr %i.as, ptr %i.kw, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.u, align 8, !tbaa !73
  %i.kx = load ptr, ptr %i.w, align 8, !tbaa !78  ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.ab
  br i1 %i.ky, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.kz = load i64, ptr %i.ab, align 8, !tbaa !80
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.u, align 8, !tbaa !73
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #18
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.lb = add nuw i32 %.0101369, 1                ; 2 uses
  %exitcond383.not = icmp eq i32 %i.lb, %i.t
  br i1 %exitcond383.not, label %._crit_edge371, label %bb.d, !llvm.loop !200

bb.bp:                                            ; preds = %bb.ay
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.br:                                            ; preds = %bb.bf, %bb.be
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %.loopexit.split-lp269

.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i248, %.lr.ph.i239, %_ZL9pp_indentRSoj.exit253, %bb.bi
  %lpad.loopexit.split-lp495 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp269

bb.bs:                                            ; preds = %_ZL9pp_indentRSoj.exit244
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %.loopexit.split-lp269

.loopexit.split-lp269:                            ; preds = %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bs, %bb.br
  %.pn = phi { ptr, i32 } [ %i.le, %bb.br ], [ %i.lf, %bb.bs ], [ %lpad.loopexit.split-lp495, %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp269, %bb.bq
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp269 ], [ %i.ld, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bp
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bt ], [ %i.lc, %bb.bp ]
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %bb.bu, %bb.aw
  %.pn139 = phi { ptr, i32 } [ %i.jc, %bb.aw ], [ %.pn.pn.pn.pn, %bb.bu ], [ %.pn131.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %lpad.loopexit.split-lp510, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.lg = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.aa
  br i1 %i.lh, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.loopexit.split-lp, %bb.l
  %.sink = phi ptr [ %i.cu, %bb.l ], [ %i.lg, %.loopexit.split-lp ]
  %.pn139.pn.ph = phi { ptr, i32 } [ %i.ct, %bb.l ], [ %.pn139, %.loopexit.split-lp ]
  %i.li = load i64, ptr %i.aa, align 8, !tbaa !80
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.lj) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.loopexit.split-lp, %bb.l
  %.pn139.pn = phi { ptr, i32 } [ %i.ct, %bb.l ], [ %.pn139, %.loopexit.split-lp ], [ %.pn139.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.loopexit.split-lp288.loopexit.split-lp

.loopexit.split-lp288.loopexit.split-lp:          ; preds = %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn142.pn = phi { ptr, i32 } [ %.pn139.pn, %.body ], [ %lpad.loopexit.split-lp513, %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #18
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp288.loopexit.split-lp, %bb.i
  %.pn142.pn.pn = phi { ptr, i32 } [ %.pn142.pn, %.loopexit.split-lp288.loopexit.split-lp ], [ %i.bx, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit.split-lp296

.loopexit.split-lp296:                            ; preds = %.loopexit.split-lp296.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bv
  %.pn142.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn, %bb.bv ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp296.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6bufferIP3appLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn142.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL9pp_constsRSoR19ast_printer_contextRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK10model_core17get_num_constantsEv.exit

_ZNK10model_core17get_num_constantsEv.exit:       ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK10model_core17get_num_constantsEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.not.i = icmp eq i32 %3, 0
  %i.h = add i32 %3, 16
  %i.i = add i32 %3, 2                            ; 2 uses
  %.not.i25 = icmp eq i32 %i.i, 0
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL9pp_indentRSoj.exit29, %bb.a, %_ZNK10model_core17get_num_constantsEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZL9pp_indentRSoj.exit29
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL9pp_indentRSoj.exit29 ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36   ; 3 uses
  %i.o = load i32, ptr %i.g, align 8, !tbaa !66   ; 3 uses
  %i.p = add i32 %i.o, -1
  %i.q = and i32 %i.p, %i.n                       ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !67   ; 3 uses
  %i.s = zext i32 %i.q to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.s, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i ; 3 uses
  %i.u = zext i32 %i.o to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.u
  %.not34.i.i.i.i = icmp eq i32 %i.q, %i.o
  br i1 %.not34.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.e, %bb.b
  %.not2736.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not2736.i.i.i.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit, label %.lr.ph38.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.e
  %.035.i.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.t, %bb.b ] ; 3 uses
  %i.w = load ptr, ptr %.035.i.i.i.i, align 8, !tbaa !71 ; 4 uses
  %i.x = icmp ult ptr %i.w, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !36
  %i.aa = icmp eq i32 %i.z, %i.n
  %i.ab = icmp eq ptr %i.w, %i.l
  %or.cond.i.i.i.i = and i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i.i, label %.loopexit.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = icmp eq ptr %i.w, null
  br i1 %i.ac, label %_ZNK10model_core16get_const_interpEP9func_decl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.v
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph38.i.i.i.i.backedge
  %.137.i.i.i.i = phi ptr [ %.137.i.i.i.i.be, %.lr.ph38.i.i.i.i.backedge ], [ %i.r, %.preheader.i.i.i.i ] ; 4 uses
  %i.ae = load ptr, ptr %.137.i.i.i.i, align 8, !tbaa !71 ; 4 uses
  %i.af = icmp ult ptr %i.ae, inttoptr (i64 2 to ptr)
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph38.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ai = icmp eq i32 %i.ah, %i.n
  %i.aj = icmp eq ptr %i.ae, %i.l
  %or.cond31.i.i.i.i = and i1 %i.aj, %i.ai
  br i1 %or.cond31.i.i.i.i, label %.loopexit.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph38.i.i.i.i
  %i.ak = icmp eq ptr %i.ae, null
  %i.al = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 24 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.al, %i.t
  %or.cond43.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not27.i.i.i.i
  br i1 %or.cond43.i.i.i.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit, label %.lr.ph38.i.i.i.i.backedge

bb.h:                                             ; preds = %bb.f
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 24 ; 2 uses
  %.not27.old.i.i.i.i = icmp eq ptr %.old.i.i.i.i, %i.t
  br i1 %.not27.old.i.i.i.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit, label %.lr.ph38.i.i.i.i.backedge

.lr.ph38.i.i.i.i.backedge:                        ; preds = %bb.h, %bb.g
end_hunk_1
