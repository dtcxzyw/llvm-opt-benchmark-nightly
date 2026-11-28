Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/sbacam?download=true
inline.NumInlined: 2762
inline.NumDeleted: 1446
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5EigenlsINS_6MatrixIdLi3ELi4ELi0ELi3ELi4EEEEERSoS3_RKNS_9DenseBaseIT_EE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !46
  store i8 0, ptr %i.k, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.m, ptr %8, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !46
  store i8 0, ptr %i.m, align 8, !tbaa !12
  invoke void @_ZN5Eigen8IOFormatC2EiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_S8_S8_c(ptr noundef nonnull align 8 dereferenceable(236) %2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 32)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi4ELi0ELi3ELi4EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(236) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN5Eigen8IOFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %2) #18
  %i.p = load ptr, ptr %8, align 8, !tbaa !47     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.m, align 8, !tbaa !12
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.t = load ptr, ptr %7, align 8, !tbaa !47     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.k
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.k, align 8, !tbaa !12
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.x = load ptr, ptr %6, align 8, !tbaa !47     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.z = load i64, ptr %i.i, align 8, !tbaa !12
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ab = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.g
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !12
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.af = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.d
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !12
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.aj = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.al = load i64, ptr %i.a, align 8, !tbaa !12
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.o

bb.d:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen8IOFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %2) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %i.an, %bb.d ]
  %i.ap = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.m
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.f
  %i.ar = load i64, ptr %i.m, align 8, !tbaa !12
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.at = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.k
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.av = load i64, ptr %i.k, align 8, !tbaa !12
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ax = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.i
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.az = load i64, ptr %i.i, align 8, !tbaa !12
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bb = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.g
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !12
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bf = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !12
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bj = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.a
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !12
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double>, <2 x double>) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 40 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  switch i32 %i.b, label %bb.b [
    i32 -1, label %.thread
    i32 -2, label %.thread119
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %.thread119

.thread119:                                       ; preds = %bb.a, %bb.b
  %.078122 = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  store i64 %.078122, ptr %i.h, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread119, %bb.b
  %.not118 = phi i1 [ false, %.thread119 ], [ true, %bb.b ], [ true, %bb.a ]
  %.077 = phi i64 [ %i.i, %.thread119 ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = and i32 %i.k, 1
  %.not81 = icmp eq i32 %i.l, 0
  br i1 %.not81, label %.preheader124, label %.loopexit

.preheader124:                                    ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -24      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader124, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.076167 = phi i64 [ 0, %.preheader124 ], [ %i.db, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.0115166 = phi i64 [ 0, %.preheader124 ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %i.as = getelementptr [8 x i8], ptr %1, i64 %.076167
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !16
  store ptr null, ptr %i.n, align 8, !tbaa !52
  store i8 0, ptr %i.o, align 8, !tbaa !53
  store i8 0, ptr %i.p, align 1, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.at = load i64, ptr %i.t, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at
  store ptr %i.s, ptr %i.au, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  %i.av = load ptr, ptr %3, align 8, !tbaa !16
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ay, ptr noundef null)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %.preheader
  store ptr %i.w, ptr %i.v, align 8, !tbaa !16
  %i.az = load i64, ptr %i.y, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.v, i64 %i.az
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !16
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.v, i64 %i.bd
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef null)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %5 = load i64, ptr %i.t, align 8
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  store ptr %i.s, ptr %6, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

bb.d:                                             ; preds = %.noexc.i
  store ptr %i.z, ptr %3, align 8, !tbaa !16
  %i.bg = load i64, ptr %i.ab, align 8
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  store ptr %i.aa, ptr %i.bh, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.m, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.v, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  store i32 24, ptr %i.af, align 8, !tbaa !60
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !44
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.ah, align 8, !tbaa !12
  %i.bi = load ptr, ptr %3, align 8, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %i.bk
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bl, ptr noundef nonnull %i.ac)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.d
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ac) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.bn = load i64, ptr %i.t, align 8
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  store ptr %i.s, ptr %i.bo, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

common.resume:                                    ; preds = %bb.l, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f, %bb.e, %bb.c
  %.pn.pn.i = phi { ptr, i32 } [ %7, %bb.f ], [ %i.bm, %bb.e ], [ %i.bf, %bb.c ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.d
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %3, i64 %i.br
  %i.bt = load ptr, ptr %0, align 8, !tbaa !16
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.bs, ptr noundef nonnull align 8 dereferenceable(264) %i.bw)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.by = load double, ptr %i.as, align 8, !tbaa !11
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %i.by)
          to label %_ZNSolsEd.exit unwind label %bb.k ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  store ptr %i.aj, ptr %4, align 8, !tbaa !44, !alias.scope !121
  store i64 0, ptr %i.ak, align 8, !tbaa !46, !alias.scope !121
  store i8 0, ptr %i.aj, align 8, !tbaa !12, !alias.scope !121
  %i.ca = load ptr, ptr %i.al, align 8, !tbaa !61, !noalias !121 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.am, align 8, !noalias !121 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !62, !noalias !121 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %4, align 8, !tbaa !47, !alias.scope !121 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.aj
  br i1 %i.ck, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !12, !alias.scope !121
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #20
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEd.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !46
  %.fr = freeze i64 %i.cn                         ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.0115166, i64 %.fr) ; 2 uses
  %i.co = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.aj
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = icmp ult i64 %.fr, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cr = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  store ptr %i.ao, ptr %3, align 8, !tbaa !16
  %i.ct = load i64, ptr %i.aq, align 8
  %i.cu = getelementptr inbounds i8, ptr %3, i64 %i.ct
  store ptr %i.ap, ptr %i.cu, align 8, !tbaa !16
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  %i.cv = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ah
  br i1 %i.cw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.cz = load i64, ptr %i.t, align 8
  %i.da = getelementptr inbounds i8, ptr %3, i64 %i.cz
  store ptr %i.s, ptr %i.da, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.db = add nuw nsw i64 %.076167, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, 3
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !118

bb.k:                                             ; preds = %bb.g, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ci, %.body ], [ %i.dc, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

.loopexit:                                        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.thread
  %.2 = phi i64 [ 0, %.thread ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 4 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !16
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.df ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 225 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !54, !range !65, !noundef !41
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %._crit_edge.i, label %bb.m

._crit_edge.i:                                    ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.m:                                             ; preds = %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 89
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dn)
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef signext i8 %i.du(ptr noundef nonnull align 8 dereferenceable(570) %i.dn, i8 noundef signext 32), !inline_history !0
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i = phi i8 [ %i.dr, %bb.o ], [ %i.dv, %bb.p ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  store i8 %.0.i.i.i, ptr %i.dw, align 8, !tbaa !53
  store i8 1, ptr %i.dj, align 1, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dx = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !46
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.dy, i64 noundef %i.ea) ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not84 = icmp eq i64 %.2, 0                    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ej = load ptr, ptr %i.ec, align 8, !tbaa !47
  %i.ek = load i64, ptr %i.ed, align 8, !tbaa !46
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ej, i64 noundef %i.ek) ; 0 uses
  br i1 %.not84, label %.split.us.us, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit.split.preheader

end_hunk_0
begin_hunk_1_@_ZN5Eigen8IOFormatC2EiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_S8_S8_c:bb.a
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.u ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 2 uses
  %i.ei = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ai
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.ek = load i64, ptr %i.ai, align 8, !tbaa !12
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.t ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  %i.em = load ptr, ptr %i.t, align 8, !tbaa !47  ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.u
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.eo = load i64, ptr %i.u, align 8, !tbaa !12
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.s
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.s ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  %i.eq = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.g
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.es = load i64, ptr %i.g, align 8, !tbaa !12
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Eigen8IOFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !12
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !12
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !12
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !12
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !12
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.an = load i64, ptr %i.al, align 8, !tbaa !12
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  ret void
}

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #11 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !12
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #18
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 40 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  switch i32 %i.b, label %bb.b [
    i32 -1, label %.thread
    i32 -2, label %.thread119
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %.thread119

.thread119:                                       ; preds = %bb.a, %bb.b
  %.078122 = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  store i64 %.078122, ptr %i.h, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread119, %bb.b
  %.not118 = phi i1 [ false, %.thread119 ], [ true, %bb.b ], [ true, %bb.a ]
  %.077 = phi i64 [ %i.i, %.thread119 ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = and i32 %i.k, 1
  %.not81 = icmp eq i32 %i.l, 0
  br i1 %.not81, label %.preheader124, label %.loopexit

.preheader124:                                    ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -24      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader124, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.076166 = phi i64 [ 0, %.preheader124 ], [ %i.db, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.0115165 = phi i64 [ 0, %.preheader124 ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %i.as = getelementptr [8 x i8], ptr %1, i64 %.076166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !16
  store ptr null, ptr %i.n, align 8, !tbaa !52
  store i8 0, ptr %i.o, align 8, !tbaa !53
  store i8 0, ptr %i.p, align 1, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.at = load i64, ptr %i.t, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at
  store ptr %i.s, ptr %i.au, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  %i.av = load ptr, ptr %3, align 8, !tbaa !16
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ay, ptr noundef null)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %.preheader
  store ptr %i.w, ptr %i.v, align 8, !tbaa !16
  %i.az = load i64, ptr %i.y, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.v, i64 %i.az
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !16
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.v, i64 %i.bd
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef null)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %5 = load i64, ptr %i.t, align 8
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  store ptr %i.s, ptr %6, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

bb.d:                                             ; preds = %.noexc.i
  store ptr %i.z, ptr %3, align 8, !tbaa !16
  %i.bg = load i64, ptr %i.ab, align 8
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  store ptr %i.aa, ptr %i.bh, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.m, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.v, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  store i32 24, ptr %i.af, align 8, !tbaa !60
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !44
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.ah, align 8, !tbaa !12
  %i.bi = load ptr, ptr %3, align 8, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %i.bk
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bl, ptr noundef nonnull %i.ac)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.d
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ac) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.bn = load i64, ptr %i.t, align 8
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  store ptr %i.s, ptr %i.bo, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

common.resume:                                    ; preds = %bb.l, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f, %bb.e, %bb.c
  %.pn.pn.i = phi { ptr, i32 } [ %7, %bb.f ], [ %i.bm, %bb.e ], [ %i.bf, %bb.c ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.d
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %3, i64 %i.br
  %i.bt = load ptr, ptr %0, align 8, !tbaa !16
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.bs, ptr noundef nonnull align 8 dereferenceable(264) %i.bw)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.by = load double, ptr %i.as, align 8, !tbaa !11
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %i.by)
          to label %_ZNSolsEd.exit unwind label %bb.k ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  store ptr %i.aj, ptr %4, align 8, !tbaa !44, !alias.scope !130
  store i64 0, ptr %i.ak, align 8, !tbaa !46, !alias.scope !130
  store i8 0, ptr %i.aj, align 8, !tbaa !12, !alias.scope !130
  %i.ca = load ptr, ptr %i.al, align 8, !tbaa !61, !noalias !130 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.am, align 8, !noalias !130 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !62, !noalias !130 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %4, align 8, !tbaa !47, !alias.scope !130 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.aj
  br i1 %i.ck, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !12, !alias.scope !130
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #20
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEd.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.0115165, i64 %i.cn) ; 2 uses
  %i.co = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.aj
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cr = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  store ptr %i.ao, ptr %3, align 8, !tbaa !16
  %i.ct = load i64, ptr %i.aq, align 8
  %i.cu = getelementptr inbounds i8, ptr %3, i64 %i.ct
  store ptr %i.ap, ptr %i.cu, align 8, !tbaa !16
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  %i.cv = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ah
  br i1 %i.cw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.cz = load i64, ptr %i.t, align 8
  %i.da = getelementptr inbounds i8, ptr %3, i64 %i.cz
  store ptr %i.s, ptr %i.da, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.db = add nuw nsw i64 %.076166, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, 4
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !127

bb.k:                                             ; preds = %bb.g, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ci, %.body ], [ %i.dc, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

.loopexit:                                        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.thread
  %.2 = phi i64 [ 0, %.thread ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 5 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !16
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.df ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 225 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !54, !range !65, !noundef !41
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %._crit_edge.i, label %bb.m

._crit_edge.i:                                    ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.m:                                             ; preds = %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 89
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dn)
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef signext i8 %i.du(ptr noundef nonnull align 8 dereferenceable(570) %i.dn, i8 noundef signext 32), !inline_history !0
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i = phi i8 [ %i.dr, %bb.o ], [ %i.dv, %bb.p ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  store i8 %.0.i.i.i, ptr %i.dw, align 8, !tbaa !53
  store i8 1, ptr %i.dj, align 1, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dx = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !46
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.dy, i64 noundef %i.ea) ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !46
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ed, i64 noundef %i.ef) ; 0 uses
  %.not84 = icmp eq i64 %.2, 0                    ; 2 uses
  br i1 %.not84, label %.split.us.preheader, label %bb.q

bb.q:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %i.eh = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %0, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 224
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEEEERSoS4_RKT_RKNS_8IOFormatE:bb.a

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96: ; preds = %.split.preheader, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91
  %i.gv = phi ptr [ %i.fm, %.split.preheader ], [ %.pre171, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fp, i64 224
  store i8 %i.fq, ptr %i.gw, align 8, !tbaa !53
  %i.gx = getelementptr i8, ptr %i.gv, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr %0, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %.2, ptr %i.ha, align 8, !tbaa !64
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !11
  %i.hd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.hc) ; 0 uses
  %i.he = load ptr, ptr %i.fg, align 8, !tbaa !47
  %i.hf = load i64, ptr %i.fh, align 8, !tbaa !46
  %i.hg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.he, i64 noundef %i.hf) ; 0 uses
  %i.hh = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds i8, ptr %0, i64 %i.hj ; 3 uses
  %i.hl = load i8, ptr %i.fi, align 8, !tbaa !66
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 225 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !54, !range !65, !noundef !41
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1, label %bb.x

bb.x:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 240
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i88.1 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i88.1, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1: ; preds = %bb.x
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !40
  %.not.i1.i.i.i90.1 = icmp eq i8 %i.hs, 0
  br i1 %.not.i1.i.i.i90.1, label %bb.y, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hq)
  %i.ht = load ptr, ptr %i.hq, align 8, !tbaa !16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call noundef signext i8 %i.hv(ptr noundef nonnull align 8 dereferenceable(570) %i.hq, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre172.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1: ; preds = %bb.y, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1
  %.pre172 = phi ptr [ %.pre172.pre, %bb.y ], [ %i.hh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1 ]
  store i8 1, ptr %i.hm, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96
  %i.hx = phi ptr [ %.pre172, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1 ], [ %i.hh, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 224
  store i8 %i.hl, ptr %i.hy, align 8, !tbaa !53
  %i.hz = getelementptr i8, ptr %i.hx, i64 -24
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds i8, ptr %0, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store i64 %.2, ptr %i.ic, align 8, !tbaa !64
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ie = load double, ptr %i.id, align 16, !tbaa !11
  %i.if = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.ie) ; 0 uses
  %i.ig = load ptr, ptr %i.fg, align 8, !tbaa !47
  %i.ih = load i64, ptr %i.fh, align 8, !tbaa !46
  %i.ii = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ig, i64 noundef %i.ih) ; 0 uses
  %i.ij = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 -24
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = getelementptr inbounds i8, ptr %0, i64 %i.il ; 3 uses
  %i.in = load i8, ptr %i.fi, align 8, !tbaa !66
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 225 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !54, !range !65, !noundef !41
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.2, label %bb.z

bb.z:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 240
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i88.2 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i88.2, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2: ; preds = %bb.z
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !40
  %.not.i1.i.i.i90.2 = icmp eq i8 %i.iu, 0
  br i1 %.not.i1.i.i.i90.2, label %bb.aa, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.is)
  %i.iv = load ptr, ptr %i.is, align 8, !tbaa !16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = call noundef signext i8 %i.ix(ptr noundef nonnull align 8 dereferenceable(570) %i.is, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre173.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2: ; preds = %bb.aa, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2
  %.pre173 = phi ptr [ %.pre173.pre, %bb.aa ], [ %i.ij, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2 ]
  store i8 1, ptr %i.io, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.2

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.2: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1
  %i.iz = phi ptr [ %.pre173, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2 ], [ %i.ij, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.im, i64 224
  store i8 %i.in, ptr %i.ja, align 8, !tbaa !53
  %i.jb = getelementptr i8, ptr %i.iz, i64 -24
  %i.jc = load i64, ptr %i.jb, align 8
  %i.jd = getelementptr inbounds i8, ptr %0, i64 %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i64 %.2, ptr %i.je, align 8, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.2, %.split.us.preheader
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !11
  %i.jh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.jg) ; 0 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !47
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !46
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.jj, i64 noundef %i.jl) ; 0 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !47
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !46
  %i.jr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.jo, i64 noundef %i.jq) ; 0 uses
  br i1 %.not118, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.js = load ptr, ptr %0, align 8, !tbaa !16
  %i.jt = getelementptr i8, ptr %i.js, i64 -24
  %i.ju = load i64, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds i8, ptr %0, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 %.077, ptr %i.jw, align 8, !tbaa !50
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  br i1 %.not84, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jx = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 -24
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds i8, ptr %0, i64 %i.jz ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 225 ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !54, !range !65, !noundef !41
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit106, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 240
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i98, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99: ; preds = %bb.ae
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !40
  %.not.i1.i.i.i100 = icmp eq i8 %i.kh, 0
  br i1 %.not.i1.i.i.i100, label %bb.ag, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kf)
  %i.ki = load ptr, ptr %i.kf, align 8, !tbaa !16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = call noundef signext i8 %i.kk(ptr noundef nonnull align 8 dereferenceable(570) %i.kf, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre174.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99, %bb.ag
  %.pre174 = phi ptr [ %i.jx, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99 ], [ %.pre174.pre, %bb.ag ]
  store i8 1, ptr %i.kb, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit106

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit106: ; preds = %bb.ad, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101
  %i.km = phi ptr [ %i.jx, %bb.ad ], [ %.pre174, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101 ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ka, i64 224
  store i8 %i.dx, ptr %i.kn, align 8, !tbaa !53
  %i.ko = getelementptr i8, ptr %i.km, i64 -24
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds i8, ptr %0, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store i64 %i.di, ptr %i.kr, align 8, !tbaa !64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ac, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit106
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 39 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  switch i32 %i.b, label %bb.b [
    i32 -1, label %.thread
    i32 -2, label %.thread118
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %.thread118

.thread118:                                       ; preds = %bb.a, %bb.b
  %.078121 = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  store i64 %.078121, ptr %i.h, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread118, %bb.b
  %.not117 = phi i1 [ false, %.thread118 ], [ true, %bb.b ], [ true, %bb.a ]
  %.077 = phi i64 [ %i.i, %.thread118 ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = and i32 %i.k, 1
  %.not81 = icmp eq i32 %i.l, 0
  br i1 %.not81, label %.preheader124, label %.loopexit

.preheader124:                                    ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -24      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader124, %bb.c
  %.076167 = phi i64 [ 0, %.preheader124 ], [ %i.as, %bb.c ] ; 2 uses
  %.0114166 = phi i64 [ 0, %.preheader124 ], [ %.sroa.speculated, %bb.c ]
  %.idx.i = mul nuw nsw i64 %.076167, 24
  %invariant.gep = getelementptr i8, ptr %1, i64 %.idx.i
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.as = add nuw nsw i64 %.076167, 1             ; 2 uses
  %exitcond173.not = icmp eq i64 %i.as, 3
  br i1 %exitcond173.not, label %.loopexit, label %.preheader, !llvm.loop !131

bb.d:                                             ; preds = %.preheader, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.075165 = phi i64 [ 0, %.preheader ], [ %i.db, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.1164 = phi i64 [ %.0114166, %.preheader ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !16
  store ptr null, ptr %i.n, align 8, !tbaa !52
  store i8 0, ptr %i.o, align 8, !tbaa !53
  store i8 0, ptr %i.p, align 1, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.at = load i64, ptr %i.t, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at
  store ptr %i.s, ptr %i.au, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  %i.av = load ptr, ptr %3, align 8, !tbaa !16
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ay, ptr noundef null)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  store ptr %i.w, ptr %i.v, align 8, !tbaa !16
  %i.az = load i64, ptr %i.y, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.v, i64 %i.az
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !16
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.v, i64 %i.bd
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef null)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %5 = load i64, ptr %i.t, align 8
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  store ptr %i.s, ptr %6, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

bb.f:                                             ; preds = %.noexc.i
  %i.bg = load i64, ptr %i.ab, align 8
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  store ptr %i.aa, ptr %i.bh, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.m, align 8, !tbaa !16
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.v, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  store i32 24, ptr %i.af, align 8, !tbaa !60
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !44
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.ah, align 8, !tbaa !12
  %i.bi = load ptr, ptr %3, align 8, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %i.bk
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bl, ptr noundef nonnull %i.ac)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.f
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ac) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.bn = load i64, ptr %i.t, align 8
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  store ptr %i.s, ptr %i.bo, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

common.resume:                                    ; preds = %bb.n, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.h, %bb.g, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %7, %bb.h ], [ %i.bm, %bb.g ], [ %i.bf, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.f
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %3, i64 %i.br
  %i.bt = load ptr, ptr %0, align 8, !tbaa !16
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.bs, ptr noundef nonnull align 8 dereferenceable(264) %i.bw)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.075165
  %i.by = load double, ptr %gep, align 8, !tbaa !11
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %i.by)
          to label %_ZNSolsEd.exit unwind label %bb.m ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  store ptr %i.aj, ptr %4, align 8, !tbaa !44, !alias.scope !139
  store i64 0, ptr %i.ak, align 8, !tbaa !46, !alias.scope !139
  store i8 0, ptr %i.aj, align 8, !tbaa !12, !alias.scope !139
  %i.ca = load ptr, ptr %i.al, align 8, !tbaa !61, !noalias !139 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.am, align 8, !noalias !139 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !62, !noalias !139 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %4, align 8, !tbaa !47, !alias.scope !139 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.aj
  br i1 %i.ck, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !12, !alias.scope !139
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #20
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.1164, i64 %i.cn) ; 3 uses
  %i.co = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.aj
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cr = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  store ptr %i.ao, ptr %3, align 8, !tbaa !16
  %i.ct = load i64, ptr %i.aq, align 8
  %i.cu = getelementptr inbounds i8, ptr %3, i64 %i.ct
  store ptr %i.ap, ptr %i.cu, align 8, !tbaa !16
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  %i.cv = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ah
  br i1 %i.cw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.cz = load i64, ptr %i.t, align 8
  %i.da = getelementptr inbounds i8, ptr %3, i64 %i.cz
  store ptr %i.s, ptr %i.da, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.db = add nuw nsw i64 %.075165, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, 3
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !136

bb.m:                                             ; preds = %bb.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ci, %.body ], [ %i.dc, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

.loopexit:                                        ; preds = %bb.c, %.thread
  %.2 = phi i64 [ 0, %.thread ], [ %.sroa.speculated, %bb.c ] ; 4 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !16
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.df ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 225 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !54, !range !65, !noundef !41
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %._crit_edge.i, label %bb.o

._crit_edge.i:                                    ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.o:                                             ; preds = %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 89
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dn)
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef signext i8 %i.du(ptr noundef nonnull align 8 dereferenceable(570) %i.dn, i8 noundef signext 32), !inline_history !0
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi i8 [ %i.dr, %bb.q ], [ %i.dv, %bb.r ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  store i8 %.0.i.i.i, ptr %i.dw, align 8, !tbaa !53
  store i8 1, ptr %i.dj, align 1, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dx = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !46
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.dy, i64 noundef %i.ea) ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not84 = icmp eq i64 %.2, 0                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %bb.t
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERSoS4_RKT_RKNS_8IOFormatE:bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 225 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !54, !range !65, !noundef !41
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95, label %bb.aa

.split.us.preheader:                              ; preds = %bb.v
  %i.gi = getelementptr [8 x i8], ptr %1, i64 %.072171 ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !11
  %i.gk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.gj) ; 0 uses
  %i.gl = load ptr, ptr %i.eh, align 8, !tbaa !47
  %i.gm = load i64, ptr %i.ei, align 8, !tbaa !46
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gl, i64 noundef %i.gm) ; 0 uses
  %i.go = getelementptr i8, ptr %i.gi, i64 24
  %i.gp = load double, ptr %i.go, align 8, !tbaa !11
  %i.gq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.gp) ; 0 uses
  %i.gr = load ptr, ptr %i.eh, align 8, !tbaa !47
  %i.gs = load i64, ptr %i.ei, align 8, !tbaa !46
  %i.gt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gr, i64 noundef %i.gs) ; 0 uses
  br label %.split170.us

.split170.us:                                     ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95.1, %.split.us.preheader
  %i.gu = getelementptr [8 x i8], ptr %1, i64 %.072171
  %i.gv = getelementptr i8, ptr %i.gu, i64 48
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !11
  %i.gx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.gw) ; 0 uses
  %i.gy = load ptr, ptr %i.ej, align 8, !tbaa !47
  %i.gz = load i64, ptr %i.ek, align 8, !tbaa !46
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gy, i64 noundef %i.gz) ; 0 uses
  %.not123 = icmp eq i64 %.072171, 2
  br i1 %.not123, label %bb.s, label %bb.af

bb.aa:                                            ; preds = %.split.preheader
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 240
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i87, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88: ; preds = %bb.aa
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !40
  %.not.i1.i.i.i89 = icmp eq i8 %i.he, 0
  br i1 %.not.i1.i.i.i89, label %bb.ac, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hc)
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef signext i8 %i.hh(ptr noundef nonnull align 8 dereferenceable(570) %i.hc, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre177.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88, %bb.ac
  %.pre177 = phi ptr [ %i.ga, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88 ], [ %.pre177.pre, %bb.ac ]
  store i8 1, ptr %i.gf, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95: ; preds = %.split.preheader, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90
  %i.hj = phi ptr [ %i.ga, %.split.preheader ], [ %.pre177, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gd, i64 224
  store i8 %i.ge, ptr %i.hk, align 8, !tbaa !53
  %i.hl = getelementptr i8, ptr %i.hj, i64 -24
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds i8, ptr %0, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i64 %.2, ptr %i.ho, align 8, !tbaa !64
  %i.hp = getelementptr i8, ptr %i.fu, i64 24
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !11
  %i.hr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.hq) ; 0 uses
  %i.hs = load ptr, ptr %i.eh, align 8, !tbaa !47
  %i.ht = load i64, ptr %i.ei, align 8, !tbaa !46
  %i.hu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hs, i64 noundef %i.ht) ; 0 uses
  %i.hv = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 -24
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds i8, ptr %0, i64 %i.hx ; 3 uses
  %i.hz = load i8, ptr %i.eg, align 8, !tbaa !66
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 225 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !54, !range !65, !noundef !41
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95.1, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 240
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i87.1 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i87.1, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1: ; preds = %bb.ad
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  %i.ig = load i8, ptr %i.if, align 8, !tbaa !40
  %.not.i1.i.i.i89.1 = icmp eq i8 %i.ig, 0
  br i1 %.not.i1.i.i.i89.1, label %bb.ae, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ie)
  %i.ih = load ptr, ptr %i.ie, align 8, !tbaa !16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = call noundef signext i8 %i.ij(ptr noundef nonnull align 8 dereferenceable(570) %i.ie, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre178.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1: ; preds = %bb.ae, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1
  %.pre178 = phi ptr [ %.pre178.pre, %bb.ae ], [ %i.hv, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i88.1 ]
  store i8 1, ptr %i.ia, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95.1

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95.1: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95
  %i.il = phi ptr [ %.pre178, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i90.1 ], [ %i.hv, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit95 ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 224
  store i8 %i.hz, ptr %i.im, align 8, !tbaa !53
  %i.in = getelementptr i8, ptr %i.il, i64 -24
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = getelementptr inbounds i8, ptr %0, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 %.2, ptr %i.iq, align 8, !tbaa !64
  br label %.split170.us

bb.af:                                            ; preds = %.split170.us
  %i.ir = load ptr, ptr %i.el, align 8, !tbaa !47
  %i.is = load i64, ptr %i.em, align 8, !tbaa !46
  %i.it = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ir, i64 noundef %i.is) ; 0 uses
  %i.iu = add nuw nsw i64 %.072171, 1
  br label %bb.t

bb.ag:                                            ; preds = %bb.s
  %i.iv = load ptr, ptr %0, align 8, !tbaa !16
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds i8, ptr %0, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i64 %.077, ptr %i.iz, align 8, !tbaa !50
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.s
  br i1 %.not84, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ja = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 -24
  %i.jc = load i64, ptr %i.jb, align 8
  %i.jd = getelementptr inbounds i8, ptr %0, i64 %i.jc ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 225 ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !54, !range !65, !noundef !41
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit105, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 240
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i97, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98: ; preds = %bb.aj
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.jk = load i8, ptr %i.jj, align 8, !tbaa !40
  %.not.i1.i.i.i99 = icmp eq i8 %i.jk, 0
  br i1 %.not.i1.i.i.i99, label %bb.al, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ji)
  %i.jl = load ptr, ptr %i.ji, align 8, !tbaa !16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = call noundef signext i8 %i.jn(ptr noundef nonnull align 8 dereferenceable(570) %i.ji, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre179.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98, %bb.al
  %.pre179 = phi ptr [ %i.ja, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i98 ], [ %.pre179.pre, %bb.al ]
  store i8 1, ptr %i.je, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit105

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit105: ; preds = %bb.ai, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100
  %i.jp = phi ptr [ %i.ja, %bb.ai ], [ %.pre179, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i100 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 224
  store i8 %i.dx, ptr %i.jq, align 8, !tbaa !53
  %i.jr = getelementptr i8, ptr %i.jp, i64 -24
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds i8, ptr %0, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store i64 %i.di, ptr %i.ju, align 8, !tbaa !64
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit105
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi4ELi0ELi3ELi4EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 39 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  switch i32 %i.b, label %bb.b [
    i32 -1, label %.thread
    i32 -2, label %.thread118
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %.thread118

.thread118:                                       ; preds = %bb.a, %bb.b
  %.078121 = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  store i64 %.078121, ptr %i.h, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread118, %bb.b
  %.not117 = phi i1 [ false, %.thread118 ], [ true, %bb.b ], [ true, %bb.a ]
  %.077 = phi i64 [ %i.i, %.thread118 ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = and i32 %i.k, 1
  %.not81 = icmp eq i32 %i.l, 0
  br i1 %.not81, label %.preheader124, label %.loopexit

.preheader124:                                    ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -24      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader124, %bb.c
  %.076167 = phi i64 [ 0, %.preheader124 ], [ %i.as, %bb.c ] ; 2 uses
  %.0114166 = phi i64 [ 0, %.preheader124 ], [ %.sroa.speculated, %bb.c ]
  %.idx.i = mul nuw nsw i64 %.076167, 24
  %invariant.gep = getelementptr i8, ptr %1, i64 %.idx.i
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.as = add nuw nsw i64 %.076167, 1             ; 2 uses
  %exitcond173.not = icmp eq i64 %i.as, 4
  br i1 %exitcond173.not, label %.loopexit, label %.preheader, !llvm.loop !140

bb.d:                                             ; preds = %.preheader, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.075165 = phi i64 [ 0, %.preheader ], [ %i.db, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.1164 = phi i64 [ %.0114166, %.preheader ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !16
  store ptr null, ptr %i.n, align 8, !tbaa !52
  store i8 0, ptr %i.o, align 8, !tbaa !53
  store i8 0, ptr %i.p, align 1, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.at = load i64, ptr %i.t, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at
  store ptr %i.s, ptr %i.au, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  %i.av = load ptr, ptr %3, align 8, !tbaa !16
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ay, ptr noundef null)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  store ptr %i.w, ptr %i.v, align 8, !tbaa !16
  %i.az = load i64, ptr %i.y, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.v, i64 %i.az
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !16
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.v, i64 %i.bd
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef null)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %5 = load i64, ptr %i.t, align 8
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  store ptr %i.s, ptr %6, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

bb.f:                                             ; preds = %.noexc.i
  %i.bg = load i64, ptr %i.ab, align 8
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  store ptr %i.aa, ptr %i.bh, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.m, align 8, !tbaa !16
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.v, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  store i32 24, ptr %i.af, align 8, !tbaa !60
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !44
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.ah, align 8, !tbaa !12
  %i.bi = load ptr, ptr %3, align 8, !tbaa !16
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %i.bk
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bl, ptr noundef nonnull %i.ac)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.f
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ac) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.bn = load i64, ptr %i.t, align 8
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  store ptr %i.s, ptr %i.bo, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

common.resume:                                    ; preds = %bb.n, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.h, %bb.g, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %7, %bb.h ], [ %i.bm, %bb.g ], [ %i.bf, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.f
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %3, i64 %i.br
  %i.bt = load ptr, ptr %0, align 8, !tbaa !16
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.bs, ptr noundef nonnull align 8 dereferenceable(264) %i.bw)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.075165
  %i.by = load double, ptr %gep, align 8, !tbaa !11
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %i.by)
          to label %_ZNSolsEd.exit unwind label %bb.m ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  store ptr %i.aj, ptr %4, align 8, !tbaa !44, !alias.scope !148
  store i64 0, ptr %i.ak, align 8, !tbaa !46, !alias.scope !148
  store i8 0, ptr %i.aj, align 8, !tbaa !12, !alias.scope !148
  %i.ca = load ptr, ptr %i.al, align 8, !tbaa !61, !noalias !148 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.am, align 8, !noalias !148 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !62, !noalias !148 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %4, align 8, !tbaa !47, !alias.scope !148 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.aj
  br i1 %i.ck, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !12, !alias.scope !148
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #20
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.1164, i64 %i.cn) ; 3 uses
  %i.co = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.aj
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cr = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  store ptr %i.ao, ptr %3, align 8, !tbaa !16
  %i.ct = load i64, ptr %i.aq, align 8
  %i.cu = getelementptr inbounds i8, ptr %3, i64 %i.ct
  store ptr %i.ap, ptr %i.cu, align 8, !tbaa !16
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  %i.cv = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ah
  br i1 %i.cw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.cz = load i64, ptr %i.t, align 8
  %i.da = getelementptr inbounds i8, ptr %3, i64 %i.cz
  store ptr %i.s, ptr %i.da, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.db = add nuw nsw i64 %.075165, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, 3
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !145

bb.m:                                             ; preds = %bb.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ci, %.body ], [ %i.dc, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

.loopexit:                                        ; preds = %bb.c, %.thread
  %.2 = phi i64 [ 0, %.thread ], [ %.sroa.speculated, %bb.c ] ; 5 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !16
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.df ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 225 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !54, !range !65, !noundef !41
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %._crit_edge.i, label %bb.o

._crit_edge.i:                                    ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.o:                                             ; preds = %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 89
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dn)
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef signext i8 %i.du(ptr noundef nonnull align 8 dereferenceable(570) %i.dn, i8 noundef signext 32), !inline_history !0
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi i8 [ %i.dr, %bb.q ], [ %i.dv, %bb.r ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  store i8 %.0.i.i.i, ptr %i.dw, align 8, !tbaa !53
  store i8 1, ptr %i.dj, align 1, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dx = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !46
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.dy, i64 noundef %i.ea) ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not84 = icmp eq i64 %.2, 0                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %bb.t
end_hunk_3
