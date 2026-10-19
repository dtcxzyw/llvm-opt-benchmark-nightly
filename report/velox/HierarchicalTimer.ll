Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HierarchicalTimer?download=true
inline.NumInlined: 915
inline.NumDeleted: 373
begin_hunk_0_@_ZNK8facebook5velox9TimerTree8toStringB5cxx11Eb:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i187: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i181
  %i.kq = icmp ult i64 %i.kk, 16
  call void @llvm.assume(i1 %i.kq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i181
  %i.kr = load i64, ptr %i.m, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i183: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i187
  %i.ks = phi i64 [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i187 ]
  %.not.i.i.i.i184 = icmp ugt i64 %i.kn, %i.ks
  br i1 %.not.i.i.i.i184, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i183
  %.not8.i.i.i.i185 = icmp eq i64 %i.kj, 0
  br i1 %.not8.i.i.i.i185, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kk ; 2 uses
  %cond.i.i.i.i186 = icmp eq i64 %i.kj, 1
  br i1 %cond.i.i.i.i186, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ku = load i8, ptr %i.kh, align 1, !tbaa !21
  store i8 %i.ku, ptr %i.kt, align 1, !tbaa !21
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kt, ptr align 1 %i.kh, i64 %i.kj, i1 false)
  br label %bb.cr

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.kk, i64 noundef 0, ptr noundef %i.kh, i64 noundef %i.kj)
          to label %bb.cr unwind label %bb.ct

bb.cr:                                            ; preds = %bb.cp, %bb.co, %bb.cm, %bb.cq
  store i64 %i.kn, ptr %i.n, align 8, !tbaa !19
  %i.kv = load ptr, ptr %0, align 8, !tbaa !18
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kn
  store i8 0, ptr %i.kw, align 1, !tbaa !21
  %i.kx = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.cr
  %i.la = load i64, ptr %i.ky, align 8, !tbaa !21
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.lb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %i.lc = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.u
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.le = load i64, ptr %i.u, align 8, !tbaa !21
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.lg = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.p
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.li = load i64, ptr %i.p, align 8, !tbaa !21
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.cu

bb.cs:                                            ; preds = %._crit_edge
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

bb.ct:                                            ; preds = %bb.cq, %bb.cl
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.ct
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !21
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200, %bb.cs
  %.pn44 = phi { ptr, i32 } [ %i.lk, %bb.cs ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200 ], [ %i.ll, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %.body

.body:                                            ; preds = %bb.cj, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn46 = phi { ptr, i32 } [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.kg, %bb.cj ], [ %i.jp, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit9.i ] ; 2 uses
  %i.lr = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.u
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %.body
  %i.lt = load i64, ptr %i.u, align 8, !tbaa !21
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %bb.t
  %.pn46.pn = phi { ptr, i32 } [ %i.bx, %bb.t ], [ %.pn46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %.pn46, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.lv = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.p
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.lx = load i64, ptr %i.p, align 8, !tbaa !21
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.s
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.s ], [ %.pn46.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.lz = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.m
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.mb = load i64, ptr %i.m, align 8, !tbaa !21
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  resume { ptr, i32 } %.pn46.pn.pn
}

declare void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(176) ptr @_ZNK8facebook5velox9TimerTree4rootEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8facebook5velox9TimerTree4nameB5cxx11Ev(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(40) %0) local_unnamed_addr #5 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN8facebook5velox9TimerTree14threadInstanceEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %.b = load i1, ptr @_ZGVZN8facebook5velox9TimerTree14threadInstanceEvE8instance, align 1
  br i1 %.b, label %bb.d, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %1)
  invoke void @_ZN8facebook5velox9TimerTreeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN8facebook5velox9TimerTree14threadInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.d = load i64, ptr %i.b, align 8, !tbaa !21
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  %i.f = call i32 @__cxa_thread_atexit(ptr nonnull @_ZN8facebook5velox9TimerTreeD1Ev, ptr nonnull @_ZZN8facebook5velox9TimerTree14threadInstanceEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  store i1 true, ptr @_ZGVZN8facebook5velox9TimerTree14threadInstanceEvE8instance, align 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN8facebook5velox9TimerTree14threadInstanceEvE8instance)
  ret ptr %i.g

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox11ScopedTimerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %.b.i = load i1, ptr @_ZGVZN8facebook5velox9TimerTree14threadInstanceEvE8instance, align 1
  br i1 %.b.i, label %_ZN8facebook5velox9TimerTree14threadInstanceEv.exit, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN8facebook5velox9TimerTreeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN8facebook5velox9TimerTree14threadInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.d = load i64, ptr %i.b, align 8, !tbaa !21
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.f = call i32 @__cxa_thread_atexit(ptr nonnull @_ZN8facebook5velox9TimerTreeD1Ev, ptr nonnull @_ZZN8facebook5velox9TimerTree14threadInstanceEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  store i1 true, ptr @_ZGVZN8facebook5velox9TimerTree14threadInstanceEvE8instance, align 1
  br label %_ZN8facebook5velox9TimerTree14threadInstanceEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %i.g

_ZN8facebook5velox9TimerTree14threadInstanceEv.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.m = call noundef nonnull align 8 dereferenceable(40) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN8facebook5velox9TimerTree14threadInstanceEvE8instance)
  store ptr %i.m, ptr %0, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  store i64 %i.q, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.s = call i32 @clock_gettime(i32 noundef 3, ptr noundef nonnull %2) #13 ; 0 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !64
  %i.u = mul i64 %i.t, 1000000000
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !65
  %i.x = add i64 %i.u, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  store i64 %i.x, ptr %i.r, align 8, !tbaa !74
  %i.y = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8facebook5velox12_GLOBAL__N_111activeNode_E) ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 3 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !71
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN8facebook5velox9TimerTree14threadInstanceEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !168, !nonnull !75, !align !169
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox9TimerTree14threadInstanceEv.exit, %bb.e
  %.sink7 = phi ptr [ %i.ac, %bb.e ], [ %i.z, %_ZN8facebook5velox9TimerTree14threadInstanceEv.exit ]
  %i.ad = call noundef ptr @_ZN8facebook5velox9TimerNode16getOrCreateChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %.sink7, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !76
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 136 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !52
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox11ScopedTimerC2ERNS0_9TimerTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 25), (32, 48)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN8facebook5velox9TimerTree15getOrCreateNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  store i64 %i.f, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.h = call i32 @clock_gettime(i32 noundef 3, ptr noundef nonnull %3) #13 ; 0 uses
  %i.i = load i64, ptr %3, align 8, !tbaa !64
  %i.j = mul i64 %i.i, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = add i64 %i.j, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store i64 %i.m, ptr %i.g, align 8, !tbaa !74
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !52
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8facebook5velox11ScopedTimerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.45", align 16 ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = call i32 @clock_gettime(i32 noundef 3, ptr noundef nonnull %2) #13 ; 0 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !64
  %i.d = mul i64 %i.c, 1000000000
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65
  %i.g = add i64 %i.d, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73   ; 3 uses
  %.not = icmp ult i64 %i.a, %i.i
  br i1 %.not, label %bb.b, label %bb.e, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13, !noalias !172
  store i64 %i.a, ptr %1, align 16, !tbaa !21, !noalias !172
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.j, align 16, !tbaa !21, !noalias !172
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.28, i64 11, i64 68, ptr nonnull %1)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13, !noalias !172
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11ScopedTimerD1EvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.28) #25
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76   ; 6 uses
  %i.m = sub nuw i64 %i.a, %i.i                   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = add i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp ult i64 %i.m, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.m, ptr %i.q, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 152 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = icmp ugt i64 %i.m, %i.u
  br i1 %i.v, label %bb.h, label %_ZN8facebook5velox9TimerNode7addTimeEm.exit

bb.h:                                             ; preds = %bb.g
  store i64 %i.m, ptr %i.t, align 8, !tbaa !48
  br label %_ZN8facebook5velox9TimerNode7addTimeEm.exit

_ZN8facebook5velox9TimerNode7addTimeEm.exit:      ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !74   ; 2 uses
  %.not3 = icmp ult i64 %i.g, %i.x
  br i1 %.not3, label %_ZN8facebook5velox9TimerNode10addCpuTimeEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox9TimerNode7addTimeEm.exit
  %i.y = sub nuw i64 %i.g, %i.x                   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49
  %i.ab = add i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ae = icmp ult i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !50
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 168 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !51
  %i.ah = icmp ugt i64 %i.y, %i.ag
  br i1 %i.ah, label %bb.l, label %_ZN8facebook5velox9TimerNode10addCpuTimeEm.exit

bb.l:                                             ; preds = %bb.k
  store i64 %i.y, ptr %i.af, align 8, !tbaa !51
  br label %_ZN8facebook5velox9TimerNode10addCpuTimeEm.exit

_ZN8facebook5velox9TimerNode10addCpuTimeEm.exit:  ; preds = %bb.l, %bb.k, %_ZN8facebook5velox9TimerNode7addTimeEm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
