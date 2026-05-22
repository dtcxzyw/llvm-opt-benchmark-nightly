inline.NumInlined: 896
inline.NumDeleted: 375
begin_hunk_0_@_ZN5arrow2io19BufferedInputStream4Impl13SetBufferSizeEl
define linkonce_odr hidden void @_ZN5arrow2io19BufferedInputStream4Impl13SetBufferSizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !117
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !164  ; 2 uses
  %i.g = add nsw i64 %i.f, %i.d                   ; 2 uses
  %.not = icmp slt i64 %i.g, %2
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !209
  call void @_ZN5arrow8internal12JoinToStringIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(70) @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(16) @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !209
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !70, !noalias !209 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5arrow6Status7InvalidIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !35, !noalias !209
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #28
  br label %_ZN5arrow6Status7InvalidIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8, !tbaa !70, !noalias !209 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !209
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !209
  resume { ptr, i32 } %i.n

_ZN5arrow6Status7InvalidIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !209
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = load i64, ptr %i.t, align 8, !tbaa !163  ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq i64 %i.f, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = load i64, ptr %i.x, align 8, !tbaa !158  ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = sub nsw i64 %i.u, %i.y
  %.sroa.speculated7 = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %2)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = add i64 %i.u, %i.g
  %i.ab = sub i64 %i.aa, %i.y
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.ac = phi i64 [ %.sroa.speculated7, %bb.i ], [ %.sroa.speculated, %bb.j ], [ %2, %bb.g ]
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.j ], [ false, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !80, !noalias !214
  tail call void @_ZN5arrow2io12BufferedBase11ResetBufferEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !55
  %i.af = icmp eq ptr %i.ae, null
  %or.cond = and i1 %.0, %i.af
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.c, align 8, !tbaa !74
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN5arrow6Status7InvalidIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEES0_DpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5arrow2io19BufferedInputStream14bytes_bufferedEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !164
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5arrow2io19BufferedInputStream11buffer_sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !80
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io19BufferedInputStream6DoReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.14") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  tail call void @_ZN5arrow2io19BufferedInputStream4Impl4ReadElPv(ptr dead_on_unwind writable sret(%"class.arrow::Result.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io19BufferedInputStream4Impl4ReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Result.14", align 8  ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !117
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN5arrow6Status7InvalidIJRA42_KcRlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(42) @.str.13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  %i.c = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !59, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !117
  %i.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 %2) ; 10 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !74
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.o, i64 %i.i, i1 false)
  %i.p = load i64, ptr %i.m, align 8, !tbaa !74
  %i.q = add nsw i64 %i.p, %i.i
  store i64 %i.q, ptr %i.m, align 8, !tbaa !74
  %i.r = load i64, ptr %i.g, align 8, !tbaa !164
  %i.s = sub nsw i64 %i.r, %i.i
  store i64 %i.s, ptr %i.g, align 8, !tbaa !164
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = sub nsw i64 %2, %i.i                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !163  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = sub nsw i64 %i.v, %i.x
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.y, i64 %i.t)
  %i.z = icmp slt i64 %i.v, 0
  %.0 = select i1 %i.z, i64 %i.t, i64 %.sroa.speculated ; 4 uses
  %i.aa = icmp eq i64 %.0, 0
  br i1 %i.aa, label %8, label %bb.h

8:                                                ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !55
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %9, align 8, !tbaa !117
  br label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !80
  %.not = icmp slt i64 %.0, %i.ac
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !174 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.ag = getelementptr i8, ptr %i.af, i64 -64
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %3, i64 %i.i
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %.0, ptr noundef %i.aj)
  %i.an = load ptr, ptr %5, align 8, !tbaa !55
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread, label %bb.j, !prof !58

.thread:                                          ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !117 ; 2 uses
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !158
  %i.as = add nsw i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.w, align 8, !tbaa !158
  store i64 0, ptr %i.g, align 8, !tbaa !164
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.at, align 8, !tbaa !74
  %i.au = add nsw i64 %i.aq, %i.i
  store ptr null, ptr %0, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !117
  br label %_ZN5arrow6ResultIlED2Ev.exit21

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %.pre = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %.not.i.i20 = icmp eq ptr %.pre, null
  br i1 %.not.i.i20, label %_ZN5arrow6ResultIlED2Ev.exit21, label %bb.k, !prof !116

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !59, !range !67, !noundef !68
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZN5arrow6ResultIlED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %_ZN5arrow6ResultIlED2Ev.exit21

_ZN5arrow6ResultIlED2Ev.exit21:                   ; preds = %.thread, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow2io19BufferedInputStream4Impl8DoBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.az = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit29, label %bb.m, !prof !58

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit23
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.bb = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %.not.i24 = icmp eq ptr %i.bb, null
  br i1 %.not.i24, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.n, !prof !58

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !59, !range !67, !noundef !68
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZN5arrow6StatusD2Ev.exit25

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %_ZN5arrow6StatusD2Ev.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !117
  %.sroa.speculated38 = call i64 @llvm.smin.i64(i64 %.0, i64 %i.bf) ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !74
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bl, i64 %.sroa.speculated38, i1 false)
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !74
  %i.bn = add nsw i64 %i.bm, %.sroa.speculated38
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !74
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !164
  %i.bp = sub nsw i64 %i.bo, %.sroa.speculated38
  store i64 %i.bp, ptr %i.g, align 8, !tbaa !164
  %i.bq = add nsw i64 %.sroa.speculated38, %i.i
  store ptr null, ptr %0, align 8, !tbaa !55
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %10, align 8, !tbaa !117
  br label %bb.p

bb.p:                                             ; preds = %8, %_ZN5arrow6ResultIlED2Ev.exit21, %_ZN5arrow6StatusD2Ev.exit29, %_ZN5arrow6StatusD2Ev.exit25, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io19BufferedInputStream6DoReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.46") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  tail call void @_ZN5arrow2io19BufferedInputStream4Impl4ReadEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io19BufferedInputStream4Impl4ReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.72", align 8  ; 12 uses
  %4 = alloca %"class.std::unique_ptr.76", align 8 ; 7 uses
  %5 = alloca %"class.arrow::Result.14", align 8  ; 11 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.18", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  call void @_ZN5arrow23AllocateResizableBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.72") align 8 %3, i64 noundef %2, ptr noundef %i.a)
  %i.b = load ptr, ptr %3, align 8, !tbaa !55
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !223, !noalias !224 ; 2 uses
  store i64 %i.e, ptr %4, align 8, !tbaa !223, !alias.scope !224
  store ptr null, ptr %i.d, align 8, !tbaa !223, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.cast = inttoptr i64 %i.e to ptr               ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.cast, i64 9 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !131, !range !67, !noundef !68
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %.cast, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !67
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 %i.k, i1 false, !prof !58
  %i.m = getelementptr inbounds nuw i8, ptr %.cast, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !58
  invoke void @_ZN5arrow2io19BufferedInputStream4Impl4ReadElPv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2, ptr noundef %i.o)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %5, align 8, !tbaa !55
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e, !prof !58

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.q

.thread:                                          ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i37

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !117  ; 2 uses
  %i.u = icmp slt i64 %i.t, %2
  br i1 %i.u, label %bb.g, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.v = load ptr, ptr %.cast, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %.cast, i64 noundef %i.t, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.k

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g
  %i.y = load ptr, ptr %7, align 8, !tbaa !55     ; 2 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit30, label %bb.h, !prof !58

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.aa = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %.not.i25 = icmp eq ptr %i.aa, null
  br i1 %.not.i25, label %_ZN5arrow6StatusD2Ev.exit26, label %bb.i, !prof !58

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !59, !range !67, !noundef !68
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit26, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZN5arrow6StatusD2Ev.exit26

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.q

bb.k:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.n

_ZN5arrow6StatusD2Ev.exit30:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.af = getelementptr inbounds nuw i8, ptr %.cast, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !225 ; 2 uses
  %.not.i31 = icmp eq i64 %i.ag, 0
  br i1 %.not.i31, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit30
  %i.ah = load i8, ptr %i.f, align 1, !tbaa !131, !range !67, !noundef !68
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = load i8, ptr %i.i, align 8, !range !67
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false, !prof !58
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = select i1 %i.al, ptr %i.am, ptr null, !prof !58
  %i.ao = getelementptr inbounds nuw i8, ptr %.cast, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !138 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  %i.ar = sub nsw i64 %i.ag, %i.ap
  call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN5arrow6Buffer11ZeroPaddingEv.exit

_ZN5arrow6Buffer11ZeroPaddingEv.exit:             ; preds = %bb.l, %_ZN5arrow6StatusD2Ev.exit30, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2INS0_15ResizableBufferESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.m

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6Buffer11ZeroPaddingEv.exit
  store ptr null, ptr %0, align 8, !tbaa !55
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load <2 x ptr>, ptr %8, align 16, !tbaa !13
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.q

bb.m:                                             ; preds = %_ZN5arrow6Buffer11ZeroPaddingEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.pn21 = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.ae, %bb.k ] ; 2 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.av, null
  br i1 %.not.i.i32, label %bb.t, label %bb.o, !prof !58

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !59, !range !67, !noundef !68
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %bb.t

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit26, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e
  %i.az = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.az, null
  br i1 %.not.i.i33, label %_ZN5arrow6ResultIlED2Ev.exit34, label %bb.r, !prof !58

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !59, !range !67, !noundef !68
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN5arrow6ResultIlED2Ev.exit34, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %_ZN5arrow6ResultIlED2Ev.exit34

_ZN5arrow6ResultIlED2Ev.exit34:                   ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.bd = load ptr, ptr %4, align 8, !tbaa !223   ; 3 uses
  %.not.i35 = icmp eq ptr %i.bd, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i: ; preds = %_ZN5arrow6ResultIlED2Ev.exit34
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
end_hunk_0
