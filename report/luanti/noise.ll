Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/noise?download=true
inline.NumInlined: 150
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5Noise12allocBuffersEv:bb.a
bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi i32 [ 1, %bb.f ], [ %i.h, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.k, align 8, !tbaa !44
  %i.l = icmp ugt i32 %i.j, 1
  tail call void @_ZN5Noise14resizeNoiseBufEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = load i32, ptr %i.a, align 4, !tbaa !41
  %i.w = load i32, ptr %i.d, align 8, !tbaa !42
  %i.x = mul i32 %i.w, %i.v
  %i.y = load i32, ptr %i.g, align 4, !tbaa !43
  %i.z = mul i32 %i.x, %i.y
  %i.aa = zext i32 %i.z to i64
  store ptr null, ptr %i.p, align 8, !tbaa !46
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #30
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !45
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #30
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !47
  ret void

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.af = extractvalue { ptr, i32 } %i.ae, 1
  %i.ag = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ai = extractvalue { ptr, i32 } %i.ae, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #26 ; 0 uses
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN27InvalidNoiseParamsExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.x unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ak) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.al, %bb.s ]
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.p
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.p ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #29
  unreachable

bb.x:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5NoiseD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define dso_local void @_ZN5Noise14resizeNoiseBufEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load float, ptr %i.c, align 8, !tbaa !79 ; 3 uses
  %i.e = fcmp nsz ogt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fpext nsz float %i.d to double
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !48
  %i.i = zext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, -1
  %i.k = sitofp nsz i32 %i.j to double
  %i.l = tail call nsz double @llvm.pow.f64(double %i.f, double %i.k)
  %i.m = fptrunc nsz double %i.l to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi float [ %i.m, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = uitofp nsz i32 %i.s to float
  %i.u = fmul nsz float %i.n, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load float, ptr %i.v, align 8, !tbaa !80 ; 2 uses
  %i.x = fdiv nsz float %i.u, %i.w                ; 2 uses
  %i.y = load <2 x i32>, ptr %i.o, align 4, !tbaa !36
  %i.z = uitofp nsz <2 x i32> %i.y to <2 x float>
  %i.aa = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul nsz <2 x float> %i.ab, %i.z
  %i.ad = fdiv nsz <2 x float> %i.ac, %i.q
  %.fr = freeze <2 x float> %i.ad                 ; 3 uses
  %4 = fcmp nsz ogt <2 x float> %.fr, splat (float 1.000000e+09)
  %5 = bitcast <2 x i1> %4 to i2
  %or.cond = icmp ne i2 %5, 0
  %i.ae = fcmp nsz ogt float %i.x, 1.000000e+09
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ae
  br i1 %or.cond3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN27InvalidNoiseParamsExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #26
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.ah = fdiv nsz <2 x float> %i.q, %i.ab
  %.fr54 = freeze <2 x float> %i.ah
  %6 = fcmp nsz olt <2 x float> %.fr54, splat (float 1.000000e+00)
  %7 = bitcast <2 x i1> %6 to i2
  %or.cond41 = icmp ne i2 %7, 0
  %i.ai = fdiv nsz float %i.w, %i.n
  %i.aj = fcmp nsz olt float %i.ai, 1.000000e+00
  %or.cond43 = select i1 %or.cond41, i1 true, i1 %i.aj
  br i1 %or.cond43, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.h, %bb.i
  %i.ak = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89, !nonnull !90, !align !91 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.al), !inline_history !77
  %.v.i = select i1 %i.ao, i64 976, i64 984
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.6, ptr %i.b, align 8, !tbaa !53
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 2 dereferenceable(2) %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.7, ptr %i.a, align 8, !tbaa !53
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54 ; 5 uses
  %.not.i44 = icmp eq ptr %i.au, null
  br i1 %.not.i44, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.j

bb.j:                                             ; preds = %_ZTW11errorstream.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !61
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi ptr [ %.pre.i, %bb.k ], [ %i.au, %bb.j ]
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bc), !inline_history !78 ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW11errorstream.exit, %bb.l
  %i.be = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  call void @_ZN27InvalidNoiseParamsExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.ad unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ab

bb.o:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @__cxa_free_exception(ptr %i.be) #26
  br label %bb.ab

bb.p:                                             ; preds = %bb.g
  %i.bm = extractelement <2 x float> %.fr, i64 0
  %i.bn = tail call nsz noundef float @llvm.ceil.f32(float %i.bm)
  %i.bo = fptoui float %i.bn to i64
  %i.bp = add i64 %i.bo, 3
  %i.bq = extractelement <2 x float> %.fr, i64 1
  %i.br = tail call nsz noundef float @llvm.ceil.f32(float %i.bq)
  %i.bs = fptoui float %i.br to i64
  %i.bt = add i64 %i.bs, 3
  br i1 %1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = tail call nsz noundef float @llvm.ceil.f32(float %i.x)
  %i.bv = fptoui float %i.bu to i64
  %i.bw = add i64 %i.bv, 3
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bx = phi i64 [ %i.bw, %bb.q ], [ 1, %bb.p ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZdaPv(ptr noundef nonnull %i.bz) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cb = mul i64 %i.bt, %i.bp
  %i.cc = mul i64 %i.cb, %i.bx                    ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 4611686018427387903
  %i.ce = shl i64 %i.cc, 2
  %i.cf = select i1 %i.cd, i64 -1, i64 %i.ce
  %i.cg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #30
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cg, ptr %i.by, align 8, !tbaa !44
  ret void

bb.v:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.ci = extractvalue { ptr, i32 } %i.ch, 1
  %i.cj = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cl = extractvalue { ptr, i32 } %i.ch, 0
  %i.cm = tail call ptr @__cxa_begin_catch(ptr %i.cl) #26 ; 0 uses
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN27InvalidNoiseParamsExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.cn)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.ad unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cn) #26
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.co, %bb.y ]
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.v, %bb.aa, %bb.o, %bb.f
  %.merged = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.bl, %bb.o ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ch, %bb.v ], [ %.pn, %bb.aa ]
  resume { ptr, i32 } %.merged

bb.ac:                                            ; preds = %bb.aa
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  tail call void @__clang_call_terminate(ptr %i.cr) #29
  unreachable

bb.ad:                                            ; preds = %bb.x, %bb.m
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #13

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN27InvalidNoiseParamsExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 68, ptr %i.b, align 8, !tbaa !22
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !19
  %i.e = load i64, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.d, ptr noundef nonnull align 1 dereferenceable(68) @.str.9, i64 68, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.j = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.k, ptr %i.a, align 8, !tbaa !22
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i2 unwind label %bb.c  ; 2 uses

.noexc.i2:                                        ; preds = %.noexc.i.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !19
  %i.n = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.n, ptr %i.i, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i2, %.noexc.i
  %i.o = phi ptr [ %i.m, %.noexc.i2 ], [ %i.i, %.noexc.i ] ; 2 uses
  switch i64 %i.k, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !20
  store i8 %i.p, ptr %i.o, align 1, !tbaa !20
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.a, %bb.b
  %i.s = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.w = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.c
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.y = load i64, ptr %i.c, align 8, !tbaa !20
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV27InvalidNoiseParamsException, i64 16), ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN5Noise10valueMap2DEffffi:bb.a
  %i.cl = fsub nsz float %i.cj, %i.ck
  %i.cm = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cl, float %.070108.us, float %i.ck)
  %i.cn = add i32 %.3101.us.us, 1                 ; 2 uses
  %i.co = zext i32 %.3101.us.us to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.co
  store float %i.cm, ptr %i.cp, align 4, !tbaa !27
  %i.cq = fadd nsz float %3, %.072100.us.us       ; 3 uses
  %i.cr = fcmp nsz ult float %i.cq, 1.000000e+00
  br i1 %i.cr, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z21biLinearInterpolationffffffb.exit.us.us
  %i.cs = fadd nsz float %i.cq, -1.000000e+00
  %i.ct = add i32 %.062103.us.us, 1
  %i.cu = add i32 %.062103.us.us, 2               ; 2 uses
  %i.cv = add i32 %i.cu, %i.bi
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !27
  %i.cz = add i32 %i.cu, %i.br
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !27
  %i.dd = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.cy, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_Z21biLinearInterpolationffffffb.exit.us.us
  %.173.us.us = phi nsz float [ %i.cs, %bb.b ], [ %i.cq, %_Z21biLinearInterpolationffffffb.exit.us.us ]
  %.163.us.us = phi i32 [ %i.ct, %bb.b ], [ %.062103.us.us, %_Z21biLinearInterpolationffffffb.exit.us.us ]
  %i.df = phi <2 x float> [ %i.de, %bb.b ], [ %i.cd, %_Z21biLinearInterpolationffffffb.exit.us.us ]
  %i.dg = phi <2 x float> [ %i.cd, %bb.b ], [ %i.ce, %_Z21biLinearInterpolationffffffb.exit.us.us ]
  %i.dh = add nuw i32 %.167102.us.us, 1           ; 2 uses
  %.not85.us.us = icmp eq i32 %i.dh, %i.bc
  br i1 %.not85.us.us, label %._crit_edge105.split.us.us, label %_Z21biLinearInterpolationffffffb.exit.us.us, !llvm.loop !93

._crit_edge105.split.us.us:                       ; preds = %bb.c
  %i.di = fadd nsz float %4, %.070108.us          ; 3 uses
  %i.dj = fcmp nsz ult float %i.di, 1.000000e+00  ; 2 uses
  %i.dk = fadd nsz float %i.di, -1.000000e+00
  %.171.us = select nsz i1 %i.dj, float %i.di, float %i.dk
  %.1.us = select i1 %i.dj, i32 %.0112.us, i32 %i.bq
  %i.dl = add nuw i32 %.165111.us, 1              ; 2 uses
  %.not84.us = icmp eq i32 %i.dl, %i.az
  br i1 %.not84.us, label %._crit_edge114.split, label %.lr.ph.us, !llvm.loop !94

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.06691 = phi i32 [ %i.ee, %scalar.ph ], [ %.06691.ph, %scalar.ph.preheader ] ; 2 uses
  %.16990 = phi i32 [ %i.eb, %scalar.ph ], [ %.16990.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dm = add i32 %.06691, %i.aa
  %i.dn = mul nsw i32 %i.dm, 1619
  %i.do = add i32 %i.ad, %i.dn
  %i.dp = and i32 %i.do, 2147483647               ; 2 uses
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = xor i32 %i.dq, %i.dp                    ; 3 uses
  %i.ds = mul i32 %i.dr, 60493
  %i.dt = mul i32 %i.ds, %i.dr
  %i.du = add i32 %i.dt, 19990303
  %i.dv = mul i32 %i.du, %i.dr
  %i.dw = add i32 %i.dv, 1376312589
  %i.dx = and i32 %i.dw, 2147483647
  %i.dy = uitofp nneg i32 %i.dx to float
  %i.dz = fmul nnan nsz float %i.dy, f0x30800000
  %i.ea = fsub nsz float 1.000000e+00, %i.dz
  %i.eb = add i32 %.16990, 1                      ; 2 uses
  %i.ec = zext i32 %.16990 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ec
  store float %i.ea, ptr %i.ed, align 4, !tbaa !27
  %i.ee = add nuw i32 %.06691, 1                  ; 2 uses
  %.not86 = icmp eq i32 %i.ee, %i.r
  br i1 %.not86, label %._crit_edge, label %scalar.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa137 = phi i32 [ %i.af, %middle.block ], [ %i.eb, %scalar.ph ]
  %i.ef = add nuw i32 %.06494, 1                  ; 2 uses
  %.not = icmp eq i32 %i.ef, %i.u
  br i1 %.not, label %.preheader, label %.preheader88, !llvm.loop !96

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge105.split
  %.0112 = phi i32 [ %.1, %._crit_edge105.split ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.165111 = phi i32 [ %i.gt, %._crit_edge105.split ], [ 0, %.lr.ph.preheader ]
  %.2110 = phi i32 [ %i.fv, %._crit_edge105.split ], [ 0, %.lr.ph.preheader ]
  %.070108 = phi float [ %.171, %._crit_edge105.split ], [ %i.bf, %.lr.ph.preheader ] ; 6 uses
  %i.eg = mul i32 %.0112, %i.r                    ; 3 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !27
  %i.ek = add i32 %i.eg, 1
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !27
  %i.eo = add i32 %.0112, 1                       ; 2 uses
  %i.ep = mul i32 %i.eo, %i.r                     ; 3 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !27
  %i.et = add i32 %i.ep, 1
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !27
  %i.ex = fmul nsz float %.070108, %.070108
  %i.ey = fmul nsz float %.070108, %i.ex
  %i.ez = tail call nsz float @llvm.fmuladd.f32(float %.070108, float 6.000000e+00, float -1.500000e+01)
  %i.fa = tail call nsz float @llvm.fmuladd.f32(float %.070108, float %i.ez, float 1.000000e+01)
  %i.fb = fmul nsz float %i.ey, %i.fa
  %i.fc = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.en, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.ej, i64 1
  br label %_Z21biLinearInterpolationffffffb.exit

_Z21biLinearInterpolationffffffb.exit:            ; preds = %.lr.ph, %bb.e
  %.062103 = phi i32 [ 0, %.lr.ph ], [ %.163, %bb.e ] ; 3 uses
  %.167102 = phi i32 [ 0, %.lr.ph ], [ %i.gp, %bb.e ]
  %.3101 = phi i32 [ %.2110, %.lr.ph ], [ %i.fv, %bb.e ] ; 2 uses
  %.072100 = phi float [ %i.bg, %.lr.ph ], [ %.173, %bb.e ] ; 6 uses
  %i.fg = phi <2 x float> [ %i.fd, %.lr.ph ], [ %i.gn, %bb.e ] ; 3 uses
  %i.fh = phi <2 x float> [ %i.ff, %.lr.ph ], [ %i.go, %bb.e ] ; 3 uses
  %i.fi = fmul nsz float %.072100, %.072100
  %i.fj = fmul nsz float %.072100, %i.fi
  %i.fk = tail call nsz float @llvm.fmuladd.f32(float %.072100, float 6.000000e+00, float -1.500000e+01)
  %i.fl = tail call nsz float @llvm.fmuladd.f32(float %.072100, float %i.fk, float 1.000000e+01)
  %i.fm = fmul nsz float %i.fj, %i.fl
  %i.fn = fsub nsz <2 x float> %i.fg, %i.fh
  %i.fo = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fp, <2 x float> %i.fh) ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  %i.fs = extractelement <2 x float> %i.fq, i64 1 ; 2 uses
  %i.ft = fsub nsz float %i.fr, %i.fs
  %i.fu = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ft, float %i.fb, float %i.fs)
  %i.fv = add i32 %.3101, 1                       ; 2 uses
  %i.fw = zext i32 %.3101 to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.fw
  store float %i.fu, ptr %i.fx, align 4, !tbaa !27
  %i.fy = fadd nsz float %3, %.072100             ; 3 uses
  %i.fz = fcmp nsz ult float %i.fy, 1.000000e+00
  br i1 %i.fz, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_Z21biLinearInterpolationffffffb.exit
  %i.ga = fadd nsz float %i.fy, -1.000000e+00
  %i.gb = add i32 %.062103, 1
  %i.gc = add i32 %.062103, 2                     ; 2 uses
  %i.gd = add i32 %i.gc, %i.eg
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !27
  %i.gh = add i32 %i.gc, %i.ep
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !27
  %i.gl = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gg, i64 1
  br label %bb.e

bb.e:                                             ; preds = %_Z21biLinearInterpolationffffffb.exit, %bb.d
  %.173 = phi nsz float [ %i.ga, %bb.d ], [ %i.fy, %_Z21biLinearInterpolationffffffb.exit ]
  %.163 = phi i32 [ %i.gb, %bb.d ], [ %.062103, %_Z21biLinearInterpolationffffffb.exit ]
  %i.gn = phi <2 x float> [ %i.gm, %bb.d ], [ %i.fg, %_Z21biLinearInterpolationffffffb.exit ]
  %i.go = phi <2 x float> [ %i.fg, %bb.d ], [ %i.fh, %_Z21biLinearInterpolationffffffb.exit ]
  %i.gp = add nuw i32 %.167102, 1                 ; 2 uses
  %.not85 = icmp eq i32 %i.gp, %i.bc
  br i1 %.not85, label %._crit_edge105.split, label %_Z21biLinearInterpolationffffffb.exit, !llvm.loop !93

._crit_edge105.split:                             ; preds = %bb.e
  %i.gq = fadd nsz float %4, %.070108             ; 3 uses
  %i.gr = fcmp nsz ult float %i.gq, 1.000000e+00  ; 2 uses
  %i.gs = fadd nsz float %i.gq, -1.000000e+00
  %.171 = select nsz i1 %i.gr, float %i.gq, float %i.gs
  %.1 = select i1 %i.gr, i32 %.0112, i32 %i.eo
  %i.gt = add nuw i32 %.165111, 1                 ; 2 uses
  %.not84 = icmp eq i32 %i.gt, %i.az
  br i1 %.not84, label %._crit_edge114.split, label %.lr.ph, !llvm.loop !94

._crit_edge114.split:                             ; preds = %._crit_edge105.split, %._crit_edge105.split.us.us, %.lr.ph113, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Noise10valueMap3DEffffffi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = and i32 %i.b, 2
  %.not180 = icmp eq i32 %i.c, 0
  %i.d = insertelement <2 x float> poison, float %1, i64 0
  %i.e = insertelement <2 x float> %i.d, float %2, i64 1 ; 2 uses
  %i.f = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.e)
  %i.g = tail call nsz noundef float @llvm.floor.f32(float %3)
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  %i.i = sitofp nsz i32 %i.h to float
  %i.j = fsub nsz float %3, %i.i                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = fptosi <2 x float> %i.f to <2 x i32>     ; 4 uses
  %i.m = sitofp nsz <2 x i32> %i.l to <2 x float>
  %i.n = fsub nsz <2 x float> %i.e, %i.m          ; 3 uses
  %i.o = load <2 x i32>, ptr %i.k, align 4, !tbaa !36 ; 3 uses
  %i.p = uitofp nsz <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = insertelement <2 x float> %i.q, float %5, i64 1
  %i.s = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.r, <2 x float> %i.n)
  %i.t = fptoui <2 x float> %i.s to <2 x i32>
  %.fr264 = freeze <2 x i32> %i.t                 ; 2 uses
  %i.u = add <2 x i32> %.fr264, splat (i32 2)     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43   ; 3 uses
  %i.x = uitofp nsz i32 %i.w to float
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %6, float %i.j)
  %i.z = fptoui float %i.y to i32
  %i.aa = add i32 %i.z, 2                         ; 2 uses
  %.not192 = icmp eq i32 %i.aa, 0
  br i1 %.not192, label %.preheader181, label %.preheader183.lr.ph

.preheader183.lr.ph:                              ; preds = %bb.a
  %i.ab = icmp eq <2 x i32> %i.u, zeroinitializer
  %i.ac = mul i32 %7, 1013
  %8 = bitcast <2 x i1> %i.ab to i2
  %or.cond.not = icmp eq i2 %8, 0
  br i1 %or.cond.not, label %.preheader183.lr.ph.split.split, label %.preheader181

.preheader183.lr.ph.split.split:                  ; preds = %.preheader183.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = extractelement <2 x i32> %i.u, i64 0    ; 4 uses
  %i.ag = extractelement <2 x i32> %i.u, i64 1
  %i.ah = extractelement <2 x i32> %.fr264, i64 0
  %i.ai = extractelement <2 x i32> %i.l, i64 1
  %min.iters.check = icmp ult i32 %i.af, 4
  %i.aj = sub i32 -2, %i.ah
  %n.vec = and i32 %i.af, -4                      ; 4 uses
  %broadcast.splat260 = shufflevector <2 x i32> %i.l, <2 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i32 %i.af, %n.vec
  %i.ak = extractelement <2 x i32> %i.l, i64 0
  br label %.preheader183

.preheader183:                                    ; preds = %.preheader183.lr.ph.split.split, %._crit_edge190.split
  %.0142194 = phi i32 [ 0, %.preheader183.lr.ph.split.split ], [ %i.cq, %._crit_edge190.split ] ; 2 uses
  %.0148193 = phi i32 [ 0, %.preheader183.lr.ph.split.split ], [ %.lcssa258, %._crit_edge190.split ]
  %i.al = add i32 %.0142194, %i.h
  %i.am = mul nsw i32 %i.al, 52591
  %i.an = add i32 %i.am, %i.ac
  br label %.preheader182

.preheader181:                                    ; preds = %._crit_edge190.split, %.preheader183.lr.ph, %bb.a
  %i.ao = extractelement <2 x i32> %i.u, i64 0    ; 3 uses
  %i.ap = extractelement <2 x i32> %i.u, i64 1
  %factor.op.mul223 = mul i32 %i.ap, %i.ao        ; 2 uses
  %.not175224 = icmp eq i32 %i.w, 0
  br i1 %.not175224, label %._crit_edge230.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader181
  %i.aq = extractelement <2 x i32> %i.o, i64 1    ; 2 uses
  %.not176213 = icmp eq i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %.not176213, label %._crit_edge230.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.as = extractelement <2 x i32> %i.o, i64 0    ; 3 uses
  %.not177197 = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44 ; 16 uses
  br i1 %.not177197, label %._crit_edge230.split, label %.preheader.lr.ph.split.split

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 2 uses
  %i.aw = extractelement <2 x float> %i.n, i64 1
  %i.ax = extractelement <2 x float> %i.n, i64 0  ; 2 uses
  br label %.preheader

.preheader182:                                    ; preds = %.preheader183, %._crit_edge
  %.0144189 = phi i32 [ 0, %.preheader183 ], [ %i.cp, %._crit_edge ] ; 2 uses
  %.1149188 = phi i32 [ %.0148193, %.preheader183 ], [ %.lcssa258, %._crit_edge ] ; 4 uses
  %i.ay = add i32 %.0144189, %i.ai
  %i.az = mul nsw i32 %i.ay, 31337
  %i.ba = add i32 %i.an, %i.az                    ; 2 uses
  %i.bb = icmp ult i32 %i.aj, %.1149188
  %or.cond263 = select i1 %min.iters.check, i1 true, i1 %i.bb
  br i1 %or.cond263, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader182
  %i.bc = add i32 %.1149188, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bd = add i32 %.1149188, %index
  %i.be = add <4 x i32> %vec.ind, %broadcast.splat260
  %i.bf = mul nsw <4 x i32> %i.be, splat (i32 1619)
  %i.bg = add <4 x i32> %broadcast.splat, %i.bf
  %i.bh = and <4 x i32> %i.bg, splat (i32 2147483647) ; 2 uses
  %i.bi = lshr <4 x i32> %i.bh, splat (i32 13)
  %i.bj = xor <4 x i32> %i.bi, %i.bh              ; 3 uses
  %i.bk = mul <4 x i32> %i.bj, splat (i32 60493)
  %i.bl = mul <4 x i32> %i.bk, %i.bj
  %i.bm = add <4 x i32> %i.bl, splat (i32 19990303)
  %i.bn = mul <4 x i32> %i.bm, %i.bj
  %i.bo = add <4 x i32> %i.bn, splat (i32 1376312589)
  %i.bp = and <4 x i32> %i.bo, splat (i32 2147483647)
  %i.bq = uitofp nneg <4 x i32> %i.bp to <4 x float>
  %i.br = fmul nnan nsz <4 x float> %i.bq, splat (float f0x30800000)
  %i.bs = fsub nsz <4 x float> splat (float 1.000000e+00), %i.br
  %i.bt = zext i32 %i.bd to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bt
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !27
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.bv = icmp eq i32 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader182, %middle.block
  %.0146186.ph = phi i32 [ 0, %.preheader182 ], [ %n.vec, %middle.block ]
  %.2185.ph = phi i32 [ %.1149188, %.preheader182 ], [ %i.bc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0146186 = phi i32 [ %i.co, %scalar.ph ], [ %.0146186.ph, %scalar.ph.preheader ] ; 2 uses
  %.2185 = phi i32 [ %i.cl, %scalar.ph ], [ %.2185.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bw = add i32 %.0146186, %i.ak
  %i.bx = mul nsw i32 %i.bw, 1619
  %i.by = add i32 %i.ba, %i.bx
  %i.bz = and i32 %i.by, 2147483647               ; 2 uses
  %i.ca = lshr i32 %i.bz, 13
  %i.cb = xor i32 %i.ca, %i.bz                    ; 3 uses
  %i.cc = mul i32 %i.cb, 60493
  %i.cd = mul i32 %i.cc, %i.cb
  %i.ce = add i32 %i.cd, 19990303
  %i.cf = mul i32 %i.ce, %i.cb
  %i.cg = add i32 %i.cf, 1376312589
  %i.ch = and i32 %i.cg, 2147483647
  %i.ci = uitofp nneg i32 %i.ch to float
  %i.cj = fmul nnan nsz float %i.ci, f0x30800000
  %i.ck = fsub nsz float 1.000000e+00, %i.cj
  %i.cl = add i32 %.2185, 1                       ; 2 uses
  %i.cm = zext i32 %.2185 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cm
  store float %i.ck, ptr %i.cn, align 4, !tbaa !27
  %i.co = add nuw i32 %.0146186, 1                ; 2 uses
  %.not179 = icmp eq i32 %i.co, %i.af
  br i1 %.not179, label %._crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa258 = phi i32 [ %i.bc, %middle.block ], [ %i.cl, %scalar.ph ] ; 2 uses
  %i.cp = add nuw i32 %.0144189, 1                ; 2 uses
  %.not178 = icmp eq i32 %i.cp, %i.ag
  br i1 %.not178, label %._crit_edge190.split, label %.preheader182, !llvm.loop !99

._crit_edge190.split:                             ; preds = %._crit_edge
  %i.cq = add nuw i32 %.0142194, 1                ; 2 uses
  %.not = icmp eq i32 %i.cq, %i.aa
  br i1 %.not, label %.preheader181, label %.preheader183, !llvm.loop !100

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge220.split
  %.0229 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %.1, %._crit_edge220.split ] ; 3 uses
  %.1143228 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %i.jj, %._crit_edge220.split ]
  %.3227 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %.us-phi, %._crit_edge220.split ]
  %.0150225 = phi float [ %i.j, %.preheader.lr.ph.split.split ], [ %.1151, %._crit_edge220.split ] ; 7 uses
  %factor.op.mul.reass = mul i32 %factor.op.mul223, %.0229 ; 2 uses
  %i.cr = add i32 %.0229, 1
  %i.cs = mul i32 %factor.op.mul223, %i.cr        ; 2 uses
  %i.ct = fmul nsz float %.0150225, %.0150225
  %i.cu = fmul nsz float %.0150225, %i.ct
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %.0150225, float 6.000000e+00, float -1.500000e+01)
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %.0150225, float %i.cv, float 1.000000e+01)
  %i.cx = fmul nsz float %i.cu, %i.cw
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge211
  %.0138218 = phi i32 [ 0, %.preheader ], [ %.1139, %._crit_edge211 ] ; 3 uses
  %.1145217 = phi i32 [ 0, %.preheader ], [ %i.je, %._crit_edge211 ]
  %.4216 = phi i32 [ %.3227, %.preheader ], [ %.us-phi, %._crit_edge211 ] ; 2 uses
  %.0152214 = phi float [ %i.aw, %.preheader ], [ %.1153, %._crit_edge211 ] ; 7 uses
  %i.cy = mul i32 %.0138218, %i.ao                ; 2 uses
  %i.cz = add i32 %i.cy, %factor.op.mul.reass     ; 4 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !27 ; 2 uses
  %i.dd = add i32 %i.cz, 1
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !27 ; 2 uses
  %i.dh = add i32 %.0138218, 1                    ; 2 uses
  %i.di = mul i32 %i.dh, %i.ao                    ; 2 uses
  %i.dj = add i32 %i.di, %factor.op.mul.reass     ; 4 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !27 ; 2 uses
  %i.dn = add i32 %i.dj, 1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !27 ; 2 uses
  %i.dr = add i32 %i.cy, %i.cs                    ; 4 uses
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !27 ; 2 uses
  %i.dv = add i32 %i.dr, 1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !27 ; 2 uses
  %i.dz = add i32 %i.di, %i.cs                    ; 4 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !27 ; 2 uses
  %i.ed = add i32 %i.dz, 1
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !27 ; 2 uses
  %i.eh = fmul nsz float %.0152214, %.0152214
  %i.ei = fmul nsz float %.0152214, %i.eh
  %i.ej = tail call nsz float @llvm.fmuladd.f32(float %.0152214, float 6.000000e+00, float -1.500000e+01)
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %.0152214, float %i.ej, float 1.000000e+01)
  %i.el = fmul nsz float %i.ei, %i.ek
  br i1 %.not180, label %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader, label %_Z22triLinearInterpolationfffffffffffb.exit.preheader

_Z22triLinearInterpolationfffffffffffb.exit.preheader: ; preds = %.lr.ph
  %i.em = insertelement <2 x float> poison, float %i.du, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.dc, i64 1
  %i.eo = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.dg, i64 1
  %i.eq = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.dm, i64 1
end_hunk_1
