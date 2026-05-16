inline.NumInlined: 171
inline.NumDeleted: 125
begin_hunk_0_@_ZNK2v88internal13CodeReference17instruction_startEv:bb.a
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.n, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal13CodeReference15instruction_endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %.val.val = load i64, ptr %i.d, align 8         ; 2 uses
  %i.e = add i64 %.val.val, 39
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %.val.val, 55
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = add i64 %i.g, %i.k
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val1.val = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %.val1.val2 = load i32, ptr %i.p, align 8
  %i.q = sext i32 %.val1.val2 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.val, i64 %i.q
  %i.s = ptrtoint ptr %i.r to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.val3.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 12
  %.val3.val4 = load i32, ptr %i.v, align 4
  %i.w = ptrtoint ptr %.val3.val to i64
  %i.x = sext i32 %.val3.val4 to i64
  %i.y = add i64 %i.x, %i.w
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #4
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.l, %bb.b ], [ %i.s, %bb.c ], [ %i.y, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal13CodeReference16instruction_sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %.val.val = load i64, ptr %i.d, align 8
  %i.e = add i64 %.val.val, 55
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i32, ptr %i.f, align 4
  br label %_ZNK2v88internal12_GLOBAL__N_111WasmCodeOps16instruction_sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val1.val2 = load i32, ptr %i.j, align 8       ; 2 uses
  %i.k = icmp sgt i32 %.val1.val2, -1
  br i1 %i.k, label %_ZNK2v88internal12_GLOBAL__N_111WasmCodeOps16instruction_sizeEv.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 12
  %.val3.val = load i32, ptr %i.n, align 4
  br label %_ZNK2v88internal12_GLOBAL__N_111WasmCodeOps16instruction_sizeEv.exit

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #4
  unreachable

_ZNK2v88internal12_GLOBAL__N_111WasmCodeOps16instruction_sizeEv.exit: ; preds = %bb.c, %bb.e, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %.val3.val, %bb.e ], [ %.val1.val2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal13CodeReference16relocation_startEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %.val.val = load i64, ptr %i.d, align 8
  %i.e = add i64 %.val.val, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZNK2v88internal12_GLOBAL__N_17CodeOps16relocation_startEv.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.g, 15
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps16relocation_startEv.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps16relocation_startEv.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.val3.val = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 56
  %.val3.val4 = load i32, ptr %i.x, align 8
  %i.y = sext i32 %.val3.val4 to i64
  %i.z = getelementptr inbounds i8, ptr %.val3.val, i64 %i.y
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps16relocation_startEv.exit

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #4
  unreachable

_ZNK2v88internal12_GLOBAL__N_17CodeOps16relocation_startEv.exit: ; preds = %bb.c, %bb.b, %bb.e, %bb.d
  %.0 = phi ptr [ %i.z, %bb.e ], [ %i.u, %bb.d ], [ %i.m, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal13CodeReference14relocation_endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %.val.val = load i64, ptr %i.d, align 8
  %i.e = add i64 %.val.val, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZNK2v88internal12_GLOBAL__N_17CodeOps14relocation_endEv.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.g, 15
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %1 = load i64, ptr %i.n, align 8
  %2 = ashr i64 %1, 32
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %2
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps14relocation_endEv.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %_ZNK2v88internal12_GLOBAL__N_111WasmCodeOps14relocation_endEv.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  unreachable

_ZNK2v88internal12_GLOBAL__N_111WasmCodeOps14relocation_endEv.exit: ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps14relocation_endEv.exit

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.val3.val = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val3.val4 = load i32, ptr %i.ae, align 8
  %i.af = sext i32 %.val3.val4 to i64
  %i.ag = getelementptr inbounds i8, ptr %.val3.val, i64 %i.af
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps14relocation_endEv.exit

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #4
  unreachable

_ZNK2v88internal12_GLOBAL__N_17CodeOps14relocation_endEv.exit: ; preds = %bb.c, %bb.b, %bb.f, %_ZNK2v88internal12_GLOBAL__N_111WasmCodeOps14relocation_endEv.exit
  %.0 = phi ptr [ %i.ag, %bb.f ], [ %i.ab, %_ZNK2v88internal12_GLOBAL__N_111WasmCodeOps14relocation_endEv.exit ], [ %i.o, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal13CodeReference15relocation_sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %.val.val = load i64, ptr %i.d, align 8
  %i.e = add i64 %.val.val, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZNK2v88internal12_GLOBAL__N_17CodeOps15relocation_sizeEv.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.g, 15
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %1 = load i64, ptr %i.m, align 8
  %2 = lshr i64 %1, 32
  %3 = trunc nuw i64 %2 to i32
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps15relocation_sizeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %_ZNK2v88internal12_GLOBAL__N_17CodeOps15relocation_sizeEv.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 60
  %.val2.val = load i32, ptr %i.u, align 4
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps15relocation_sizeEv.exit

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #4
  unreachable

_ZNK2v88internal12_GLOBAL__N_17CodeOps15relocation_sizeEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.f
  %.0 = phi i32 [ %.val2.val, %bb.f ], [ 0, %bb.b ], [ %3, %bb.c ], [ %i.q, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal13CodeReference13code_commentsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %.val.val = load i64, ptr %i.d, align 8         ; 5 uses
  %i.e = add i64 %.val.val, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.val.val, 39
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %.val.val, 55
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %i.j, %i.n
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps13code_commentsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #3, !noalias !7 ; 0 uses
  %i.q = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #3, !noalias !7 ; 0 uses
  %i.r = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobDataEv() #3, !noalias !7 ; 2 uses
  %i.s = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobDataSizeEv() #3, !noalias !7 ; 0 uses
  %i.t = add i64 %.val.val, 89
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i16, ptr %i.u, align 2
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr [12 x i8], ptr %i.r, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 42844
  %i.z = getelementptr i8, ptr %i.x, i64 32
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps13code_commentsEv.exit

_ZNK2v88internal12_GLOBAL__N_17CodeOps13code_commentsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.o, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = add i64 %.val.val, 79
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add i64 %.0.i.i.i, %i.ah
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 @_ZNK2v88internal4wasm8WasmCode13code_commentsEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ak) #3
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.val2.val = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 40
  %.val2.val3 = load i32, ptr %i.ao, align 8
  %i.ap = ptrtoint ptr %.val2.val to i64
  %i.aq = sext i32 %.val2.val3 to i64
  %i.ar = add i64 %i.aq, %i.ap
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #4
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %_ZNK2v88internal12_GLOBAL__N_17CodeOps13code_commentsEv.exit
  %.0 = phi i64 [ %i.ai, %_ZNK2v88internal12_GLOBAL__N_17CodeOps13code_commentsEv.exit ], [ %i.al, %bb.e ], [ %i.ar, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal13CodeReference18code_comments_sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %.val.val = load i64, ptr %i.d, align 8         ; 2 uses
  %i.e = add i64 %.val.val, 83
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i64 %.val.val, 79
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sub nsw i32 %i.g, %i.j
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 @_ZNK2v88internal4wasm8WasmCode18code_comments_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.m) #3
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 44
  %.val2.val = load i32, ptr %i.q, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #4
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ %i.n, %bb.c ], [ %.val2.val, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal13CodeReference15jump_table_infoEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %.val.val = load i64, ptr %i.d, align 8         ; 5 uses
  %i.e = add i64 %.val.val, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.val.val, 39
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %.val.val, 55
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %i.j, %i.n
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps15jump_table_infoEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #3, !noalias !10 ; 0 uses
  %i.q = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #3, !noalias !10 ; 0 uses
  %i.r = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobDataEv() #3, !noalias !10 ; 2 uses
  %i.s = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobDataSizeEv() #3, !noalias !10 ; 0 uses
  %i.t = add i64 %.val.val, 89
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i16, ptr %i.u, align 2
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr [12 x i8], ptr %i.r, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 42844
  %i.z = getelementptr i8, ptr %i.x, i64 32
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = ptrtoint ptr %i.ac to i64
  br label %_ZNK2v88internal12_GLOBAL__N_17CodeOps15jump_table_infoEv.exit

_ZNK2v88internal12_GLOBAL__N_17CodeOps15jump_table_infoEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.o, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = add i64 %.val.val, 83
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add i64 %.0.i.i.i, %i.ah
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 @_ZNK2v88internal4wasm8WasmCode15jump_table_infoEv(ptr noundef nonnull align 8 dereferenceable(112) %i.ak) #3
  br label %bb.h

bb.f:                                             ; preds = %bb.a
end_hunk_0
