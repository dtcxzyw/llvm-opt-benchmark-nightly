Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3CUse?download=true
inline.NumInlined: 618
inline.NumDeleted: 252
begin_hunk_0_@_ZL5debugv:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr @_ZZL5debugvE7s_level, align 4, !tbaa !101 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23._crit_edge, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  %i.h = sext i8 %i.g to i32
  %i.i = call i32 @tolower(i32 noundef %i.h) #23
  %i.j = trunc i32 %i.i to i8
  store i8 %i.j, ptr %i.f, align 1, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = invoke noundef i32 @_ZNK9V3Options10debugLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef i32 @_ZNK9V3Options13debugSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !20
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.r = call i32 @llvm.umax.i32(i32 %i.k, i32 %i.l) ; 2 uses
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1914), align 2, !tbaa !102, !range !103, !noundef !104
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.t, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.j:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.j
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !20
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i32 %i.r, ptr @_ZZL5debugvE7s_level, align 4, !tbaa !101
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %i.ac = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %.pre = load i32, ptr @_ZZL5debugvE7s_level, align 4
  %spec.select = select i1 %i.t, i32 %.pre, i32 %i.r
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23._crit_edge

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.u, %bb.h ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.m
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  resume { ptr, i32 } %.pn.pn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.a
  %.114 = phi i32 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.a, %bb.a ]
  ret i32 %.114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8V3Global5rootpEv(ptr noundef nonnull align 8 dereferenceable(1920) %0) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10AstNetlist8modulespEv(ptr noundef nonnull align 8 dereferenceable(408) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11CUseVisitorC2EP13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12VNUser1InUseC2Ev.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 4184) (i8, ptr @_ZTV11CUseVisitor, i64 16), ptr %0, align 8, !tbaa !106
  tail call void @_ZN15VNUserInUseBase8allocateEiRjRb(i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser1InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser1InUse10s_userBusyE)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !173
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !109
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.c, ptr %i.f, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.g, align 8, !tbaa !111
  %i.h = load ptr, ptr %1, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit unwind label %7, !inline_history !0

_ZN14VNVisitorConst12iterateConstEP7AstNode.exit: ; preds = %_ZN12VNUser1InUseC2Ev.exit
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !109  ; 2 uses
  %.not5873 = icmp eq ptr %i.k, %i.c
  br i1 %.not5873, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.a

._crit_edge:                                      ; preds = %bb.ab, %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit
  ret void

7:                                                ; preds = %_ZN12VNUser1InUseC2Ev.exit
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.a:                                             ; preds = %.lr.ph, %bb.ab
  %.sroa.055.074 = phi ptr [ %i.k, %.lr.ph ], [ %i.cr, %bb.ab ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.055.074, i64 32
  %i.t = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #24
          to label %bb.b unwind label %bb.n       ; 9 uses

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.055.074, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !176
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.055.074, i64 72
  %.sroa.0.0.copyload = load i8, ptr %i.w, align 8, !tbaa !114
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(192) %i.t, i16 7, ptr noundef %i.v)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV7AstCUse, i64 16), ptr %i.t, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 168 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !96
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.055.074, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !115
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc29 unwind label %bb.o   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i.i
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !18
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc29, %.noexc
  %i.af = phi ptr [ %i.ad, %.noexc29 ], [ %i.y, %.noexc ] ; 2 uses
  switch i64 %i.ab, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !20
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !19
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i8 %.sroa.0.0.copyload, ptr %i.al, align 8, !tbaa !114
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !173
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %i.am, ptr noundef nonnull %i.t)
          to label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit unwind label %bb.n

_ZN13AstNodeModule9addStmtspEP7AstNode.exit:      ; preds = %bb.e
  %i.an = invoke noundef i32 @_ZL5debugv()
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit
  %i.ao = icmp sgt i32 %i.an, 7
  br i1 %i.ao, label %bb.g, label %bb.ab, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.1, i32 noundef 103)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aq = load ptr, ptr %3, align 8, !tbaa !18
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !19
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.aq, i64 noundef %i.ar)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.5, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %i.t)
          to label %bb.j unwind label %bb.s       ; 0 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.av = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.m
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !20
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.az = load i64, ptr %i.n, align 8, !tbaa !19  ; 2 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !20
  %.not = icmp eq i8 %i.bd, 10
  %i.be = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.o
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36: ; preds = %bb.l
  %i.bg = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.l
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !20
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #20
  %.pre = load ptr, ptr %4, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.bj = phi ptr [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bk = icmp eq ptr %i.bj, %i.p
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !20
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.not, label %bb.v, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.v unwind label %bb.q       ; 0 uses

bb.n:                                             ; preds = %bb.e, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit, %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.o:                                             ; preds = %.noexc.i.i, %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 192) #20
  br label %bb.ac

bb.p:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %bb.h, %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.m
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.s
  %i.bw = load i64, ptr %i.m, align 8, !tbaa !20
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.r ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.bt, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.z

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.u:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ca = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.p
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.u
  %i.cc = load i64, ptr %i.p, align 8, !tbaa !20
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.t
  %.pn20 = phi { ptr, i32 } [ %i.by, %bb.t ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.bz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.z

bb.v:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ce = load ptr, ptr %6, align 8, !tbaa !18
  %i.cf = load i64, ptr %i.q, align 8, !tbaa !19
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ce, i64 noundef %i.cf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48 unwind label %bb.y ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48: ; preds = %bb.w
  %i.ch = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.r
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48
  %i.cj = load i64, ptr %i.r, align 8, !tbaa !20
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.y:                                             ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.r
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.y
  %i.cp = load i64, ptr %i.r, align 8, !tbaa !20
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.x
  %.pn22 = phi { ptr, i32 } [ %i.cl, %bb.x ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.cm, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.q
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.br, %bb.q ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.p
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.z ], [ %i.bq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.f
  %i.cr = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.055.074) #23 ; 2 uses
  %.not58 = icmp eq ptr %i.cr, %i.c
  br i1 %.not58, label %._crit_edge, label %bb.a

bb.ac:                                            ; preds = %bb.n, %bb.o, %bb.aa, %7
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %8, %7 ], [ %.pn22.pn.pn, %bb.aa ], [ %i.bo, %bb.n ], [ %i.bp, %bb.o ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIP8FileLine8VUseTypeESt4lessIS5_ESaIS6_IKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.cs) #19
  call void @_ZN12VNUser1InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.ct) #19
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11CUseVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IP8FileLine8VUseTypeEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIP8FileLine8VUseTypeESt4lessIS5_ESaIS6_IKS5_SA_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIP8FileLine8VUseTypeESt4lessIS5_ESaIS6_IKS5_SA_EEED2Ev.exit: ; preds = %bb.a
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser1InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser1InUse10s_userBusyE)
          to label %_ZN12VNUser1InUseD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIP8FileLine8VUseTypeESt4lessIS5_ESaIS6_IKS5_SA_EEED2Ev.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable

_ZN12VNUser1InUseD2Ev.exit:                       ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIP8FileLine8VUseTypeESt4lessIS5_ESaIS6_IKS5_SA_EEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !99
  %i.b = add i16 %.sroa.0.0.copyload.i.i, -391
  %spec.select.i = icmp ult i16 %i.b, -7
  br i1 %spec.select.i, label %bb.c, label %.critedge, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.7, i32 noundef 1063) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.25)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !99
  %i.f = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.26)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #22
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode5nextpEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  ret ptr %i.b
}

declare void @_ZN8V3Global19dumpCheckGlobalTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibb(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !96
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !115
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.g, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.i, ptr %i.h, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK9V3Options10debugLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 8 dereferenceable(32)) #3

declare noundef i32 @_ZNK9V3Options13debugSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 8 dereferenceable(32)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9V3Options9availableEv(ptr noundef nonnull align 8 dereferenceable(1728) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1722
  %i.b = load i8, ptr %i.a, align 2, !tbaa !102, !range !103, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI13AstNodeModuleS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op1pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  ret ptr %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %magicptr = ptrtoint ptr %1 to i64
  switch i64 %magicptr, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ], !prof !177

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 7) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.17, i64 noundef 15) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
