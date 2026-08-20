inline.NumInlined: 2324
inline.NumDeleted: 683
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3euf11interpreter11display_regERSoj:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !151, !nonnull !136, !align !137
  call void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(952) %i.af, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.aj

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf11interpreter23display_instr_input_regERSoPKNS_11instructionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i8, ptr %2, align 8, !tbaa !89
  switch i8 %i.a, label %.loopexit [
    i8 0, label %.loopexit.sink.split
    i8 1, label %.loopexit.sink.split
    i8 2, label %.loopexit.sink.split
    i8 3, label %.loopexit.sink.split
    i8 4, label %.loopexit.sink.split
    i8 5, label %.loopexit.sink.split
    i8 6, label %.loopexit.sink.split
    i8 7, label %.loopexit.sink.split
    i8 8, label %bb.b
    i8 9, label %bb.b
    i8 10, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 14, label %bb.b
    i8 22, label %bb.c
    i8 23, label %bb.d
    i8 24, label %bb.e
    i8 15, label %bb.f
    i8 16, label %bb.f
    i8 17, label %bb.f
    i8 18, label %bb.f
    i8 19, label %bb.f
    i8 20, label %bb.f
    i8 21, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !90
  tail call void @_ZN3euf11interpreter11display_regERSoj(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !92
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !87
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !67
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 36
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !60
  tail call void @_ZN3euf11interpreter11display_regERSoj(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.p)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i16, ptr %i.l, align 8, !tbaa !67
  %i.r = zext i16 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.g, label %.loopexit, !llvm.loop !152

.loopexit.sink.split:                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sink = phi i32 [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ %i.g, %bb.c ], [ %i.c, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  tail call void @_ZN3euf11interpreter11display_regERSoj(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.sink.split, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf11interpreter15display_pc_infoERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30, i64 noundef 11) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3euflsERSoRKNS_11instructionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31, i64 noundef 6) ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !153
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.g) ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.32, i64 noundef 8) ; 0 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !153
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !154
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.l) ; 0 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !153
  %i.o = load i8, ptr %i.n, align 8, !tbaa !89
  %i.p = icmp eq i8 %i.o, 27
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 7) ; 0 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !155
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.t) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !153
  tail call void @_ZN3euf11interpreter23display_instr_input_regERSoPKNS_11instructionE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.w)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3euf11interpreter13next_ac_matchEPKNS_5initnE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !158  ; 4 uses
  %.not93.not = icmp eq i32 %i.b, 0
  br i1 %.not93.not, label %.critedge65, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = zext i32 %i.b to i64                     ; 3 uses
  %.pre.pre = load i32, ptr %i.g, align 8, !tbaa !162
  br label %bb.b

.critedge.loopexit:                               ; preds = %.loopexit71
  %.not.not.wide = icmp eq i64 %i.k, 0
  br i1 %.not.not.wide, label %.critedge65, label %bb.b, !llvm.loop !163

bb.b:                                             ; preds = %.lr.ph96, %.critedge.loopexit
  %.pre = phi i32 [ %.pre.pre, %.lr.ph96 ], [ %.pre126, %.critedge.loopexit ] ; 2 uses
  %indvars.iv109 = phi i64 [ %i.j, %.lr.ph96 ], [ %i.k, %.critedge.loopexit ] ; 3 uses
  %i.k = add nsw i64 %indvars.iv109, -1           ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !164
  %i.p = trunc nuw i64 %indvars.iv109 to i32      ; 2 uses
  %i.q = icmp ugt i32 %i.b, %i.p
  br label %bb.c

.loopexit70:                                      ; preds = %.lr.ph91, %.preheader
  br label %bb.c, !llvm.loop !165

bb.c:                                             ; preds = %.loopexit70, %bb.b
  %.pre127 = phi i32 [ %.pre, %bb.b ], [ %.pre124138, %.loopexit70 ] ; 2 uses
  %i.r = phi i32 [ %.pre, %bb.b ], [ %i.au, %.loopexit70 ] ; 5 uses
  %.052 = phi i32 [ %i.m, %bb.b ], [ %.153102, %.loopexit70 ] ; 2 uses
  %2 = zext i32 %.052 to i64
  %i.s = add i32 %.052, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.r, i32 %i.s) ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %2, 1     ; 2 uses
  %indvars182 = trunc i64 %indvars.iv.next181 to i32 ; 2 uses
  %3 = icmp ugt i32 %i.r, %indvars182
  br i1 %3, label %.lr.ph175, label %.loopexit71

bb.d:                                             ; preds = %.lr.ph175
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next183, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %4 = icmp ugt i32 %i.r, %indvars
  br i1 %4, label %.lr.ph175, label %.loopexit71, !llvm.loop !166

.lr.ph175:                                        ; preds = %bb.c, %bb.d
  %.153.in174 = phi i32 [ %indvars, %bb.d ], [ %indvars182, %bb.c ] ; 2 uses
  %indvars.iv.next183 = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next181, %bb.c ] ; 2 uses
  %5 = and i64 %indvars.iv.next183, 4294967295    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !164, !range !140, !noundef !136
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e, !llvm.loop !166

bb.e:                                             ; preds = %.lr.ph175
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %5
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %5
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv109
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !8
  store i8 1, ptr %i.w, align 1, !tbaa !164
  store i32 %.153.in174, ptr %i.l, align 4, !tbaa !60
  %.pre122 = load i32, ptr %i.g, align 8, !tbaa !162 ; 2 uses
  br label %.loopexit71

.loopexit71:                                      ; preds = %bb.d, %bb.c, %bb.e
  %.pre126 = phi i32 [ %.pre122, %bb.e ], [ %.pre127, %bb.c ], [ %.pre127, %bb.d ] ; 2 uses
  %i.ac = phi i32 [ %.pre122, %bb.e ], [ %i.r, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %.153102 = phi i32 [ %.153.in174, %bb.e ], [ %umax, %bb.c ], [ %umax, %bb.d ] ; 2 uses
  %i.ad = icmp eq i32 %.153102, %i.ac
  br i1 %i.ad, label %.critedge.loopexit, label %.preheader69.preheader

.preheader69.preheader:                           ; preds = %.loopexit71
  br i1 %i.q, label %.preheader67, label %.preheader69.preheader._crit_edge

.preheader67:                                     ; preds = %.preheader69.preheader, %.loopexit
  %.051177 = phi i32 [ %i.bc, %.loopexit ], [ %i.p, %.preheader69.preheader ] ; 4 uses
  %i.ae = phi i32 [ %.pre123, %.loopexit ], [ %i.ac, %.preheader69.preheader ] ; 3 uses
  %.pre125176 = phi i32 [ %.pre123, %.loopexit ], [ %.pre126, %.preheader69.preheader ] ; 2 uses
  %.not100 = icmp eq i32 %i.ae, 0
  br i1 %.not100, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader67
  %wide.trip.count = zext i32 %i.ae to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.a, %bb.f ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !164, !range !140, !noundef !136
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.loopexit68

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond108.not, label %.preheader, label %.lr.ph, !llvm.loop !168

.loopexit68:                                      ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.aj = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.an = add nuw i32 %.051177, 1
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !8
  store i8 1, ptr %i.ai, align 1, !tbaa !164
  %i.ar = zext i32 %.051177 to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ar
  store i32 %i.aj, ptr %i.as, align 4, !tbaa !60
  %.pre123 = load i32, ptr %i.g, align 8, !tbaa !162 ; 5 uses
  %i.at = icmp eq i32 %.pre123, %i.aj
  br i1 %i.at, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader67, %.loopexit68, %bb.f
  %i.au = phi i32 [ %i.ae, %bb.f ], [ 0, %.preheader67 ], [ %.pre123, %.loopexit68 ]
  %.pre124138 = phi i32 [ %.pre125176, %bb.f ], [ %.pre125176, %.preheader67 ], [ %.pre123, %.loopexit68 ]
  %.188 = add i32 %.051177, -1                    ; 2 uses
  %i.av = zext i32 %.188 to i64
  %.not6289.wide = icmp ugt i64 %i.k, %i.av
  br i1 %.not6289.wide, label %.loopexit70, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader, %.lr.ph91
  %.190 = phi i32 [ %.1, %.lr.ph91 ], [ %.188, %.preheader ] ; 2 uses
  %i.aw = zext i32 %.190 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !60
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.az
  store i8 0, ptr %i.ba, align 1, !tbaa !164
  %.1 = add i32 %.190, -1                         ; 2 uses
  %i.bb = zext i32 %.1 to i64
  %.not62.wide = icmp samesign ugt i64 %i.k, %i.bb
  br i1 %.not62.wide, label %.loopexit70, label %.lr.ph91, !llvm.loop !169

.loopexit:                                        ; preds = %.loopexit68
  %i.bc = add nuw i32 %.051177, 1                 ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %i.b
  br i1 %i.bd, label %.preheader67, label %.preheader69.preheader._crit_edge

.preheader69.preheader._crit_edge:                ; preds = %.preheader69.preheader, %.loopexit
  %i.be = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.bf = icmp ugt i32 %i.be, 1
  br i1 %i.bf, label %bb.g, label %.critedge65

bb.g:                                             ; preds = %.preheader69.preheader._crit_edge
  %i.bg = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.bg, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @_Z12verbose_lockv()
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.34, i64 noundef 9) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %.critedge65

bb.j:                                             ; preds = %bb.h, %bb.j
  %indvars.iv117 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next118, %bb.j ] ; 2 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv117
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !60
  %i.bp = zext i32 %i.bo to i64
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %i.bp)
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not.a = icmp eq i64 %indvars.iv.next118, %i.j
  br i1 %exitcond121.not.a, label %bb.i, label %bb.j, !llvm.loop !170

bb.k:                                             ; preds = %bb.g
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.34, i64 noundef 9) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  br label %.critedge65

bb.m:                                             ; preds = %bb.k, %bb.m
  %indvars.iv112 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next113, %bb.m ] ; 2 uses
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv112
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !60
  %i.ca = zext i32 %i.bz to i64
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i64 noundef %i.ca)
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %i.j
  br i1 %exitcond116.not, label %bb.l, label %bb.m, !llvm.loop !171

.critedge65:                                      ; preds = %.critedge.loopexit, %bb.a, %bb.i, %bb.l, %.preheader69.preheader._crit_edge
  %.not84 = phi i1 [ true, %.preheader69.preheader._crit_edge ], [ true, %bb.i ], [ true, %bb.l ], [ false, %bb.a ], [ false, %.critedge.loopexit ]
  ret i1 %.not84
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #3

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #3

declare void @_Z12verbose_lockv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #3

declare void @_Z14verbose_unlockv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3euf11interpreter12execute_coreEPNS_9code_treeEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !117, !nonnull !136, !align !137 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %2)
  br i1 %i.g, label %bb.b, label %.thread506

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 5 uses
  %.not.i = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %.not.i, label %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  store i32 0, ptr %i.j, align 4, !tbaa !60
  br label %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit

_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit:      ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !160  ; 2 uses
  %.not.i148 = icmp eq ptr %i.l, null
  br i1 %.not.i148, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  store i32 0, ptr %i.m, align 4, !tbaa !60
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE5resetEv.exit, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !160  ; 2 uses
  %.not.i149 = icmp eq ptr %i.o, null
  br i1 %.not.i149, label %_ZN6vectorIjLb0EjE5resetEv.exit150, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  store i32 0, ptr %i.p, align 4, !tbaa !60
  br label %_ZN6vectorIjLb0EjE5resetEv.exit150

_ZN6vectorIjLb0EjE5resetEv.exit150:               ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit, %bb.e
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit150
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !60   ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %i.u = icmp eq i32 %i.r, %i.t
end_hunk_0
