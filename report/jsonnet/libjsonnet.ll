Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/libjsonnet?download=true
inline.NumInlined: 2016
inline.NumDeleted: 814
begin_hunk_0_@jsonnet_tla_code:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.w:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ac
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.w
  %i.cd = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.v ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ca, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.cf = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.p
  br i1 %i.cg, label %_ZN7jsonnet8internal5VmExtD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ch = load i64, ptr %i.p, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #37
  br label %_ZN7jsonnet8internal5VmExtD2Ev.exit27

_ZN7jsonnet8internal5VmExtD2Ev.exit27:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  %i.cj = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.d
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZN7jsonnet8internal5VmExtD2Ev.exit27
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !47
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZN7jsonnet8internal5VmExtD2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_debug_desugaring(ptr nofree noundef writeonly captures(none) initializes((236, 237)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_indent(ptr nofree noundef writeonly captures(none) initializes((220, 224)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %1, ptr %i.a, align 4, !tbaa !209
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_max_blank_lines(ptr nofree noundef writeonly captures(none) initializes((224, 228)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %1, ptr %i.a, align 8, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_string(ptr nofree noundef writeonly captures(none) initializes((216, 217)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne i32 %1, 115
  %i.b = and i32 %1, -9
  %i.c = icmp ne i32 %i.b, 100
  %or.cond3 = and i1 %i.a, %i.c
  %i.d = trunc nuw nsw i32 %1 to i8
  %i.e = select i1 %or.cond3, i8 108, i8 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.e, ptr %i.f, align 8, !tbaa !211
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_comment(ptr nofree noundef writeonly captures(none) initializes((217, 218)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne i32 %1, 115
  %i.b = and i32 %1, -5
  %i.c = icmp ne i32 %i.b, 104
  %or.cond3 = and i1 %i.a, %i.c
  %i.d = trunc nuw nsw i32 %1 to i8
  %i.e = select i1 %or.cond3, i8 108, i8 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 %i.e, ptr %i.f, align 1, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_pad_arrays(ptr nofree noundef writeonly captures(none) initializes((228, 229)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 4, !tbaa !213
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_pad_objects(ptr nofree noundef writeonly captures(none) initializes((229, 230)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 229
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 1, !tbaa !214
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_pretty_field_names(ptr nofree noundef writeonly captures(none) initializes((233, 234)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 1, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_fmt_sort_imports(ptr nofree noundef writeonly captures(none) initializes((234, 235)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 234
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 2, !tbaa !216
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @jsonnet_max_trace(ptr nofree noundef writeonly captures(none) initializes((16, 20)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @jsonnet_jpath_add(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %char0 = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %char0, 0
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !46
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.e, ptr %i.b, align 8, !tbaa !55
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !44
  %i.h = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.h, ptr %i.d, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !47
  store i8 %i.j, ptr %i.i, align 1, !tbaa !47
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !56
  %i.m = load ptr, ptr %2, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.o = load i64, ptr %i.l, align 8, !tbaa !56   ; 6 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !47
  %.not = icmp eq i8 %i.s, 47
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %i.o, 1                          ; 2 uses
  %i.u = icmp eq ptr %i.p, %i.d
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f
  %i.v = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.v)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.d, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.x = phi i64 [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.y = icmp ugt i64 %i.t, %i.x
  br i1 %i.y, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.o, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc7
  %i.z = phi ptr [ %.pre.i.i, %.noexc7 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.o
  store i8 47, ptr %i.aa, align 1, !tbaa !47
  store i64 %i.t, ptr %i.l, align 8, !tbaa !56
  %i.ab = load ptr, ptr %2, align 8, !tbaa !44
  %3 = getelementptr i8, ptr %i.ab, i64 %i.o
  %i.ac = getelementptr i8, ptr %3, i64 1
  store i8 0, ptr %i.ac, align 1, !tbaa !47
  br label %bb.i

bb.h:                                             ; preds = %bb.m, %.noexc.i.i, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.d
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !47
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !46
  %i.an = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !56  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !55
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !44
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !47
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %bb.j
  %i.as = phi ptr [ %i.aq, %.noexc8 ], [ %i.am, %bb.j ] ; 2 uses
  switch i64 %i.ao, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.at = load i8, ptr %i.an, align 1, !tbaa !47
  store i8 %i.at, ptr %i.as, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.an, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.au = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !56
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.az, ptr %i.ai, align 8, !tbaa !88
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit

bb.m:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit unwind label %bb.h

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bb = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.d
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !47
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @jsonnet_fmt_file(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef %1, i32 noundef 8)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  %.not.i = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %4, align 8, !tbaa !64
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %4, i64 %i.e ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105
  %i.i = or i32 %i.h, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %.sink.i = phi i32 [ %i.i, %bb.c ], [ 0, %.noexc ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit unwind label %bb.r

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit: ; preds = %bb.d
  %i.j = load ptr, ptr %4, align 8, !tbaa !64
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.w, label %bb.e

bb.e:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.4, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %.not.i30 = icmp eq ptr %1, null
  br i1 %.not.i30, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !105
  %i.y = or i32 %i.x, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.y)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.t

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %1, i64 noundef %i.z)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.g, %bb.h
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.ac = tail call ptr @__errno_location() #40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  %i.ae = call ptr @strerror(i32 noundef %i.ad) #35 ; 3 uses
  %.not.i36 = icmp eq ptr %i.ae, null
  br i1 %.not.i36, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.q, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105
  %i.al = or i32 %i.ak, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, i32 noundef %i.al)
end_hunk_0
begin_hunk_1_@_ZL28jsonnet_evaluate_snippet_auxP9JsonnetVmPKcS2_PiN12_GLOBAL__N_18EvalKindE:bb.a
  unreachable

.lr.ph282:                                        ; preds = %._crit_edge276.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !86, !range !95, !noundef !96
  %i.dm = trunc nuw i8 %i.dl to i1
  br label %bb.ab

._crit_edge283:                                   ; preds = %bb.ad, %._crit_edge276
  %i.dn = phi ptr [ %i.cx, %._crit_edge276 ], [ %i.cz, %bb.ad ] ; 2 uses
  %.0129.lcssa = phi i64 [ 0, %._crit_edge276 ], [ %i.ej, %bb.ad ]
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %.0129.lcssa
  store i8 0, ptr %i.do, align 1, !tbaa !47
  store i32 0, ptr %3, align 4, !tbaa !106
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.dq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge283
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %._crit_edge283
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.an

bb.ab:                                            ; preds = %.lr.ph282, %bb.ad
  %.0129280 = phi i64 [ 0, %.lr.ph282 ], [ %i.ej, %bb.ad ] ; 2 uses
  %.sroa.0246.0279 = phi ptr [ %i.cv, %.lr.ph282 ], [ %i.ek, %bb.ad ] ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0246.0279, i64 32
  %i.du = getelementptr inbounds i8, ptr %i.cz, i64 %.0129280
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0246.0279, i64 40
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !56
  %i.dy = add i64 %i.dx, 1                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr align 1 %i.dv, i64 %i.dy, i1 false)
  %i.dz = add i64 %i.dy, %.0129280                ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.cz, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0246.0279, i64 64
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0246.0279, i64 72
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr align 1 %i.ec, i64 %i.ee, i1 false)
  %i.ef = add i64 %i.ee, %i.dz                    ; 3 uses
  br i1 %i.dm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eg = getelementptr inbounds i8, ptr %i.cz, i64 %i.ef
  store i8 10, ptr %i.eg, align 1, !tbaa !47
  %i.eh = add nsw i64 %i.ef, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1130 = phi i64 [ %i.eh, %bb.ac ], [ %i.ef, %bb.ab ] ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.cz, i64 %.1130
  store i8 0, ptr %i.ei, align 1, !tbaa !47
  %i.ej = add nsw i64 %.1130, 1                   ; 2 uses
  %i.ek = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0246.0279) #42 ; 2 uses
  %.not258 = icmp eq ptr %i.ek, %i.cw
  br i1 %.not258, label %._crit_edge283, label %bb.ab

bb.ae:                                            ; preds = %bb.j
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.em = load i8, ptr %i.el, align 1, !tbaa !86, !range !95, !noundef !96
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.aj, label %.noexc.i195

.noexc.i195:                                      ; preds = %bb.ae
  store i32 1, ptr %3, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.eo, ptr %10, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 58, ptr %i.a, align 8, !tbaa !55
  %i.ep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc196 unwind label %bb.ai ; 3 uses

.noexc196:                                        ; preds = %.noexc.i195
  store ptr %i.ep, ptr %10, align 8, !tbaa !44
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.ep, ptr noundef nonnull align 1 dereferenceable(58) @.str.52, i64 58, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !56
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq
  store i8 0, ptr %i.es, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %.val178 = load ptr, ptr %10, align 8           ; 3 uses
  %.val179 = load i64, ptr %i.er, align 8, !tbaa !56 ; 2 uses
  %i.et = add i64 %.val179, 1                     ; 3 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.noexc196
  %i.ev = call noalias ptr @malloc(i64 noundef %i.et) #41 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_ZL12memory_panicv()
  unreachable

bb.ah:                                            ; preds = %bb.af, %.noexc196
  %.0.i.i198 = phi ptr [ %i.ev, %bb.af ], [ null, %.noexc196 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i198, ptr readonly align 1 %.val178, i64 %i.et, i1 false)
  %i.ex = icmp eq ptr %.val178, %i.eo
  br i1 %i.ex, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i201: ; preds = %bb.ah
  %i.ey = icmp ult i64 %.val179, 16
  call void @llvm.assume(i1 %i.ey)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.ah
  %i.ez = load i64, ptr %i.eo, align 8, !tbaa !47
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %.val178, i64 noundef %i.fa) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.an

bb.ai:                                            ; preds = %.noexc.i195
  %i.fb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7jsonnet8internal11StaticErrorE
          catch ptr @_ZTIN7jsonnet8internal12RuntimeErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !80
  %i.fg = uitofp i32 %i.ff to double
  %i.fh = load double, ptr %0, align 8, !tbaa !78
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !83
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !85, !range !95, !noundef !96
  %i.fp = trunc nuw i8 %i.fo to i1
  invoke void @_ZN7jsonnet8internal25jsonnet_vm_execute_streamEPNS0_9AllocatorEPKNS0_3ASTERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5VmExtESt4lessISC_ESaISt4pairIKSC_SD_EEEjddRKS6_ISC_NS0_16VmNativeCallbackESF_SaISG_ISH_SN_EEEPFiPvPKcSV_PPcSX_PmEST_b(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %11, ptr noundef nonnull %5, ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i32 noundef %i.ak, double noundef %i.fg, double noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef %i.fk, ptr noundef %i.fm, i1 noundef zeroext %i.fp)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fq = load ptr, ptr %11, align 8, !tbaa !60   ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !60 ; 4 uses
  %.not255261 = icmp eq ptr %i.fq, %i.fs
  br i1 %.not255261, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ak
  %i.ft = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #41 ; 3 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %.unreachable, label %._crit_edge269

._crit_edge.thread:                               ; preds = %.lr.ph
  %i.fv = call noalias ptr @malloc(i64 noundef %i.gb) #41 ; 5 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.unreachable, label %.lr.ph268

bb.al:                                            ; preds = %bb.aj
  %i.fx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7jsonnet8internal11StaticErrorE
          catch ptr @_ZTIN7jsonnet8internal12RuntimeErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.ao

.lr.ph:                                           ; preds = %bb.ak, %.lr.ph
  %.0128263 = phi i64 [ %i.gb, %.lr.ph ], [ 1, %bb.ak ]
  %.sroa.0241.0262 = phi ptr [ %i.gc, %.lr.ph ], [ %i.fq, %bb.ak ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0241.0262, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !56
  %i.ga = add i64 %.0128263, 2
  %i.gb = add i64 %i.ga, %i.fz                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0241.0262, i64 32 ; 2 uses
  %.not255 = icmp eq ptr %i.gc, %i.fs
  br i1 %.not255, label %._crit_edge.thread, label %.lr.ph

.unreachable:                                     ; preds = %._crit_edge.thread, %._crit_edge
  call fastcc void @_ZL12memory_panicv()
  unreachable

._crit_edge269:                                   ; preds = %._crit_edge
  store i8 0, ptr %i.ft, align 1, !tbaa !47
  store i32 0, ptr %3, align 4, !tbaa !106
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph268
  %16 = getelementptr i8, ptr %i.fv, i64 %i.gv
  %i.gd = getelementptr i8, ptr %16, i64 2
  store i8 0, ptr %i.gd, align 1, !tbaa !47
  store i32 0, ptr %3, align 4, !tbaa !106
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.fq, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ge = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !47
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gj, %i.fs
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !90
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %._crit_edge269, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
  %i.gk = phi ptr [ %i.fv, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ft, %._crit_edge269 ]
  %i.gl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fq, %._crit_edge269 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !89
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #37
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.an

.lr.ph268:                                        ; preds = %._crit_edge.thread, %.lr.ph268
  %.0125266 = phi i64 [ %i.gy, %.lr.ph268 ], [ 0, %._crit_edge.thread ] ; 2 uses
  %.sroa.0237.0265 = phi ptr [ %i.gz, %.lr.ph268 ], [ %i.fq, %._crit_edge.thread ] ; 3 uses
  %i.gr = getelementptr inbounds i8, ptr %i.fv, i64 %.0125266
  %i.gs = load ptr, ptr %.sroa.0237.0265, align 8, !tbaa !44
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0237.0265, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gr, ptr align 1 %i.gs, i64 %i.gu, i1 false)
  %i.gv = add i64 %i.gu, %.0125266                ; 3 uses
  %i.gw = getelementptr inbounds i8, ptr %i.fv, i64 %i.gv ; 2 uses
  store i8 10, ptr %i.gw, align 1, !tbaa !47
  %i.gx = getelementptr i8, ptr %i.gw, i64 1
  store i8 0, ptr %i.gx, align 1, !tbaa !47
  %i.gy = add nsw i64 %i.gv, 2
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0237.0265, i64 32 ; 2 uses
  %.not256 = icmp eq ptr %i.gz, %i.fs
  br i1 %.not256, label %.lr.ph.i.i.i.preheader, label %.lr.ph268

default.unreachable327:                           ; preds = %bb.j
  unreachable

bb.an:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %.0124 = phi ptr [ %.0.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %i.dn, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit ], [ %i.gk, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %.0.i.i198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ]
  %i.ha = load ptr, ptr %6, align 8, !tbaa !122   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ha, %6
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.hb, %.lr.ph.i.i ], [ %i.ha, %bb.an ] ; 3 uses
  %i.hb = load ptr, ptr %.09.i.i, align 8, !tbaa !122 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  call void @_ZN7jsonnet8internal5TokenD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.hc) #35
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 208) #37
  %.not.i.i = icmp eq ptr %i.hb, %6
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @_ZN7jsonnet8internal9AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.bm

bb.ao:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %bb.z, %bb.ai, %bb.al, %bb.m
  %.pn157.pn.pn = phi { ptr, i32 } [ %i.as, %bb.m ], [ %.pn157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %i.db, %bb.z ], [ %i.fx, %bb.al ], [ %i.fb, %bb.ai ], [ %i.at, %bb.n ]
  call void @_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #35
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %.pn157.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn, %bb.ao ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ] ; 3 uses
  %.7 = extractvalue { ptr, i32 } %.pn157.pn.pn.pn, 0 ; 2 uses
  %.7138 = extractvalue { ptr, i32 } %.pn157.pn.pn.pn, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @_ZN7jsonnet8internal9AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.hd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7jsonnet8internal11StaticErrorE) #35
  %i.he = icmp eq i32 %.7138, %i.hd
  br i1 %i.he, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.hf = call ptr @__cxa_begin_catch(ptr %.7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14)
          to label %bb.ar unwind label %bb.bi

bb.ar:                                            ; preds = %bb.aq
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.45, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ar
  %i.hi = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN7jsonnet8internallsERSoRKNS0_11StaticErrorE(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull align 8 dereferenceable(96) %i.hf)
          to label %bb.as unwind label %bb.bj     ; 0 uses

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.hg)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.bj, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.as
  store i32 1, ptr %3, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(128) %14)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.at:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %.val176 = load ptr, ptr %15, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.val177 = load i64, ptr %i.hk, align 8, !tbaa !56
  %i.hl = call fastcc noundef ptr @_ZL11from_stringP9JsonnetVmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %.val176, i64 %.val177)
  %i.hm = load ptr, ptr %15, align 8, !tbaa !44   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.at
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !47
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @__cxa_end_catch()
  br label %bb.bm

bb.au:                                            ; preds = %bb.ap
  %i.hr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE) #35
  %i.hs = icmp eq i32 %.7138, %i.hr
  br i1 %i.hs, label %bb.av, label %bb.bn

bb.av:                                            ; preds = %bb.au
  %i.ht = call ptr @__cxa_begin_catch(ptr %.7) #35 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.54, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212: ; preds = %bb.aw
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !56
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.hx, i64 noundef %i.hz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ay

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ia)
          to label %_ZNSolsEPFRSoS_E.exit215 unwind label %bb.ay, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit215:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !81 ; 2 uses
  %i.ie = lshr i32 %i.id, 1
  %i.if = zext nneg i32 %i.ie to i64              ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !236
  %i.ii = load ptr, ptr %i.ht, align 8, !tbaa !237
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik                    ; 2 uses
  %i.im = icmp sgt i64 %i.il, 0
  br i1 %i.im, label %.lr.ph286, label %._crit_edge287

.lr.ph286:                                        ; preds = %_ZNSolsEPFRSoS_E.exit215
  %i.in = udiv exact i64 %i.il, 96                ; 2 uses
  %i.io = zext i32 %i.id to i64
  %.neg = sub nsw i64 %i.if, %i.io
  %i.ip = add nsw i64 %.neg, %i.in
  br label %bb.az

._crit_edge287:                                   ; preds = %_ZNSolsEPFRSoS_E.exit219, %_ZNSolsEPFRSoS_E.exit215
  store i32 1, ptr %3, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.bf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.ax:                                            ; preds = %bb.av
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ay:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %bb.aw
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.az:                                            ; preds = %.lr.ph286, %_ZNSolsEPFRSoS_E.exit219
  %.0285 = phi i64 [ 0, %.lr.ph286 ], [ %i.jj, %_ZNSolsEPFRSoS_E.exit219 ] ; 5 uses
  %i.is = load ptr, ptr %i.ht, align 8, !tbaa !237
  %i.it = getelementptr inbounds nuw [96 x i8], ptr %i.is, i64 %.0285 ; 3 uses
  %i.iu = load i32, ptr %i.ic, align 8, !tbaa !81
  %.not = icmp ne i32 %i.iu, 0
  %.not164 = icmp samesign uge i64 %.0285, %i.if
  %or.cond.not259 = select i1 %.not, i1 %.not164, i1 false
  %i.iv = icmp slt i64 %.0285, %i.ip
  %or.cond174 = select i1 %or.cond.not259, i1 %i.iv, i1 false
  br i1 %or.cond174, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.iw = icmp eq i64 %.0285, %i.if
  br i1 %i.iw, label %bb.bb, label %_ZNSolsEPFRSoS_E.exit219

bb.bb:                                            ; preds = %bb.ba
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.55, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit225.invoke unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit225.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %bb.be, %bb.bd, %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %bb.az
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.56, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221: ; preds = %bb.bd
  %i.ja = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN7jsonnet8internallsERSoRKNS0_13LocationRangeE(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull align 8 dereferenceable(64) %i.it)
          to label %bb.be unwind label %bb.bc     ; 0 uses

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.56, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %bb.be
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 72
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag:.peel.begin
  %.0.i.i.i.i18.peel = phi i32 [ %i.co, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.11.0.lcssa, %.preheader ], [ %i.cl, %.noexc.peel ] ; 3 uses
  %.not.i.i2.i.i19.peel = icmp ne ptr %.sroa.042.2.lcssa, null
  %or.cond.i.i3.i.i20.peel = select i1 %.not.i.i2.i.i19.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cp = icmp eq i32 %.0.i.i.i.i18.peel, -1
  %i.cq = xor i1 %i.b, %i.cp
  br i1 %i.cq, label %bb.k, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.j:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !356
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !357
  %i.cv = icmp ult ptr %i.cs, %i.cu
  br i1 %i.cv, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, !prof !358

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel: ; preds = %bb.j
  %i.cw = load ptr, ptr %.sroa.042.2.lcssa, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.2.lcssa)
          to label %.noexc26.peel unwind label %.loopexit.split-lp, !inline_history !351

.noexc26.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %.split.peel, label %.thr_comm.peel

.split.peel:                                      ; preds = %.noexc26.peel
  %.not.peel = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %.not.peel, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.k

.thr_comm.peel:                                   ; preds = %.noexc26.peel, %bb.j
  %i.db = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %i.db, label %bb.k, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.k:                                             ; preds = %.thr_comm.peel, %.split.peel, %bb.i
  %.sroa.042.354.peel = phi ptr [ %.sroa.042.2.lcssa, %.thr_comm.peel ], [ %.sroa.042.2.lcssa, %bb.i ], [ null, %.split.peel ]
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !55
  %i.dd = icmp eq i64 %.013.lcssa, %i.dc
  br i1 %i.dd, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !44
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.de = add nuw nsw i64 %.013.lcssa, 1
  store i64 %i.de, ptr %i.a, align 8, !tbaa !55
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.013.lcssa)
          to label %bb.m unwind label %.loopexit.split-lp72 ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  switch i64 %.013.lcssa, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  ]

bb.n:                                             ; preds = %bb.m
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !47
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dg, i64 %.013.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel: ; preds = %bb.o, %bb.n, %bb.m
  %i.di = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.c
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !47
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
  store ptr %i.df, ptr %0, align 8, !tbaa !44
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.dm, ptr %i.c, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
  %i.dn = phi ptr [ %.pre, %._crit_edge ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %.not.i.i28.peel = icmp ne ptr %.sroa.045.4.peel, null
  %or.cond.i.i29.peel = select i1 %.not.i.i28.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i29.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !356 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !357
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, !prof !358

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel: ; preds = %bb.q
  %i.dt = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %.noexc33.peel unwind label %.loopexit.split-lp77, !inline_history !352 ; 2 uses

.noexc33.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %i.dx = icmp ne i32 %i.dw, -1
  call void @llvm.assume(i1 %i.dx)
  br label %bb.r

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel: ; preds = %bb.q
  %i.dy = load i8, ptr %i.dp, align 1, !tbaa !47
  %i.dz = zext i8 %i.dy to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, %.noexc33.peel, %bb.p
  %.0.i.i30.peel = phi i32 [ %.sroa.11.0.lcssa, %bb.p ], [ %i.dw, %.noexc33.peel ], [ %i.dz, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel ]
  %i.ea = trunc i32 %.0.i.i30.peel to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.013.lcssa
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !47
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !356 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !357
  %i.eg = icmp ult ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.t, label %bb.s, !prof !358

bb.s:                                             ; preds = %bb.r
  %i.eh = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef i32 %i.ej(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader unwind label %.loopexit.split-lp, !inline_history !353 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader: ; preds = %bb.t, %bb.s
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel

bb.t:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.el, ptr %i.ec, align 8, !tbaa !356
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader

bb.u:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.not.i.i.not = icmp eq ptr %.sroa.045.2, null
  br i1 %.not.i.i.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !356 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !357
  %i.eq = icmp ult ptr %i.en, %i.ep
  br i1 %i.eq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !358

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.v
  %i.er = load i8, ptr %i.en, align 1, !tbaa !47
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.v
  %i.es = load ptr, ptr %.sroa.045.2, align 8, !tbaa !64
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !349 ; 2 uses
  %i.ew = icmp ne i32 %i.ev, -1
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = trunc i32 %i.ev to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.0.i.i = phi i8 [ -1, %bb.u ], [ %i.ex, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ], [ %i.er, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ]
  %i.ey = add nuw nsw i64 %.013, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 %.013
  store i8 %.0.i.i, ptr %i.ez, align 1, !tbaa !47
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !356 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !357
  %i.fe = icmp ult ptr %i.fb, %i.fd
  br i1 %i.fe, label %bb.w, label %bb.x, !prof !358

bb.w:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !356
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge: ; preds = %bb.w, %bb.x
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, !llvm.loop !354

bb.x:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fg = load ptr, ptr %.sroa.045.2, align 8, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !350 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader
  %.sroa.045.1 = phi ptr [ %.sroa.045.4.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.045.4, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 6 uses
  %.sroa.042.1 = phi ptr [ %.sroa.042.354.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.042.354, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 7 uses
  %.1.in = phi i64 [ %.013.lcssa, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 3 uses
  %.1 = add i64 %.1.in, 1                         ; 8 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !356
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !357
  %i.fo = icmp ult ptr %i.fl, %i.fn
  br i1 %i.fo, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, !prof !358

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel
  %i.fp = load ptr, ptr %.sroa.045.1, align 8, !tbaa !64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.1)
          to label %.noexc unwind label %.loopexit, !inline_history !351 ; 2 uses

.noexc:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24
  %i.ft = icmp eq i32 %i.fs, -1
  %spec.select58 = select i1 %i.ft, ptr null, ptr %.sroa.045.1
  %i.fu = icmp eq i32 %i.fs, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, %.noexc
  %.sroa.045.4 = phi ptr [ %spec.select58, %.noexc ], [ %.sroa.045.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 10 uses
  %.0.i.i.i.i18 = phi i1 [ %i.fu, %.noexc ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 3 uses
  %.not.i.i2.i.i19 = icmp ne ptr %.sroa.042.1, null
  %or.cond.i.i3.i.i20 = select i1 %.not.i.i2.i.i19, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !356
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !357
  %i.fz = icmp ult ptr %i.fw, %i.fy
  br i1 %i.fz, label %.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, !prof !358

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22: ; preds = %bb.y
  %i.ga = load ptr, ptr %.sroa.042.1, align 8, !tbaa !64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = invoke noundef i32 %i.gc(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.1)
          to label %.noexc26 unwind label %.loopexit, !inline_history !351

.noexc26:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %.split, label %.thr_comm

.split:                                           ; preds = %.noexc26
  br i1 %.0.i.i.i.i18, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.aa

.thr_comm:                                        ; preds = %bb.y, %.noexc26
  br i1 %.0.i.i.i.i18, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.z:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.gf = xor i1 %i.b, %.0.i.i.i.i18
  br i1 %i.gf, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.aa:                                            ; preds = %.split, %.thr_comm, %bb.z
  %.sroa.042.354 = phi ptr [ %.sroa.042.1, %.thr_comm ], [ %.sroa.042.1, %bb.z ], [ null, %.split ]
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !55
  %i.gh = icmp eq i64 %.1, %i.gg
  br i1 %i.gh, label %bb.ab, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.aa
  %.pre82 = load ptr, ptr %0, align 8, !tbaa !44
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gi = add i64 %.1.in, 2
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !55
  %i.gj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.1)
          to label %bb.ac unwind label %.loopexit71 ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  %i.gk = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  switch i64 %.1, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !47
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.gk, i64 %.1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.gm = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.c
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.go = load i64, ptr %i.c, align 8, !tbaa !47
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gj, ptr %0, align 8, !tbaa !44
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.gq, ptr %i.c, align 8, !tbaa !47
  br label %bb.af

.loopexit:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit71:                                      ; preds = %bb.ab
  %lpad.loopexit73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp72:                             ; preds = %bb.l
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %._crit_edge81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %i.gr = phi ptr [ %.pre82, %._crit_edge81 ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %.not.i.i28.not = icmp eq ptr %.sroa.045.4, null
  br i1 %.not.i.i28.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !356 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !357
  %i.gw = icmp ult ptr %i.gt, %i.gv
  br i1 %i.gw, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, !prof !358

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32: ; preds = %bb.ag
  %i.gx = load i8, ptr %i.gt, align 1, !tbaa !47
  br label %bb.ah

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31: ; preds = %bb.ag
  %i.gy = load ptr, ptr %.sroa.045.4, align 8, !tbaa !64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef i32 %i.ha(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %.noexc33 unwind label %.loopexit76, !inline_history !352 ; 2 uses

.noexc33:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %i.hc = icmp ne i32 %i.hb, -1
  call void @llvm.assume(i1 %i.hc)
  %i.hd = trunc i32 %i.hb to i8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc33, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, %bb.af
  %.0.i.i30 = phi i8 [ -1, %bb.af ], [ %i.hd, %.noexc33 ], [ %i.gx, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32 ]
  %5 = getelementptr i8, ptr %i.gr, i64 %.1.in
  %i.he = getelementptr i8, ptr %5, i64 1
  store i8 %.0.i.i30, ptr %i.he, align 1, !tbaa !47
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !356 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !357
  %i.hj = icmp ult ptr %i.hg, %i.hi
  br i1 %i.hj, label %bb.ai, label %bb.aj, !prof !358

bb.ai:                                            ; preds = %bb.ah
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hk, ptr %i.hf, align 8, !tbaa !356
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.hl = load ptr, ptr %.sroa.045.4, align 8, !tbaa !64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = invoke noundef i32 %i.hn(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge unwind label %.loopexit, !inline_history !353 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge: ; preds = %bb.aj, %bb.ai
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, !llvm.loop !355

.loopexit76:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp77:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %bb.z, %.thr_comm, %.split, %.thr_comm.peel, %.split.peel, %bb.i
  %.1.lcssa63 = phi i64 [ %.013.lcssa, %bb.i ], [ %.013.lcssa, %.split.peel ], [ %.013.lcssa, %.thr_comm.peel ], [ %.1, %.split ], [ %.1, %.thr_comm ], [ %.1, %bb.z ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa63, ptr %i.hp, align 8, !tbaa !56
  %i.hq = load ptr, ptr %0, align 8, !tbaa !44
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.1.lcssa63
  store i8 0, ptr %i.hr, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void

bb.ak:                                            ; preds = %.loopexit76, %.loopexit.split-lp77, %.loopexit71, %.loopexit.split-lp72, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp74, %.loopexit.split-lp72 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit73, %.loopexit71 ], [ %lpad.loopexit78, %.loopexit76 ], [ %lpad.loopexit.split-lp79, %.loopexit.split-lp77 ]
  %i.hs = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.c
  br i1 %i.ht, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ak
  %i.hu = load i64, ptr %i.c, align 8, !tbaa !47
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #37
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal16VmNativeCallbackEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, jsonnet::internal::VmNativeCallback>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, jsonnet::internal::VmNativeCallback>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %0, ptr %5, align 8, !tbaa !360
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #34 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !60
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !46
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !56   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !44
  %i.m = load i64, ptr %i.g, align 8, !tbaa !47
  store i64 %i.m, ptr %i.e, align 8, !tbaa !47
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8, !tbaa !56
  store ptr %i.g, ptr %i.d, align 8, !tbaa !44
  store i64 0, ptr %i.p, align 8, !tbaa !56
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  store ptr %i.a, ptr %i.o, align 8, !tbaa !159
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal16VmNativeCallbackEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !56   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ah = phi i1 [ %i.ag, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #35
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !50
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal16VmNativeCallbackEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal16VmNativeCallbackEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.an, %bb.h ] ; 3 uses
  %i.aq = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !47
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ap
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !90
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.h
  %i.aw = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.an, %bb.h ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZN7jsonnet8internal16VmNativeCallbackD2Ev.exit.i.i.i.i, label %bb.i
end_hunk_2
