Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpMa27TSolverInterface?download=true
inline.NumInlined: 487
inline.NumDeleted: 121
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5Ipopt20Ma27TSolverInterface17GetValuesArrayPtrEv:bb.a
  %i.h = load i32, ptr %i.g, align 4, !tbaa !74   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i32 %i.h, 0
  %i.k = shl nsw i64 %i.i, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #25 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.e, %bb.a ]
  ret ptr %i.n
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN5Ipopt20Ma27TSolverInterface19InitializeStructureEiiPKiS2_(ptr noundef nonnull align 8 dereferenceable(370) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.11", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !70, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %i.e, align 4, !tbaa !74
  %i.f = tail call noundef i32 @_ZN5Ipopt20Ma27TSolverInterface21SymbolicFactorizationEPKiS2_(ptr noundef nonnull align 8 dereferenceable(370) %0, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !73
  %i.h = icmp eq i32 %i.g, %1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, %2
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.36)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @__cxa_allocate_exception(i64 112) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5Ipopt17INVALID_WARMSTARTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 349)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5Ipopt17INVALID_WARMSTARTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #24
          to label %bb.o unwind label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %7, align 8, !tbaa !58     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.u = load i64, ptr %i.s, align 8, !tbaa !60
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.0, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.0, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn32, %bb.k ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %bb.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.w = load ptr, ptr %5, align 8, !tbaa !58     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.l
  %i.z = load i64, ptr %i.x, align 8, !tbaa !60
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 1, ptr %i.ab, align 4, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.m
  %.019 = phi i32 [ 0, %bb.m ], [ %i.f, %bb.b ]
  ret i32 %.019

bb.o:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN5Ipopt20Ma27TSolverInterface21SymbolicFactorizationEPKiS2_(ptr noundef nonnull align 8 dereferenceable(370) initializes((320, 324)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca [20 x i32], align 16              ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 7 uses
  %.not39 = icmp eq ptr %i.g, null
  br i1 %.not39, label %_ZN5Ipopt9TimedTask5StartEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1120
  %i.i = load i8, ptr %i.h, align 8, !tbaa !75, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1072
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1122
  store i8 0, ptr %i.l, align 2, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1121
  store i8 1, ptr %i.m, align 1, !tbaa !78
  %i.n = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.n, ptr %i.k, align 8, !tbaa !79
  %i.o = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1088
  store double %i.o, ptr %i.p, align 8, !tbaa !80
  %i.q = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1104
  store double %i.q, ptr %i.r, align 8, !tbaa !81
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5Ipopt9TimedTask5StartEv.exit
  store ptr null, ptr %i.s, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.37, double noundef 2.000000e+00)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !74
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !73 ; 2 uses
  %i.af = mul nsw i32 %i.ae, 3                    ; 2 uses
  %i.ag = or disjoint i32 %i.ac, 1
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = shl i32 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !34
  %i.ak = sext i32 %i.ai to i64
  %i.al = icmp slt i32 %i.ai, 0
  %i.am = shl nsw i64 %i.ak, 2
  %i.an = select i1 %i.al, i64 -1, i64 %i.am
  %i.ao = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #25
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.at = extractvalue { ptr, i32 } %i.as, 1
  %i.au = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #23
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %bb.ak

bb.h:                                             ; preds = %bb.g
  %i.aw = extractvalue { ptr, i32 } %i.as, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %i.aw) #23 ; 0 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.bb(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i32 noundef 2, i32 noundef 7, ptr noundef nonnull @.str.38)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #24
          to label %bb.am unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.al

bb.k:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.aq) #22
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !73 ; 2 uses
  %.pre45 = mul nsw i32 %.pre, 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pre-phi = phi i32 [ %.pre45, %bb.k ], [ %i.af, %bb.f ]
  %3 = phi i32 [ %.pre, %bb.k ], [ %i.ae, %bb.f ]
  store ptr null, ptr %i.ap, align 8, !tbaa !40
  %i.bd = sext i32 %.pre-phi to i64
  %i.be = icmp slt i32 %3, 0
  %i.bf = shl nsw i64 %i.bd, 2
  %i.bg = select i1 %i.be, i64 -1, i64 %i.bf
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #25
  store ptr %i.bh, ptr %i.ap, align 8, !tbaa !40
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i32 noundef 11, i32 noundef 7)
  %.pre44 = load i32, ptr %i.aa, align 4, !tbaa !74 ; 2 uses
  br i1 %i.bm, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.bo = load i32, ptr %i.ad, align 8, !tbaa !73
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.br(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i32 noundef 11, i32 noundef 7, ptr noundef nonnull @.str.39, i32 noundef %i.bo, i32 noundef %.pre44)
  %i.bs = load i32, ptr %i.aa, align 4, !tbaa !74 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.m ] ; 3 uses
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !69
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !69
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.cb(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i32 noundef 11, i32 noundef 7, ptr noundef nonnull @.str.40, i32 noundef %i.bw, i32 noundef %i.by)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i32, ptr %i.aa, align 4, !tbaa !74 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %.lr.ph, label %.loopexit, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph, %bb.m, %bb.l
  %i.cf = phi i32 [ %.pre44, %bb.l ], [ %i.bs, %bb.m ], [ %i.cc, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.cg = load i32, ptr %i.ad, align 8, !tbaa !73 ; 3 uses
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %i.cf, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.ch = shl nsw i32 %i.cg, 1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i32 %i.cg, 0
  %i.ck = shl nsw i64 %i.ci, 2
  %i.cl = select i1 %i.cj, i64 -1, i64 %i.ck
  %i.cm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cl) #25 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !63
  %i.cp = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.cq = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void %i.co(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2, ptr noundef %i.cp, ptr noundef nonnull %i.aj, ptr noundef %i.cq, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.cy = load i32, ptr %i.e, align 16, !tbaa !69
  %i.cz = load i32, ptr %i.cu, align 4, !tbaa !69
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void (ptr, i32, i32, ptr, ...) %i.dc(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i32 noundef 7, i32 noundef 7, ptr noundef nonnull @.str.41, i32 noundef %i.cy, i32 noundef %i.cz)
  %i.dd = load i32, ptr %i.e, align 16, !tbaa !69 ; 2 uses
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.df = load i32, ptr %i.cu, align 4, !tbaa !69
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void (ptr, i32, i32, ptr, ...) %i.di(ptr noundef nonnull align 8 dereferenceable(40) %i.de, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.42, i32 noundef %i.dd, i32 noundef %i.df)
  %i.dj = load i32, ptr %i.e, align 16, !tbaa !69
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void (ptr, i32, i32, ptr, ...) %i.do(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.43)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !44  ; 3 uses
  %.not40 = icmp eq ptr %i.dp, null
  br i1 %.not40, label %_ZN5Ipopt9TimedTask3EndEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1120
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !75, !range !71, !noundef !72
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5Ipopt9TimedTask3EndEv.exit.sink.split, label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.r:                                             ; preds = %.loopexit
  %i.dt = load ptr, ptr %i.s, align 8, !tbaa !39  ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  store ptr null, ptr %i.s, align 8, !tbaa !39
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.dw = load i32, ptr %i.cw, align 4, !tbaa !69
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.dz(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.44, i32 noundef %i.dw)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !101
  %i.ec = load i32, ptr %i.cw, align 4, !tbaa !69
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fmul double %i.eb, %i.ed
  invoke void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.aj, double noundef %i.ee, i32 noundef 0, ptr noundef nonnull @.str.45)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.ef = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.eg = load i32, ptr %i.aj, align 8, !tbaa !34
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.ej(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.46, i32 noundef %i.eg)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.ek = load i32, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i32 %i.ek, 0
  %i.en = shl nsw i64 %i.el, 2
  %i.eo = select i1 %i.em, i64 -1, i64 %i.en
  %i.ep = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eo) #25
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  store ptr %i.ep, ptr %i.s, align 8, !tbaa !39
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !36 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.er) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  store ptr null, ptr %i.eq, align 8, !tbaa !36
  %i.et = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.eu = load i32, ptr %i.cv, align 16, !tbaa !69
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.ex(ptr noundef nonnull align 8 dereferenceable(40) %i.et, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.47, i32 noundef %i.eu)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !102
  %i.fb = load i32, ptr %i.cv, align 16, !tbaa !69
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fmul double %i.fa, %i.fc
  %i.fe = load i32, ptr %i.aa, align 4, !tbaa !74
  invoke void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.ey, double noundef %i.fd, i32 noundef %i.fe, ptr noundef nonnull @.str.48)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ff = load ptr, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.fg = load i32, ptr %i.ey, align 8, !tbaa !35
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.fj(ptr noundef nonnull align 8 dereferenceable(40) %i.ff, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.49, i32 noundef %i.fg)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fk = load i32, ptr %i.ey, align 8, !tbaa !35 ; 2 uses
end_hunk_0
