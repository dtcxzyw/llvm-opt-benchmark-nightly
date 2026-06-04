inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@rb_callable_method_entry_without_refinements:bb.a
  %i.b = select i1 %.not, ptr %i.a, ptr %2        ; 3 uses
  %i.c = call fastcc ptr @search_method0(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i1 noundef zeroext false) ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %method_entry_resolve_refinement.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !418  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.e, null
  br i1 %.not9.i.i, label %method_entry_resolve_refinement.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 15
  switch i8 %i.g, label %search_method_protect.exit.thread.fold.split.i [
    i8 7, label %method_entry_resolve_refinement.exit
    i8 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = call fastcc ptr @resolve_refined_method(i64 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) ; 3 uses
  %.not22.i = icmp eq ptr %i.h, null
  br i1 %.not22.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !418  ; 2 uses
  %.not23.i = icmp eq ptr %i.j, null
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 15
  %i.m = icmp eq i8 %i.l, 7
  br i1 %i.m, label %bb.g, label %method_entry_resolve_refinement.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %method_entry_resolve_refinement.exit

search_method_protect.exit.thread.fold.split.i:   ; preds = %bb.c
  br label %method_entry_resolve_refinement.exit

method_entry_resolve_refinement.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.f, %bb.g, %search_method_protect.exit.thread.fold.split.i
  %.1.i = phi ptr [ null, %bb.g ], [ %i.h, %bb.f ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %search_method_protect.exit.thread.fold.split.i ]
  %i.n = load i64, ptr %i.b, align 8, !tbaa !11
  %i.o = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.n, i64 noundef %1, ptr noundef %.1.i, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.o
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @prepare_callable_method_entry(i64 noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null, ret: address, provenance) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %rb_obj_written.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !198
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %rb_obj_written.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not5.i.i.i = and i1 %i.e, %i.g                ; 2 uses
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %i.j = and i64 %i.i, 16384
  %.not10.i = icmp eq i64 %i.j, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.d, !prof !110

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.c
  %i.l = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.split.i, label %bb.e

.split.i:                                         ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.m = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.n = getelementptr i8, ptr %i.l, i64 128
  %i.o = load i8, ptr %i.n, align 8, !tbaa !111, !range !114, !noundef !64
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.e
  %i.q = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.l)
  br label %RCLASS_EXT_WRITABLE.exit

bb.f:                                             ; preds = %bb.e
  %i.r = inttoptr i64 %0 to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %bb.d, %.split.i, %.split7.i, %bb.f
  %.0.i = phi ptr [ %i.k, %bb.d ], [ %i.s, %bb.f ], [ %i.m, %.split.i ], [ %i.q, %.split7.i ]
  %i.t = getelementptr i8, ptr %.0.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !389  ; 3 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %RCLASS_EXT_WRITABLE.exit
  %i.v = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.u, i64 noundef %1, ptr noundef nonnull %i.a) #23
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %.thread33, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.a, align 8, !tbaa !11
  %i.x = inttoptr i64 %i.w to ptr
  br label %rb_obj_written.exit

bb.i:                                             ; preds = %RCLASS_EXT_WRITABLE.exit
  %.not30 = icmp eq i32 %3, 0
  br i1 %.not30, label %rb_obj_written.exit, label %bb.j

.thread33:                                        ; preds = %bb.g
  %.not3034 = icmp eq i32 %3, 0
  br i1 %.not3034, label %rb_obj_written.exit, label %.thread35

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @rb_id_table_create(i64 noundef 0) #23 ; 2 uses
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.j
  %i.z = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ab = and i64 %i.aa, 16384
  %.not10.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.k, !prof !110

bb.k:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.ac = getelementptr i8, ptr %i.z, i64 24
  br label %RCLASS_WRITE_CALLABLE_M_TBL.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.j
  %i.ad = tail call ptr @rb_current_box() #23     ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.l

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ae = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITE_CALLABLE_M_TBL.exit

bb.l:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.af = getelementptr i8, ptr %i.ad, i64 128
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.split7.i.i, label %bb.m

.split7.i.i:                                      ; preds = %bb.l
  %i.ai = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.ad)
  br label %RCLASS_WRITE_CALLABLE_M_TBL.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = inttoptr i64 %0 to ptr
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  br label %RCLASS_WRITE_CALLABLE_M_TBL.exit

RCLASS_WRITE_CALLABLE_M_TBL.exit:                 ; preds = %bb.k, %.split.i.i, %.split7.i.i, %bb.m
  %.0.i.i = phi ptr [ %i.ac, %bb.k ], [ %i.ak, %bb.m ], [ %i.ae, %.split.i.i ], [ %i.ai, %.split7.i.i ]
  %i.al = getelementptr i8, ptr %.0.i.i, i64 40
  store ptr %i.y, ptr %i.al, align 8, !tbaa !389
  br label %.thread35

.thread35:                                        ; preds = %.thread33, %RCLASS_WRITE_CALLABLE_M_TBL.exit
  %.022 = phi ptr [ %i.y, %RCLASS_WRITE_CALLABLE_M_TBL.exit ], [ %i.u, %.thread33 ]
  %i.am = getelementptr i8, ptr %2, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !420
  %i.ao = call ptr @rb_method_entry_complement_defined_class(ptr noundef nonnull %2, i64 noundef %i.an, i64 noundef %0) ; 4 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.aq = call i32 @rb_id_table_insert(ptr noundef %.022, i64 noundef %1, i64 noundef %i.ap) #23 ; 0 uses
  %i.ar = icmp eq ptr %i.ao, null
  %i.as = and i64 %i.ap, 7
  %i.at = icmp ne i64 %i.as, 0
  %i.au = or i1 %i.ar, %i.at
  br i1 %i.au, label %rb_obj_written.exit, label %bb.n

bb.n:                                             ; preds = %.thread35
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ap) #23
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.n, %.thread35, %.thread33, %bb.h, %bb.a, %bb.b, %bb.i
  %.023 = phi ptr [ null, %bb.i ], [ %2, %bb.b ], [ %i.x, %bb.h ], [ null, %.thread33 ], [ null, %bb.a ], [ %i.ao, %.thread35 ], [ %i.ao, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %.023
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_resolve_refined_method(i64 noundef %0, ptr noundef captures(address_is_null, ret: address, provenance) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @resolve_refined_method(i64 noundef %0, ptr noundef %1, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @resolve_refined_method(i64 noundef %0, ptr noundef readonly captures(address_is_null, ret: address, provenance) %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not51 = icmp eq ptr %1, null
  br i1 %.not51, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq i64 %0, 4
  br label %search_method_protect.exit44

search_method_protect.exit44:                     ; preds = %bb.p, %.lr.ph
  %.02752 = phi ptr [ %1, %.lr.ph ], [ %i.az, %bb.p ] ; 5 uses
  %i.c = getelementptr i8, ptr %.02752, i64 16    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 15
  %i.g = icmp eq i8 %i.f, 11
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %search_method_protect.exit44
  %i.h = getelementptr i8, ptr %.02752, i64 32    ; 2 uses
  br i1 %i.b, label %find_refinement.exit.thread, label %find_refinement.exit

find_refinement.exit:                             ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !201
  %i.j = call i64 @rb_hash_lookup(i64 noundef %0, i64 noundef %i.i) #23 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %find_refinement.exit.thread, label %bb.c

bb.c:                                             ; preds = %find_refinement.exit
  %i.l = getelementptr i8, ptr %.02752, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !420
  %i.n = call fastcc ptr @search_method0(i64 noundef %i.j, i64 noundef %i.m, ptr noundef %2, i1 noundef zeroext false) ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %find_refinement.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !418  ; 2 uses
  %.not9.i = icmp eq ptr %i.p, null
  br i1 %.not9.i, label %find_refinement.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 15
  switch i8 %i.r, label %.critedge [
    i8 7, label %find_refinement.exit.thread
    i8 11, label %find_refinement.exit.thread
  ]

find_refinement.exit.thread:                      ; preds = %bb.e, %bb.e, %bb.d, %bb.c, %bb.b, %find_refinement.exit
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !418
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 4 uses
  %.not36 = icmp eq ptr %i.u, null
  br i1 %.not36, label %bb.h, label %bb.f

bb.f:                                             ; preds = %find_refinement.exit.thread
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !198  ; 2 uses
  %i.x = icmp ne i64 %i.w, 0
  %i.y = icmp ne ptr %2, null
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  store i64 %i.w, ptr %2, align 8, !tbaa !11
  br label %.critedge

bb.h:                                             ; preds = %find_refinement.exit.thread
  %i.z = load i64, ptr %i.h, align 8, !tbaa !201
  %i.aa = inttoptr i64 %i.z to ptr                ; 7 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.ac = and i64 %i.ab, 65536
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.aa, i64 160    ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !192
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.h
  %i.ag = getelementptr i8, ptr %i.aa, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.i:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.ah = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i39 = icmp eq ptr %i.ah, null
  br i1 %.not.i39, label %.split.i, label %bb.j

.split.i:                                         ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %i.aa, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.ah, i64 128
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !111, !range !114, !noundef !64
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.split7.i, label %bb.m

.split7.i:                                        ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.am = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.an = and i64 %i.am, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.k

bb.k:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !196
  %i.aq = call i32 @rb_st_lookup(ptr noundef nonnull %i.ao, i64 noundef %i.ap, ptr noundef nonnull %i.a) #23
  %.not5.i.i13.i = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !11
  %i.as = inttoptr i64 %i.ar to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.l, %bb.k, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.as, %bb.l ], [ null, %bb.k ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.at = getelementptr i8, ptr %i.aa, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.at, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.m:                                             ; preds = %bb.j
  %i.au = getelementptr i8, ptr %i.aa, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.m
  %.0.i40 = phi ptr [ %i.ag, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.au, %bb.m ], [ %i.ai, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.av = getelementptr i8, ptr %.0.i40, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !197 ; 2 uses
  %.not37 = icmp eq i64 %i.aw, 0
  br i1 %.not37, label %.critedge, label %bb.n

bb.n:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ax = getelementptr i8, ptr %.02752, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !420
  %i.az = call fastcc ptr @search_method0(i64 noundef %i.aw, i64 noundef %i.ay, ptr noundef %2, i1 noundef zeroext false) ; 3 uses
  %.not.i41 = icmp eq ptr %i.az, null
  br i1 %.not.i41, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !418 ; 2 uses
  %.not9.i42 = icmp eq ptr %i.bb, null
  br i1 %.not9.i42, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = and i8 %i.bc, 15
  %i.be = icmp eq i8 %i.bd, 7
  br i1 %i.be, label %.critedge, label %search_method_protect.exit44

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.n, %search_method_protect.exit44, %RCLASS_EXT_READABLE.exit, %bb.e, %bb.a, %bb.g, %bb.f
  %.2 = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.f ], [ null, %bb.a ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.n ], [ %i.n, %bb.e ], [ %.02752, %search_method_protect.exit44 ], [ null, %RCLASS_EXT_READABLE.exit ]
  ret ptr %.2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_resolve_refined_method_callable(i64 noundef %0, ptr noundef captures(address, ret: address, provenance) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !200
  store i64 %i.c, ptr %i.a, align 8, !tbaa !11
  %i.d = call fastcc ptr @resolve_refined_method(i64 noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !202
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11
  %i.k = call ptr @rb_method_entry_complement_defined_class(ptr noundef nonnull %i.d, i64 noundef %i.i, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_remove_method_id(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @remove_method(i64 noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @remove_method(i64 noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  tail call void @rb_class_modify_check(i64 noundef %0) #23
  %i.e = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77
  %i.g = and i64 %i.f, 65536
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 160      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !192
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.k = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.l = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 128
  %i.o = load i8, ptr %i.n, align 8, !tbaa !111, !range !114, !noundef !64
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.q = load i64, ptr %i.e, align 8, !tbaa !77
  %i.r = and i64 %i.q, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !192  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.t = load i64, ptr %i.l, align 8, !tbaa !196
  %i.u = call i32 @rb_st_lookup(ptr noundef nonnull %i.s, i64 noundef %i.t, ptr noundef nonnull %i.b) #23
  %.not5.i.i13.i = icmp eq i32 %i.u, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.b, align 8, !tbaa !11
  %i.w = inttoptr i64 %i.v to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.w, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.x = getelementptr i8, ptr %i.e, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.x, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.k, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.y, %bb.f ], [ %i.m, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.z = getelementptr i8, ptr %.0.i, i64 96
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !406 ; 10 uses
  %i.ab = add i64 %1, -2849                       ; 2 uses
  %i.ac = call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 60)
  switch i64 %i.ac, label %bb.h [
    i64 21, label %bb.g
    i64 19, label %bb.g
    i64 1, label %bb.g
    i64 0, label %bb.g
  ]

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit, %RCLASS_EXT_READABLE.exit, %RCLASS_EXT_READABLE.exit, %RCLASS_EXT_READABLE.exit
  %i.ad = call ptr @rb_id2name(i64 noundef %1) #23
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.218, ptr noundef %i.ad) #63
  br label %bb.h

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit, %bb.g
  %i.ae = inttoptr i64 %i.aa to ptr               ; 10 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.ag = and i64 %i.af, 65536
  %.not.i.i67 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i67, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i68

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i68:        ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.ae, i64 160    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !192
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85, label %bb.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i68, %bb.h
  %i.ak = getelementptr i8, ptr %i.ae, i64 24
  br label %RCLASS_EXT_READABLE.exit86

bb.i:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i68
  %i.al = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i69 = icmp eq ptr %i.al, null
  br i1 %.not.i69, label %.split.i80, label %bb.j

.split.i80:                                       ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.ae, i64 24
  br label %RCLASS_EXT_READABLE.exit86

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.al, i64 128
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.split7.i71, label %bb.m

.split7.i71:                                      ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.ar = and i64 %i.aq, 65536
  %.not.i.i.i10.i72 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i10.i72, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i76, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i73

RCLASS_CLASSEXT_TBL.exit.i.i11.i73:               ; preds = %.split7.i71
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i74 = icmp eq ptr %i.as, null
  br i1 %.not.i.i12.i74, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i76, label %bb.k

bb.k:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i73
  %i.at = load i64, ptr %i.al, align 8, !tbaa !196
  %i.au = call i32 @rb_st_lookup(ptr noundef nonnull %i.as, i64 noundef %i.at, ptr noundef nonnull %i.a) #23
  %.not5.i.i13.i75 = icmp eq i32 %i.au, 0
  br i1 %.not5.i.i13.i75, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i76, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load i64, ptr %i.a, align 8, !tbaa !11
  %i.aw = inttoptr i64 %i.av to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i76

RCLASS_EXT_READABLE_LOOKUP.exit17.i76:            ; preds = %bb.l, %bb.k, %RCLASS_CLASSEXT_TBL.exit.i.i11.i73, %.split7.i71
  %.0.i.i14.i77 = phi ptr [ %i.aw, %bb.l ], [ null, %bb.k ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i73 ], [ null, %.split7.i71 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i78 = icmp eq ptr %.0.i.i14.i77, null
  %i.ax = getelementptr i8, ptr %i.ae, i64 24
  %.0.i16.i79 = select i1 %.not.i15.i78, ptr %i.ax, ptr %.0.i.i14.i77
  br label %RCLASS_EXT_READABLE.exit86

bb.m:                                             ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.ae, i64 24
  br label %RCLASS_EXT_READABLE.exit86

RCLASS_EXT_READABLE.exit86:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85, %.split.i80, %RCLASS_EXT_READABLE_LOOKUP.exit17.i76, %bb.m
  %.0.i70 = phi ptr [ %i.ak, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i85 ], [ %i.ay, %bb.m ], [ %i.am, %.split.i80 ], [ %.0.i16.i79, %RCLASS_EXT_READABLE_LOOKUP.exit17.i76 ]
  %i.az = getelementptr i8, ptr %.0.i70, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !388
end_hunk_0
begin_hunk_1_@vm_scope_visibility_get:bb.a
  %i.ay = getelementptr i8, ptr %i.ax, i64 32
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, 7
  %i.bb = zext nneg i8 %i.ba to i32
  br label %vm_env_cref_by_cref.exit

vm_env_cref_by_cref.exit:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.d, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i, %._crit_edge.i, %rb_vm_get_ruby_level_next_cfp.exit.i
  %.0 = phi i32 [ %i.bb, %rb_vm_get_ruby_level_next_cfp.exit.i ], [ 1, %._crit_edge.i ], [ 1, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @vm_scope_module_func_check(ptr noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val8.i = load i64, ptr %i.c, align 8, !tbaa !122
  %i.d = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 3 uses
  %.not910.i = icmp ugt ptr %i.d, %i.b
  tail call void @llvm.assume(i1 %.not910.i)
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.0.val.i8 = load ptr, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %.0.val.val.i9 = load i64, ptr %.0.val.i8, align 8, !tbaa !11 ; 2 uses
  %i.f = and i64 %.0.val.val.i9, 128
  %.not7.not.i10 = icmp eq i64 %i.f, 0            ; 2 uses
  br i1 %.not7.not.i10, label %rb_vm_get_ruby_level_next_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i11 = phi ptr [ %i.g, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %.011.i11, i64 56  ; 2 uses
  %.not9.i = icmp ugt ptr %i.d, %i.g
  tail call void @llvm.assume(i1 %.not9.i)
  %i.h = getelementptr i8, ptr %.011.i11, i64 88
  %.0.val.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11 ; 2 uses
  %i.i = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %.lr.ph.i

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i, %bb.a
  %.0.val14.i = phi i64 [ %.0.val.val.i9, %bb.a ], [ %.0.val.val.i, %.lr.ph.i ]
  %i.j = phi ptr [ %.0.val.i8, %bb.a ], [ %.0.val.i, %.lr.ph.i ] ; 2 uses
  %i.k = and i64 %.0.val14.i, 2
  %.not15.i = icmp eq i64 %i.k, 0
  br i1 %.not15.i, label %.lr.ph.i4, label %._crit_edge.i

.lr.ph.i4:                                        ; preds = %rb_vm_get_ruby_level_next_cfp.exit, %bb.b
  %.016.i = phi ptr [ %i.w, %bb.b ], [ %i.j, %rb_vm_get_ruby_level_next_cfp.exit ] ; 2 uses
  %i.l = getelementptr i8, ptr %.016.i, i64 -16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = and i64 %i.m, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %.lr.ph.i4
  %i.r = inttoptr i64 %i.m to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77
  %i.t = and i64 %i.s, 61471
  %or.cond.i = icmp eq i64 %i.t, 4122
  br i1 %or.cond.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %.lr.ph.i4
  %i.u = getelementptr i8, ptr %.016.i, i64 -8
  %.0.val6.i = load i64, ptr %i.u, align 8, !tbaa !11
  %i.v = and i64 %.0.val6.i, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %.0.val.i5 = load i64, ptr %i.w, align 8, !tbaa !11
  %i.x = and i64 %.0.val.i5, 2
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !440

._crit_edge.i:                                    ; preds = %bb.b, %rb_vm_get_ruby_level_next_cfp.exit
  %.0.lcssa.i = phi ptr [ %i.j, %rb_vm_get_ruby_level_next_cfp.exit ], [ %i.w, %bb.b ]
  %i.y = getelementptr i8, ptr %.0.lcssa.i, i64 -16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = and i64 %i.z, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %vm_env_cref_by_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i7.i

rbimpl_RB_TYPE_P_fastpath.exit.i7.i:              ; preds = %._crit_edge.i
  %i.ae = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77 ; 2 uses
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 26
  br i1 %i.ah, label %bb.c, label %vm_env_cref_by_cref.exit

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i7.i
  %i.ai = trunc i64 %i.af to i32
  %i.aj = lshr i32 %i.ai, 12
  %i.ak = and i32 %i.aj, 15
  switch i32 %i.ak, label %vm_env_cref_by_cref.exit [
    i32 1, label %.loopexit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr i8, ptr %i.ae, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !80 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = and i64 %i.am, 7
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %i.an, %i.ap
  br i1 %i.aq, label %vm_env_cref_by_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.d
  %i.ar = inttoptr i64 %i.am to ptr
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77
  %i.at = and i64 %i.as, 61471
  %or.cond.i.i = icmp eq i64 %i.at, 4122
  br i1 %or.cond.i.i, label %.loopexit, label %vm_env_cref_by_cref.exit

.loopexit:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.c
  br i1 %.not7.not.i10, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %.lr.ph.i.i
  %.011.i.i15 = phi ptr [ %i.au, %.lr.ph.i.i ], [ %i.b, %.loopexit ] ; 2 uses
  %i.au = getelementptr i8, ptr %.011.i.i15, i64 56 ; 2 uses
  %.not9.i.i = icmp ugt ptr %i.d, %i.au
  tail call void @llvm.assume(i1 %.not9.i.i)
  %i.av = getelementptr i8, ptr %.011.i.i15, i64 88
  %.0.val.i.i = load ptr, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i.i = load i64, ptr %.0.val.i.i, align 8, !tbaa !11
  %i.aw = and i64 %.0.val.val.i.i, 128
  %.not7.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.not.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %.lr.ph.i.i

rb_vm_get_ruby_level_next_cfp.exit.i:             ; preds = %.lr.ph.i.i, %.loopexit
  %.0.val.i.i.lcssa = phi ptr [ %.0.val.i8, %.loopexit ], [ %.0.val.i.i, %.lr.ph.i.i ]
  %i.ax = tail call fastcc ptr @vm_get_cref(ptr noundef nonnull %.0.val.i.i.lcssa)
  %i.ay = getelementptr i8, ptr %i.ax, i64 32
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = lshr i8 %i.az, 3
  %i.bb = and i8 %i.ba, 1
  %i.bc = zext nneg i8 %i.bb to i32
  br label %vm_env_cref_by_cref.exit

vm_env_cref_by_cref.exit:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.d, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i, %._crit_edge.i, %rb_vm_get_ruby_level_next_cfp.exit.i
  %.0 = phi i32 [ %i.bc, %rb_vm_get_ruby_level_next_cfp.exit.i ], [ 0, %._crit_edge.i ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ]
  ret i32 %.0
}

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_intern_str(i64 noundef) local_unnamed_addr #4

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_id2str(i64 noundef) local_unnamed_addr #4

declare i64 @rb_id_attrset(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_undef(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = icmp eq i64 %0, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.9) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_class_modify_check(i64 noundef %0) #23
  %i.e = add i64 %1, -2849                        ; 2 uses
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 60)
  switch i64 %i.f, label %bb.e [
    i64 21, label %bb.d
    i64 19, label %bb.d
    i64 1, label %bb.d
    i64 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = tail call ptr @rb_id2name(i64 noundef %1) #23
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.10, ptr noundef %i.g) #63
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = tail call fastcc ptr @search_method0(i64 noundef %0, i64 noundef %1, ptr noundef null, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !418  ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 15
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %bb.g, label %.thread53.thread

bb.g:                                             ; preds = %bb.f
  %i.n = tail call fastcc ptr @resolve_refined_method(i64 noundef 4, ptr noundef nonnull %i.h, ptr noundef null) ; 2 uses
  %.not47 = icmp eq ptr %i.n, null
  br i1 %.not47, label %.thread, label %.thread53

.thread53:                                        ; preds = %bb.g
  %.phi.trans.insert = getelementptr i8, ptr %i.n, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !418 ; 2 uses
  %.not48 = icmp eq ptr %.pre, null
  br i1 %.not48, label %.thread, label %.thread53.thread

.thread53.thread:                                 ; preds = %bb.f, %.thread53
  %i.o = phi ptr [ %.pre, %.thread53 ], [ %i.j, %bb.f ] ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 15
  switch i8 %i.q, label %bb.k [
    i8 7, label %.thread
    i8 11, label %bb.h
  ]

bb.h:                                             ; preds = %.thread53.thread
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not49 = icmp eq ptr %i.s, null
  br i1 %.not49, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !418  ; 2 uses
  %.not50 = icmp eq ptr %i.u, null
  br i1 %.not50, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 15
  %i.x = icmp eq i8 %i.w, 7
  br i1 %i.x, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.e, %.thread53.thread, %bb.j, %bb.i, %bb.h, %.thread53, %bb.g
  %i.y = tail call i64 @rb_id2str(i64 noundef %1) #23
  tail call void @rb_method_name_error(i64 noundef %0, i64 noundef %i.y) #42
  unreachable

bb.k:                                             ; preds = %.thread53.thread, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.z = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.l, label %rb_vm_lock_enter.exit.i

bb.l:                                             ; preds = %bb.k
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #23, !inline_history !430
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.l, %bb.k
  %i.aa = call fastcc ptr @rb_method_entry_make(i64 noundef %0, i64 noundef %1, i64 noundef %0, i32 noundef 1, i32 noundef 7, ptr noundef null, i64 noundef %1, ptr noundef null), !inline_history !430 ; 0 uses
  %i.ab = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i12.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i12.i, label %bb.m, label %rb_add_method.exit

bb.m:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #23, !inline_history !430
  br label %rb_add_method.exit

rb_add_method.exit:                               ; preds = %rb_vm_lock_enter.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ac = call i64 @rb_id2sym(i64 noundef %1) #23
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !11
  %i.ad = icmp eq i64 %0, 0
  %i.ae = and i64 %0, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %.split42, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_add_method.exit
  %i.ah = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !77
  %i.aj = and i64 %i.ai, 8223
  %or.cond = icmp eq i64 %i.aj, 8194
  br i1 %or.cond, label %.split, label %.split42

.split42:                                         ; preds = %rb_add_method.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ak = call fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef 2993, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !286 ; 0 uses
  br label %bb.n

.split:                                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.al = getelementptr i8, ptr %i.ah, i64 136
  %i.am = load i64, ptr %i.al, align 8, !tbaa !27
  %i.an = call fastcc i64 @rb_funcallv_scope(i64 noundef %i.am, i64 noundef 3009, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !286 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.split42, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

declare void @rb_class_modify_check(i64 noundef) local_unnamed_addr #4

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #17

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_method_name_error(i64 noundef, i64 noundef) local_unnamed_addr #10

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_funcallv(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_method_entry_eq(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418
  %i.e = tail call i32 @rb_method_definition_eq(ptr noundef %i.b, ptr noundef %i.d)
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_method_definition_eq(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %.not8.i = icmp eq ptr %0, null
  br i1 %.not8.i, label %original_method_definition.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %.09.i = phi ptr [ %.0.be.i, %.backedge.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = load i8, ptr %.09.i, align 8
  %i.b = and i8 %i.a, 15
  switch i8 %i.b, label %original_method_definition.exit [
    i8 11, label %bb.b
    i8 6, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr i8, ptr %.09.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not7.i = icmp eq ptr %i.d, null
  br i1 %.not7.i, label %original_method_definition.exit, label %.backedge.i

.backedge.i:                                      ; preds = %bb.c, %bb.b
  %.pn.i = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %.0.be.in.i = getelementptr i8, ptr %.pn.i, i64 16
  %.0.be.i = load ptr, ptr %.0.be.in.i, align 8, !tbaa !418 ; 2 uses
  %.not.i = icmp eq ptr %.0.be.i, null
  br i1 %.not.i, label %original_method_definition.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr i8, ptr %.09.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %.backedge.i

original_method_definition.exit:                  ; preds = %.lr.ph.i, %bb.b, %.backedge.i, %bb.a
  %.0.lcssa.i = phi ptr [ null, %bb.a ], [ null, %.backedge.i ], [ %.09.i, %.lr.ph.i ], [ %.09.i, %bb.b ] ; 11 uses
  %.not8.i30 = icmp eq ptr %1, null
  br i1 %.not8.i30, label %original_method_definition.exit40, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %original_method_definition.exit, %.backedge.i33
  %.09.i32 = phi ptr [ %.0.be.i36, %.backedge.i33 ], [ %1, %original_method_definition.exit ] ; 5 uses
  %i.g = load i8, ptr %.09.i32, align 8
  %i.h = and i8 %i.g, 15
  switch i8 %i.h, label %original_method_definition.exit40 [
    i8 11, label %bb.d
    i8 6, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i31
  %i.i = getelementptr i8, ptr %.09.i32, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %.not7.i39 = icmp eq ptr %i.j, null
  br i1 %.not7.i39, label %original_method_definition.exit40, label %.backedge.i33

.backedge.i33:                                    ; preds = %bb.e, %bb.d
  %.pn.i34 = phi ptr [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  %.0.be.in.i35 = getelementptr i8, ptr %.pn.i34, i64 16
  %.0.be.i36 = load ptr, ptr %.0.be.in.i35, align 8, !tbaa !418 ; 2 uses
  %.not.i37 = icmp eq ptr %.0.be.i36, null
  br i1 %.not.i37, label %original_method_definition.exit40, label %.lr.ph.i31

bb.e:                                             ; preds = %.lr.ph.i31
  %i.k = getelementptr i8, ptr %.09.i32, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  br label %.backedge.i33

original_method_definition.exit40:                ; preds = %.lr.ph.i31, %bb.d, %.backedge.i33, %original_method_definition.exit
  %.0.lcssa.i38 = phi ptr [ null, %original_method_definition.exit ], [ null, %.backedge.i33 ], [ %.09.i32, %.lr.ph.i31 ], [ %.09.i32, %bb.d ] ; 11 uses
  %i.m = icmp eq ptr %.0.lcssa.i, %.0.lcssa.i38
  br i1 %i.m, label %bb.r, label %bb.f

bb.f:                                             ; preds = %original_method_definition.exit40
  %i.n = icmp ne ptr %.0.lcssa.i, null
  %i.o = icmp ne ptr %.0.lcssa.i38, null
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.g, label %bb.r

end_hunk_1
begin_hunk_2_@rb_method_definition_eq:bb.a
  br label %bb.r

bb.l:                                             ; preds = %bb.h, %bb.h
  %i.ai = getelementptr i8, ptr %.0.lcssa.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr i8, ptr %.0.lcssa.i38, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !27
  %i.am = icmp eq i64 %i.aj, %i.al
  br label %bb.r

bb.m:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %.0.lcssa.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr i8, ptr %.0.lcssa.i38, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !27
  %i.ar = tail call i64 @rb_equal(i64 noundef %i.ao, i64 noundef %i.aq) #23
  %i.as = and i64 %i.ar, -5
  %i.at = icmp ne i64 %i.as, 0
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %.0.lcssa.i, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !205
  %i.aw = getelementptr i8, ptr %.0.lcssa.i38, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !205
  %i.ay = icmp eq i64 %i.av, %i.ax
  br label %bb.r

bb.o:                                             ; preds = %bb.h
  %i.az = getelementptr i8, ptr %.0.lcssa.i, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr i8, ptr %.0.lcssa.i38, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !27
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr i8, ptr %.0.lcssa.i, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !27
  %i.bg = getelementptr i8, ptr %.0.lcssa.i38, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !27
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.bj = zext nneg i8 %i.q to i32
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.11, i32 noundef %i.bj) #57
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.h, %bb.h, %bb.h, %bb.j, %bb.k, %bb.g, %bb.f, %original_method_definition.exit40, %bb.n, %bb.m, %bb.l, %bb.i
  %.0.shrunk = phi i1 [ true, %original_method_definition.exit40 ], [ false, %bb.f ], [ %i.x, %bb.i ], [ false, %bb.g ], [ %i.am, %bb.l ], [ %i.at, %bb.m ], [ %i.ay, %bb.n ], [ %i.ah, %bb.k ], [ true, %bb.h ], [ false, %bb.j ], [ true, %bb.h ], [ true, %bb.h ], [ false, %bb.o ], [ %i.bi, %bb.p ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_hash_method_entry(i64 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418  ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 15
  %i.e = zext nneg i8 %i.d to i64
  %i.f = tail call i64 @rb_st_hash_uint(i64 noundef %0, i64 noundef %i.e) #66 ; 10 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.backedge.i.i, %bb.a
  %.09.i.i = phi ptr [ %.0.be.i.i, %.backedge.i.i ], [ %i.b, %bb.a ] ; 11 uses
  %i.g = load i8, ptr %.09.i.i, align 8
  %i.h = and i8 %i.g, 15                          ; 2 uses
  switch i8 %i.h, label %.thread.i [
    i8 11, label %bb.b
    i8 6, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 10, label %bb.h
    i8 5, label %rb_hash_method_definition.exit
    i8 8, label %rb_hash_method_definition.exit
    i8 7, label %rb_hash_method_definition.exit
    i8 9, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr i8, ptr %.09.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %.not7.i.i = icmp eq ptr %i.j, null
  br i1 %.not7.i.i, label %.thread.i, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.pn.i.i = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %.0.be.in.i.i = getelementptr i8, ptr %.pn.i.i, i64 16
  %.0.be.i.i = load ptr, ptr %.0.be.in.i.i, align 8, !tbaa !418 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.be.i.i, null
  br i1 %.not.i.i, label %rb_hash_method_definition.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr i8, ptr %.09.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  br label %.backedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr i8, ptr %.09.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = tail call i64 @rb_st_hash_uint(i64 noundef %i.f, i64 noundef %i.q) #66
  br label %rb_hash_method_definition.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr i8, ptr %.09.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = tail call i64 @rb_st_hash_uint(i64 noundef %i.f, i64 noundef %i.u) #66
  %i.w = getelementptr i8, ptr %.09.i.i, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !27
  %i.y = sext i32 %i.x to i64
  %i.z = tail call i64 @rb_st_hash_uint(i64 noundef %i.v, i64 noundef %i.y) #66
  br label %rb_hash_method_definition.exit

bb.f:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.aa = getelementptr i8, ptr %.09.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.ac = tail call i64 @rb_st_hash_uint(i64 noundef %i.f, i64 noundef %i.ab) #66
  br label %rb_hash_method_definition.exit

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr i8, ptr %.09.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.af = tail call i64 @rb_hash_proc(i64 noundef %i.f, i64 noundef %i.ae) #23
  br label %rb_hash_method_definition.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr i8, ptr %.09.i.i, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !205
  %i.ai = tail call i64 @rb_st_hash_uint(i64 noundef %i.f, i64 noundef %i.ah) #66
  br label %rb_hash_method_definition.exit

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr i8, ptr %.09.i.i, i64 8
  %i.ak = getelementptr i8, ptr %.09.i.i, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !27
  %i.am = zext i32 %i.al to i64
  %i.an = tail call i64 @rb_st_hash_uint(i64 noundef %i.f, i64 noundef %i.am) #66
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call i64 @rb_st_hash_uint(i64 noundef %i.an, i64 noundef %i.ap) #66
  br label %rb_hash_method_definition.exit

.thread.i:                                        ; preds = %.lr.ph.i.i, %bb.b
  %i.ar = zext nneg i8 %i.h to i32
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.220, i32 noundef %i.ar) #57
  unreachable

rb_hash_method_definition.exit:                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.backedge.i.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.r, %bb.d ], [ %i.z, %bb.e ], [ %i.ac, %bb.f ], [ %i.af, %bb.g ], [ %i.ai, %bb.h ], [ %i.aq, %bb.i ], [ %i.f, %.backedge.i.i ], [ %i.f, %.lr.ph.i.i ], [ %i.f, %.lr.ph.i.i ], [ %i.f, %.lr.ph.i.i ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_alias(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = icmp eq i64 %0, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.12) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_class_modify_check(i64 noundef %0) #23
  br label %bb.d

bb.d:                                             ; preds = %RCLASS_EXT_READABLE.exit, %bb.c
  %.054 = phi i64 [ %2, %bb.c ], [ %i.bo, %RCLASS_EXT_READABLE.exit ] ; 3 uses
  %.050 = phi i32 [ 0, %bb.c ], [ %i.bs, %RCLASS_EXT_READABLE.exit ]
  %.0 = phi i64 [ %0, %bb.c ], [ %i.bl, %RCLASS_EXT_READABLE.exit ] ; 5 uses
  %i.f = call fastcc ptr @search_method0(i64 noundef %.0, i64 noundef %.054, ptr noundef nonnull %i.c, i1 noundef zeroext false) ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !418  ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 15
  %i.k = icmp eq i8 %i.j, 11
  br i1 %i.k, label %bb.f, label %.thread77.thread

bb.f:                                             ; preds = %bb.e
  %i.l = call fastcc ptr @resolve_refined_method(i64 noundef 4, ptr noundef nonnull %i.f, ptr noundef null) ; 3 uses
  %.not63 = icmp eq ptr %i.l, null
  br i1 %.not63, label %.thread, label %.thread77

.thread77:                                        ; preds = %bb.f
  %.phi.trans.insert = getelementptr i8, ptr %i.l, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !418 ; 2 uses
  %.not64 = icmp eq ptr %.pre, null
  br i1 %.not64, label %.thread, label %.thread77.thread

.thread77.thread:                                 ; preds = %bb.e, %.thread77
  %.05180108 = phi ptr [ %i.l, %.thread77 ], [ %i.f, %bb.e ] ; 2 uses
  %i.m = phi ptr [ %.pre, %.thread77 ], [ %i.h, %bb.e ] ; 4 uses
  %i.n = load i8, ptr %i.m, align 8               ; 3 uses
  %i.o = and i8 %i.n, 15
  switch i8 %i.o, label %bb.m [
    i8 7, label %.thread
    i8 11, label %bb.g
  ]

bb.g:                                             ; preds = %.thread77.thread
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %.not65 = icmp eq ptr %i.q, null
  br i1 %.not65, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !418  ; 2 uses
  %.not66 = icmp eq ptr %i.s, null
  br i1 %.not66, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, 15
  %i.v = icmp eq i8 %i.u, 7
  br i1 %i.v, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.d, %.thread77.thread, %bb.f, %.thread77, %bb.g, %bb.h, %bb.i
  %i.w = icmp eq i64 %.0, 0
  %i.x = and i64 %.0, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %.critedge, label %rbimpl_RB_TYPE_P_fastpath.exit70

rbimpl_RB_TYPE_P_fastpath.exit70:                 ; preds = %.thread
  %i.aa = inttoptr i64 %.0 to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 3
  br i1 %i.ad, label %bb.j, label %.critedge

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit70
  %i.ae = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.af = call fastcc ptr @search_method0(i64 noundef %i.ae, i64 noundef %.054, ptr noundef nonnull %i.c, i1 noundef zeroext false) ; 3 uses
  %.not67 = icmp eq ptr %i.af, null
  br i1 %.not67, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !418 ; 3 uses
  %.not68 = icmp eq ptr %i.ah, null
  br i1 %.not68, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i8, ptr %i.ah, align 8             ; 2 uses
  %i.aj = and i8 %i.ai, 15
  %i.ak = icmp eq i8 %i.aj, 7
  br i1 %i.ak, label %.critedge, label %bb.m

.critedge:                                        ; preds = %.thread, %bb.k, %bb.j, %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit70
  call void @rb_print_undef(i64 noundef %0, i64 noundef %.054, i32 noundef 0) #42
  unreachable

bb.m:                                             ; preds = %.thread77.thread, %bb.l, %bb.i
  %i.al = phi i8 [ %i.ai, %bb.l ], [ %i.n, %bb.i ], [ %i.n, %.thread77.thread ]
  %i.am = phi ptr [ %i.ah, %bb.l ], [ %i.m, %bb.i ], [ %i.m, %.thread77.thread ]
  %.152 = phi ptr [ %i.af, %bb.l ], [ %.05180108, %bb.i ], [ %.05180108, %.thread77.thread ] ; 4 uses
  %i.an = getelementptr i8, ptr %.152, i64 16
  %i.ao = and i8 %i.al, 15
  switch i8 %i.ao, label %.loopexit [
    i8 5, label %bb.n
    i8 6, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.ap = inttoptr i64 %.0 to ptr                 ; 7 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77
  %i.ar = and i64 %i.aq, 65536
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.n
  %i.as = getelementptr i8, ptr %i.ap, i64 160    ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !192
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.o

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.n
  %i.av = getelementptr i8, ptr %i.ap, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.o:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.aw = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %.split.i, label %bb.p

.split.i:                                         ; preds = %bb.o
  %i.ax = getelementptr i8, ptr %i.ap, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.aw, i64 128
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.split7.i, label %bb.s

.split7.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !77
  %i.bc = and i64 %i.bb, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.q

bb.q:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !196
  %i.bf = call i32 @rb_st_lookup(ptr noundef nonnull %i.bd, i64 noundef %i.be, ptr noundef nonnull %i.b) #23
  %.not5.i.i13.i = icmp eq i32 %i.bf, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.r, %bb.q, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.bh, %bb.r ], [ null, %bb.q ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.bi = getelementptr i8, ptr %i.ap, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.bi, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.s:                                             ; preds = %bb.p
  %i.bj = getelementptr i8, ptr %i.ap, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.s
  %.0.i71 = phi ptr [ %i.av, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.bj, %bb.s ], [ %i.ax, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.bk = getelementptr i8, ptr %.0.i71, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !197
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !418
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !205
  %i.bp = load i64, ptr %.152, align 8, !tbaa !217
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i32 %i.bq, 16
  %i.bs = and i32 %i.br, 3
  br label %bb.d

bb.t:                                             ; preds = %bb.m
  %i.bt = load i64, ptr %.152, align 8, !tbaa !217
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i32 %i.bu, 16
  %i.bw = and i32 %i.bv, 3
  %i.bx = getelementptr i8, ptr %i.am, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.t
  %.253 = phi ptr [ %i.by, %bb.t ], [ %.152, %bb.m ] ; 6 uses
  %.1 = phi i32 [ %i.bw, %bb.t ], [ %.050, %bb.m ] ; 2 uses
  %i.bz = icmp eq i32 %.1, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.ca = load i64, ptr %.253, align 8, !tbaa !217
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = and i32 %i.cc, 3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit
  %.2 = phi i32 [ %i.cd, %bb.u ], [ %.1, %.loopexit ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.253, i64 8      ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !198
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr i8, ptr %.253, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !420
  %i.cj = call ptr @rb_method_entry_clone(ptr noundef nonnull %.253)
  %i.ck = call fastcc ptr @rb_method_entry_make(i64 noundef %0, i64 noundef %1, i64 noundef %0, i32 noundef %.2, i32 noundef 6, ptr noundef null, i64 noundef %i.ci, ptr noundef %i.cj) ; 0 uses
  %i.cl = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  %i.cm = getelementptr i8, ptr %i.cl, i64 508
end_hunk_2
begin_hunk_3_@rb_call_super
define dso_local i64 @rb_call_super(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_call_super_kw(i32 noundef %0, ptr noundef %1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_current_receiver() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not4 = icmp eq ptr %i.e, null
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.29) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_check_stack_overflow() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not, label %stack_check.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 144 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !63
  %i.f = and i8 %i.e, 2
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.c, label %stack_check.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %.0..0..0..0..0..0..i) #23
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.d, align 8, !tbaa !63
  %i.i = or i8 %i.h, 2
  store i8 %i.i, ptr %i.d, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %.0..0..0..0..0..0..i, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @rb_gccct_clear_table(i64 noundef %0) local_unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  %i.b = getelementptr i8, ptr %i.a, i64 1336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8184) %i.b, i8 0, i64 8184, i1 false), !tbaa !408
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_check_funcall_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @rb_check_funcall_default_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef 36, i32 noundef %4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_check_funcall_default_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d                         ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.h = trunc i64 %0 to i1
  br i1 %i.h, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i64 %0, 254
  %i.j = icmp eq i64 %i.i, 12
  %spec.select.i = select i1 %i.j, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.g, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = tail call fastcc range(i32 -1, 2) i32 @vm_respond_to(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.0.i, i64 noundef %0, i64 noundef %1, i32 noundef 1), !inline_history !463 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.x, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  br i1 %i.e, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = inttoptr i64 %0 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 8
  br label %rb_class_of.exit.i

bb.j:                                             ; preds = %bb.h
  switch i64 %0, label %bb.m [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.k
    i64 20, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %rb_class_of.exit.i

bb.l:                                             ; preds = %bb.j
  br label %rb_class_of.exit.i

bb.m:                                             ; preds = %bb.j
  %i.p = trunc i64 %0 to i1
  br i1 %i.p, label %rb_class_of.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = and i64 %0, 254
  %i.r = icmp eq i64 %i.q, 12
  %spec.select.i.i = select i1 %i.r, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.0.in.i.i = phi ptr [ %i.o, %bb.i ], [ @rb_cNilClass, %bb.k ], [ @rb_cTrueClass, %bb.l ], [ @rb_cFalseClass, %bb.j ], [ @rb_cInteger, %bb.m ], [ %spec.select.i.i, %bb.n ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %rb_class_of.exit.i
  tail call fastcc void @uncallable_object(i64 noundef %0, i64 noundef %1) #58
  unreachable

bb.p:                                             ; preds = %rb_class_of.exit.i
  %i.s = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.0.i.i, i64 noundef %1, ptr noundef null) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %rb_search_method_entry.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not7.i.i.i, label %rb_search_method_entry.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 15
  switch i8 %i.w, label %check_funcall_callable.exit [
    i8 7, label %rb_search_method_entry.exit.thread
    i8 11, label %bb.s
  ], !prof !464

bb.s:                                             ; preds = %bb.r
  %i.x = tail call ptr @rb_resolve_refined_method_callable(i64 noundef 4, ptr noundef nonnull %i.s) ; 2 uses
  %.not35.i.i = icmp eq ptr %i.x, null
  br i1 %.not35.i.i, label %rb_search_method_entry.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83   ; 2 uses
  %.not36.i.i = icmp eq ptr %i.z, null
  br i1 %.not36.i.i, label %rb_search_method_entry.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, 15
  %i.ac = icmp eq i8 %i.ab, 7
  br i1 %i.ac, label %rb_search_method_entry.exit.thread, label %check_funcall_callable.exit

rb_search_method_entry.exit.thread:               ; preds = %bb.r, %bb.q, %bb.p, %bb.u, %bb.t, %bb.s
  %i.ad = tail call fastcc i64 @check_funcall_missing(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.0.i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.m, i64 noundef %4, i32 noundef %5) ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 36
  %spec.select = select i1 %i.ae, i64 %4, i64 %i.ad
  br label %bb.x

check_funcall_callable.exit:                      ; preds = %bb.r, %bb.u
  %i.af = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 144 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !63
  %i.ah = and i8 %i.ag, 2
  %.not.i34 = icmp eq i8 %i.ah, 0
  br i1 %.not.i34, label %bb.v, label %stack_check.exit

bb.v:                                             ; preds = %check_funcall_callable.exit
  %i.ai = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %.0..0..0..0..0..0..i) #23
  %.not4.i = icmp eq i32 %i.ai, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = load i8, ptr %i.af, align 8, !tbaa !63
  %i.ak = or i8 %i.aj, 2
  store i8 %i.ak, ptr %i.af, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %.0..0..0..0..0..0..i, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %check_funcall_callable.exit, %bb.v
  %i.al = tail call i64 @rb_vm_call0(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.s, i32 noundef %5), !inline_history !465
  br label %bb.x

bb.x:                                             ; preds = %rb_class_of.exit, %stack_check.exit, %rb_search_method_entry.exit.thread
  %.031 = phi i64 [ %i.al, %stack_check.exit ], [ %spec.select, %rb_search_method_entry.exit.thread ], [ %4, %rb_class_of.exit ]
  ret i64 %.031
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_check_funcall(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @rb_check_funcall_default_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef 36, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_check_funcall_default(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @rb_check_funcall_default_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_check_funcall_with_hook_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d                         ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.h = trunc i64 %0 to i1
  br i1 %i.h, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i64 %0, 254
  %i.j = icmp eq i64 %i.i, 12
  %spec.select.i = select i1 %i.j, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.g, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = tail call fastcc range(i32 -1, 2) i32 @vm_respond_to(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.0.i, i64 noundef %0, i64 noundef %1, i32 noundef 1), !inline_history !463 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_class_of.exit
  tail call void %4(i32 noundef 0, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %5) #23
  br label %bb.y

bb.i:                                             ; preds = %rb_class_of.exit
  br i1 %i.e, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = inttoptr i64 %0 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 8
  br label %rb_class_of.exit.i

bb.k:                                             ; preds = %bb.i
  switch i64 %0, label %bb.n [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.l
    i64 20, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  br label %rb_class_of.exit.i

bb.m:                                             ; preds = %bb.k
  br label %rb_class_of.exit.i

bb.n:                                             ; preds = %bb.k
  %i.p = trunc i64 %0 to i1
  br i1 %i.p, label %rb_class_of.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = and i64 %0, 254
  %i.r = icmp eq i64 %i.q, 12
  %spec.select.i.i = select i1 %i.r, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0.in.i.i = phi ptr [ %i.o, %bb.j ], [ @rb_cNilClass, %bb.l ], [ @rb_cTrueClass, %bb.m ], [ @rb_cFalseClass, %bb.k ], [ @rb_cInteger, %bb.n ], [ %spec.select.i.i, %bb.o ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rb_class_of.exit.i
  tail call fastcc void @uncallable_object(i64 noundef %0, i64 noundef %1) #58
  unreachable

bb.q:                                             ; preds = %rb_class_of.exit.i
  %i.s = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.0.i.i, i64 noundef %1, ptr noundef null) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %rb_search_method_entry.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not7.i.i.i, label %rb_search_method_entry.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 15
  switch i8 %i.w, label %check_funcall_callable.exit [
    i8 7, label %rb_search_method_entry.exit.thread
    i8 11, label %bb.t
  ], !prof !464

bb.t:                                             ; preds = %bb.s
  %i.x = tail call ptr @rb_resolve_refined_method_callable(i64 noundef 4, ptr noundef nonnull %i.s) ; 2 uses
  %.not35.i.i = icmp eq ptr %i.x, null
  br i1 %.not35.i.i, label %rb_search_method_entry.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83   ; 2 uses
  %.not36.i.i = icmp eq ptr %i.z, null
  br i1 %.not36.i.i, label %rb_search_method_entry.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, 15
  %i.ac = icmp eq i8 %i.ab, 7
  br i1 %i.ac, label %rb_search_method_entry.exit.thread, label %check_funcall_callable.exit

rb_search_method_entry.exit.thread:               ; preds = %bb.s, %bb.r, %bb.q, %bb.v, %bb.u, %bb.t
  %i.ad = tail call fastcc i64 @check_funcall_missing(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.0.i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.m, i64 noundef 36, i32 noundef %6) ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 36
  %i.af = zext i1 %i.ae to i32
  tail call void %4(i32 noundef %i.af, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %5) #23
  br label %bb.y

check_funcall_callable.exit:                      ; preds = %bb.s, %bb.v
  %i.ag = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 144 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !63
  %i.ai = and i8 %i.ah, 2
  %.not.i48 = icmp eq i8 %i.ai, 0
  br i1 %.not.i48, label %bb.w, label %stack_check.exit

bb.w:                                             ; preds = %check_funcall_callable.exit
  %i.aj = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %.0..0..0..0..0..0..i) #23
  %.not4.i = icmp eq i32 %i.aj, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = load i8, ptr %i.ag, align 8, !tbaa !63
  %i.al = or i8 %i.ak, 2
  store i8 %i.al, ptr %i.ag, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %.0..0..0..0..0..0..i, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %check_funcall_callable.exit, %bb.w
  tail call void %4(i32 noundef 1, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %5) #23
  %i.am = tail call i64 @rb_vm_call_kw(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.s, i32 noundef %6)
  br label %bb.y

bb.y:                                             ; preds = %stack_check.exit, %rb_search_method_entry.exit.thread, %bb.h
  %.0 = phi i64 [ %i.am, %stack_check.exit ], [ %i.ad, %rb_search_method_entry.exit.thread ], [ 36, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @check_funcall_missing(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef readonly captures(address_is_null) %5, i32 noundef %6, i64 noundef %7, i32 noundef %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %10 = alloca %struct.rb_call_data, align 8      ; 5 uses
  %11 = alloca %struct.rb_callinfo, align 8       ; 8 uses
  %12 = alloca %struct.rb_callcache, align 8      ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  %13 = alloca %struct.rescue_funcall_args, align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.d = tail call i64 @rb_id2sym(i64 noundef %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.e = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %1, i64 noundef 158, ptr noundef nonnull %i.a) ; 4 uses
  %.not.i51 = icmp eq ptr %i.e, null
  br i1 %.not.i51, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %.not7.i52 = icmp eq ptr %i.g, null
  br i1 %.not7.i52, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 15
  %i.j = icmp eq i8 %i.i, 7
  br i1 %i.j, label %.thread, label %callable_method_entry.exit54

callable_method_entry.exit54:                     ; preds = %bb.c
  %i.k = load i64, ptr %i.e, align 8, !tbaa !170
  %i.l = and i64 %i.k, 262144
  %.not9.i = icmp eq i64 %i.l, 0
  br i1 %.not9.i, label %basic_obj_respond_to_missing.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a, %callable_method_entry.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.m = icmp sgt i32 %6, 0
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.o = zext i1 %i.m to i8
  br label %bb.e

basic_obj_respond_to_missing.exit:                ; preds = %callable_method_entry.exit54
  store i64 %i.d, ptr %i.b, align 16, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 20, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i64 3190810, ptr %12, align 8, !tbaa !442
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 36, ptr %i.s, align 8, !tbaa !185
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.e, ptr %i.t, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr @vm_call_general, ptr %i.u, align 8, !tbaa !234
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 0, ptr %i.v, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i64 106522, ptr %11, align 8, !tbaa !445
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !238
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 158, ptr %i.x, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 0, ptr %i.y, align 8, !tbaa !173
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 2, ptr %i.z, align 8, !tbaa !174
  store ptr %11, ptr %10, align 8, !tbaa !225
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !182
  store ptr %10, ptr %9, align 8, !tbaa !226
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %12, ptr %i.ab, align 8, !tbaa !233
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.q, align 8, !tbaa !441
  store i64 0, ptr %i.ac, align 8, !tbaa !228
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %2, ptr %i.ad, align 8, !tbaa !229
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 2, ptr %i.ae, align 8, !tbaa !230
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, i8 0, i64 12, i1 false)
  %i.ag = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %i.b), !inline_history !447
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.fr = freeze i64 %i.ag                         ; 2 uses
  store i64 %i.r, ptr %i.q, align 8, !tbaa !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ah = and i64 %.fr, -5
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %callable_method_entry.exit.thread, label %bb.d

bb.d:                                             ; preds = %basic_obj_respond_to_missing.exit
  %i.ai = icmp sgt i32 %6, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ak = zext i1 %i.ai to i8
  %i.al = icmp eq i64 %.fr, 36
  %spec.select = select i1 %i.al, i8 0, i8 2
  %i.am = or disjoint i8 %spec.select, %i.ak
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.an = phi i8 [ %i.am, %bb.d ], [ %i.o, %.thread ]
  %i.ao = phi ptr [ %i.aj, %bb.d ], [ %i.n, %.thread ]
  store i8 %i.an, ptr %i.ao, align 8
  %i.ap = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %1, i64 noundef 2913, ptr noundef nonnull %13) ; 4 uses
  %.not.i48 = icmp eq ptr %i.ap, null
  br i1 %.not.i48, label %callable_method_entry.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 2 uses
  %.not7.i = icmp eq ptr %i.ar, null
  br i1 %.not7.i, label %callable_method_entry.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = and i8 %i.as, 15
  %i.au = icmp eq i8 %i.at, 7
  br i1 %i.au, label %callable_method_entry.exit.thread, label %callable_method_entry.exit

callable_method_entry.exit:                       ; preds = %bb.g
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !170
  %i.aw = and i64 %i.av, 262144
  %.not46 = icmp eq i64 %i.aw, 0
  br i1 %.not46, label %bb.h, label %callable_method_entry.exit.thread

bb.h:                                             ; preds = %callable_method_entry.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ax = add i32 %4, 1                           ; 4 uses
  %i.ay = sext i32 %i.ax to i64                   ; 4 uses
  %i.az = icmp ult i32 %i.ax, 128
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.ba = shl nuw nsw i64 %i.ay, 3
  %i.bb = alloca i8, i64 %i.ba, align 16
  br label %bb.l

end_hunk_3
begin_hunk_4_@rb_make_no_method_exception:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi i64 [ %1, %bb.a ], [ %i.b, %bb.b ]  ; 2 uses
  %i.c = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !11
  %i.d = icmp eq i64 %0, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %3, -1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr i8, ptr %4, i64 8
  %i.h = tail call i64 @rb_ary_new_from_values(i64 noundef %i.f, ptr noundef %i.g) #23
  %i.i = tail call i64 @rb_nomethod_err_new(i64 noundef %.013, i64 noundef %2, i64 noundef %i.a, i64 noundef %i.h, i32 noundef %5) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i64 @rb_name_err_new(i64 noundef %.013, i64 noundef %2, i64 noundef %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  ret i64 %.0
}

declare i64 @rb_fstring_new(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_nomethod_err_new(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_name_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #11 {
scope_to_ci.exit:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %5 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %6 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %7 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  store volatile ptr %i.f, ptr %i.d, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.d, align 8, !tbaa !28 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %cond.not = icmp eq i32 %4, 0                   ; 3 uses
  %spec.select = select i1 %cond.not, i64 0, i64 4
  %i.g = sext i32 %2 to i64                       ; 2 uses
  store i64 106522, ptr %8, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !282
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %1, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %spec.select, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !11
  %i.h = tail call ptr @rb_current_box() #23, !inline_history !474 ; 3 uses
  %i.i = icmp eq i64 %0, 0
  %i.j = and i64 %0, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.a

bb.a:                                             ; preds = %scope_to_ci.exit
  %i.m = inttoptr i64 %0 to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.b, label %bb.h, !prof !177

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @uncallable_object(i64 noundef %0, i64 noundef %1) #58, !inline_history !474
  unreachable

bb.c:                                             ; preds = %scope_to_ci.exit
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit.i

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit.i

bb.f:                                             ; preds = %bb.c
  %i.p = trunc i64 %0 to i1
  br i1 %i.p, label %rb_class_of.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %0, 254
  %i.r = icmp eq i64 %i.q, 12
  %spec.select.i.i = select i1 %i.r, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.in.i.i = phi ptr [ %spec.select.i.i, %bb.g ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit.i, %bb.a
  %.029.i = phi i64 [ %.0.i.i, %rb_class_of.exit.i ], [ %i.o, %bb.a ] ; 5 uses
  %.not33.i = icmp eq ptr %i.h, null
  br i1 %.not33.i, label %rb_ec_vm_ptr.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %i.h, i64 128
  %i.t = load i8, ptr %i.s, align 8, !tbaa !111, !range !114, !noundef !64
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.j, label %rb_ec_vm_ptr.exit.i

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.h, align 8, !tbaa !196
  %i.w = xor i64 %i.v, %.029.i
  br label %rb_ec_vm_ptr.exit.i

rb_ec_vm_ptr.exit.i:                              ; preds = %bb.j, %bb.i, %bb.h
  %.030.i = phi i64 [ %i.w, %bb.j ], [ %.029.i, %bb.i ], [ %.029.i, %bb.h ]
  %i.x = lshr i64 %.030.i, 3
  %i.y = xor i64 %i.x, %1
  %i.z = urem i64 %i.y, 1023                      ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i = load ptr, ptr %i.ab, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ac = getelementptr i8, ptr %.val.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 1336
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !408 ; 4 uses
  %.not34.i = icmp eq ptr %i.ag, null
  br i1 %.not34.i, label %gccct_method_search.exit, label %bb.k, !prof !177

bb.k:                                             ; preds = %rb_ec_vm_ptr.exit.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val37.i = load i64, ptr %i.ah, align 8, !tbaa !185
  %i.ai = icmp eq i64 %.val37.i, %.029.i
  br i1 %i.ai, label %bb.l, label %gccct_method_search.exit, !prof !72

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %.val36.i = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 3 uses
  %i.ak = load i64, ptr %.val36.i, align 8, !tbaa !170
  %i.al = and i64 %i.ak, 2097152
  %.not35.i = icmp eq i64 %i.al, 0
  br i1 %.not35.i, label %bb.m, label %gccct_method_search.exit, !prof !72

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %.val36.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !202
  %i.ao = icmp eq i64 %i.an, %1
  br i1 %i.ao, label %.thread, label %gccct_method_search.exit

.thread:                                          ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !70
  %i.ar = getelementptr i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !74
  br label %bb.o

gccct_method_search.exit:                         ; preds = %rb_ec_vm_ptr.exit.i, %bb.k, %bb.l, %bb.m
  %i.at = call fastcc ptr @gccct_method_search_slowpath(ptr noundef nonnull %i.ad, i64 noundef %.029.i, i32 noundef %i.aa, ptr noundef nonnull %8), !inline_history !474 ; 3 uses
  %i.au = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !74 ; 3 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %rb_method_call_status.exit.thread, label %bb.n, !prof !475

bb.n:                                             ; preds = %gccct_method_search.exit
  %.phi.trans.insert = getelementptr i8, ptr %i.at, i64 16
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !187 ; 2 uses
  %.not.i26 = icmp eq ptr %.val.pre, null
  br i1 %.not.i26, label %rb_method_call_status.exit.thread, label %bb.o, !prof !476

bb.o:                                             ; preds = %.thread, %bb.n
  %.1.i3555 = phi ptr [ %i.ag, %.thread ], [ %i.at, %bb.n ] ; 2 uses
  %i.ay = phi i64 [ %i.as, %.thread ], [ %i.ax, %bb.n ] ; 9 uses
  %.val54 = phi ptr [ %.val36.i, %.thread ], [ %.val.pre, %bb.n ] ; 3 uses
  %i.az = getelementptr i8, ptr %.1.i3555, i64 16
  %i.ba = getelementptr i8, ptr %.val54, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !83 ; 3 uses
  %.not34.i27 = icmp eq ptr %i.bb, null
  br i1 %.not34.i27, label %rb_method_call_status.exit.thread, label %bb.p, !prof !177

bb.p:                                             ; preds = %bb.o
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = and i8 %i.bc, 15
  switch i8 %i.bd, label %bb.t [
    i8 7, label %rb_method_call_status.exit.thread
    i8 11, label %bb.q
  ], !prof !477

bb.q:                                             ; preds = %bb.p
  %i.be = call ptr @rb_resolve_refined_method_callable(i64 noundef 4, ptr noundef nonnull %.val54) ; 3 uses
  %.not35.i28 = icmp eq ptr %i.be, null
  br i1 %.not35.i28, label %rb_method_call_status.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83 ; 3 uses
  %.not36.i = icmp eq ptr %i.bg, null
  br i1 %.not36.i, label %rb_method_call_status.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = and i8 %i.bh, 15
  %i.bj = icmp eq i8 %i.bi, 7
  br i1 %i.bj, label %rb_method_call_status.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi ptr [ %i.bg, %bb.s ], [ %i.bb, %bb.p ]
  %.028.i = phi ptr [ %i.be, %bb.s ], [ %.val54, %bb.p ] ; 2 uses
  %i.bl = load i64, ptr %.028.i, align 8, !tbaa !170
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = lshr i32 %i.bm, 16
  %i.bo = and i32 %i.bn, 3                        ; 3 uses
  %.not37.i = icmp eq i32 %i.bo, 1
  br i1 %.not37.i, label %rb_method_call_status.exit, label %bb.u, !prof !72

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr i8, ptr %i.bk, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !205
  %i.br = icmp eq i64 %i.bq, 2913
  br i1 %i.br, label %rb_method_call_status.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp eq i32 %i.bo, 2
  %or.cond.i = and i1 %cond.not, %i.bs
  br i1 %or.cond.i, label %rb_method_call_status.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = icmp eq i32 %i.bo, 3
  %or.cond3.i = and i1 %cond.not, %i.bt
  br i1 %or.cond3.i, label %bb.x, label %rb_method_call_status.exit

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr i8, ptr %.028.i, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !405 ; 5 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = and i64 %i.bv, 7
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = or i1 %i.bw, %i.by
  br i1 %i.bz, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.x
  %i.ca = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !77
  %i.cc = and i64 %i.cb, 31
  %i.cd = icmp eq i64 %i.cc, 28
  br i1 %i.cd, label %bb.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.y:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ce = getelementptr i8, ptr %i.ca, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !61
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.y, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.x
  %.026.i = phi i64 [ %i.cf, %bb.y ], [ %i.bv, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bv, %bb.x ]
  %i.cg = icmp eq i64 %i.ay, 36
  br i1 %i.cg, label %rb_method_call_status.exit.thread, label %bb.z

bb.z:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ch = call i64 @rb_obj_is_kind_of(i64 noundef %i.ay, i64 noundef %.026.i) #23
  %.not38.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not38.not.i, label %rb_method_call_status.exit.thread, label %rb_method_call_status.exit

rb_method_call_status.exit:                       ; preds = %bb.t, %bb.w, %bb.z, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 %2, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %.val.i31 = load ptr, ptr %i.az, align 8, !tbaa !187
  %i.ci = getelementptr i8, ptr %.val.i31, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !83
  %i.ck = load i8, ptr %i.cj, align 8
  %i.cl = and i8 %i.ck, 15
  %i.cm = icmp eq i8 %i.cl, 0
  %i.cn = icmp sgt i32 %2, 128
  %i.co = and i1 %i.cn, %i.cm
  br i1 %i.co, label %bb.aa, label %vm_call0_cc.exit, !prof !177

bb.aa:                                            ; preds = %rb_method_call_status.exit
  %i.cp = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %3, ptr noundef %i.b, ptr noundef %i.a, i32 noundef 0), !inline_history !461 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !7
  %.pre38 = load i32, ptr %i.a, align 4, !tbaa !7 ; 2 uses
  %.pre39 = sext i32 %.pre38 to i64
  %i.cq = sext i32 %.pre to i64
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %rb_method_call_status.exit, %bb.aa
  %.pre-phi = phi i64 [ %i.g, %rb_method_call_status.exit ], [ %.pre39, %bb.aa ]
  %i.cr = phi i32 [ %2, %rb_method_call_status.exit ], [ %.pre38, %bb.aa ]
  %i.cs = phi i64 [ 0, %rb_method_call_status.exit ], [ %i.cq, %bb.aa ]
  %.0.i32 = phi ptr [ %3, %rb_method_call_status.exit ], [ %i.c, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 106522, ptr %7, align 8, !tbaa !445
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ct, align 8, !tbaa !238
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %1, ptr %i.cu, align 8, !tbaa !163
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.cs, ptr %i.cv, align 8, !tbaa !173
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.pre-phi, ptr %i.cw, align 8, !tbaa !174
  store ptr %7, ptr %6, align 8, !tbaa !225
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !182
  store ptr %6, ptr %5, align 8, !tbaa !226
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.1.i3555, ptr %i.cy, align 8, !tbaa !233
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 136 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !441
  store i64 0, ptr %i.da, align 8, !tbaa !441
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !228
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %0, ptr %i.dc, align 8, !tbaa !229
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.cr, ptr %i.dd, align 8, !tbaa !230
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, i8 0, i64 12, i1 false)
  %i.df = call fastcc i64 @vm_call0_body(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %5, ptr noundef %.0.i32), !inline_history !461
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ab

rb_method_call_status.exit.thread:                ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.v, %bb.z, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %gccct_method_search.exit
  %i.dg = phi i64 [ %i.ax, %gccct_method_search.exit ], [ 36, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.ay, %bb.z ], [ %i.ay, %bb.v ], [ %i.ay, %bb.s ], [ %i.ay, %bb.r ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ], [ %i.ay, %bb.o ], [ %i.ax, %bb.n ]
  %i.dh = call fastcc i64 @rb_call0(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %i.dg)
  br label %bb.ab

bb.ab:                                            ; preds = %rb_method_call_status.exit.thread, %vm_call0_cc.exit
  %.0 = phi i64 [ %i.df, %vm_call0_cc.exit ], [ %i.dh, %rb_method_call_status.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_funcallv_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq i32 %4, 0
  %i.b = select i1 %.not, i32 1, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
  %i.i = tail call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 5) %i.b, i64 noundef %i.h)
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_apply(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 9 uses
  %i.k = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.k, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
end_hunk_4
begin_hunk_5_@check_match:bb.a
  %.0.in.i = phi ptr [ %i.k, %bb.e ], [ @rb_cNilClass, %bb.g ], [ @rb_cTrueClass, %bb.h ], [ @rb_cFalseClass, %bb.f ], [ @rb_cInteger, %bb.i ], [ %spec.select.i, %bb.j ]
  %.0.i5 = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  %i.o = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.0.i5, i64 noundef 141, ptr noundef null) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %rb_callable_method_entry_with_refinements.exit.thread, label %bb.k

bb.k:                                             ; preds = %rb_class_of.exit
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not7.i.i.i, label %rb_callable_method_entry_with_refinements.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, 15
  switch i8 %i.s, label %rb_callable_method_entry_with_refinements.exit.thread8 [
    i8 7, label %rb_callable_method_entry_with_refinements.exit.thread
    i8 11, label %rb_callable_method_entry_with_refinements.exit
  ], !prof !219

rb_callable_method_entry_with_refinements.exit:   ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.t = call fastcc ptr @method_entry_resolve_refinement(i64 noundef %.0.i5, i64 noundef 141, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.u = load i64, ptr %i.a, align 8, !tbaa !11
  %i.v = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.u, i64 noundef 141, ptr noundef %i.t, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %rb_callable_method_entry_with_refinements.exit.thread, label %rb_callable_method_entry_with_refinements.exit.thread8

rb_callable_method_entry_with_refinements.exit.thread8: ; preds = %bb.l, %rb_callable_method_entry_with_refinements.exit
  %.0.i.i.i11 = phi ptr [ %i.v, %rb_callable_method_entry_with_refinements.exit ], [ %i.o, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 3190810, ptr %7, align 8, !tbaa !442
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 36, ptr %i.w, align 8, !tbaa !185
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.0.i.i.i11, ptr %i.x, align 8, !tbaa !187
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @vm_call_general, ptr %i.y, align 8, !tbaa !234
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %i.z, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 106522, ptr %6, align 8, !tbaa !445
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !238
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 141, ptr %i.ab, align 8, !tbaa !163
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ac, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 1, ptr %i.ad, align 8, !tbaa !174
  store ptr %6, ptr %5, align 8, !tbaa !225
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !182
  store ptr %5, ptr %4, align 8, !tbaa !226
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %7, ptr %i.af, align 8, !tbaa !233
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !441
  store i64 0, ptr %i.ah, align 8, !tbaa !441
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !228
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %1, ptr %i.aj, align 8, !tbaa !229
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.ak, align 8, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, i8 0, i64 12, i1 false)
  %i.am = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %i.b), !inline_history !824
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %rb_vm_call_with_refinements.exit

rb_callable_method_entry_with_refinements.exit.thread: ; preds = %bb.k, %rb_class_of.exit, %bb.l, %rb_callable_method_entry_with_refinements.exit
  %i.an = call fastcc i64 @rb_funcallv_scope(i64 noundef %1, i64 noundef 141, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !825
  br label %rb_vm_call_with_refinements.exit

default.unreachable20:                            ; preds = %bb.a
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.175) #57
  unreachable

rb_vm_call_with_refinements.exit:                 ; preds = %rb_callable_method_entry_with_refinements.exit.thread, %rb_callable_method_entry_with_refinements.exit.thread8, %bb.a
  %.0 = phi i64 [ %1, %bb.a ], [ %i.am, %rb_callable_method_entry_with_refinements.exit.thread8 ], [ %i.an, %rb_callable_method_entry_with_refinements.exit.thread ]
  ret i64 %.0
}

declare i64 @rb_func_lambda_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @refine_sym_proc_call(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  br label %RARRAY_AREF.exit42

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  br label %RARRAY_AREF.exit42

RARRAY_AREF.exit42:                               ; preds = %bb.b, %bb.c
  %.in = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = load i64, ptr %.in, align 8, !tbaa !11
  %i.k = getelementptr i8, ptr %.in, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = tail call i32 @rb_keyword_given_p() #23
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32                      ; 2 uses
  %i.p = add i32 %2, -1                           ; 2 uses
  %i.q = icmp slt i32 %2, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RARRAY_AREF.exit42
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.163) #42
  unreachable

bb.e:                                             ; preds = %RARRAY_AREF.exit42
  %i.s = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.t = load i64, ptr %3, align 8, !tbaa !11     ; 8 uses
  %i.u = tail call i64 @rb_sym2id(i64 noundef %i.j) #23 ; 3 uses
  %i.v = icmp eq i64 %i.t, 0
  %i.w = and i64 %i.t, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = inttoptr i64 %i.t to ptr
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  br label %rb_class_of.exit

bb.g:                                             ; preds = %bb.e
  switch i64 %i.t, label %bb.j [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.h
    i64 20, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %rb_class_of.exit

bb.i:                                             ; preds = %bb.g
  br label %rb_class_of.exit

bb.j:                                             ; preds = %bb.g
  %i.ab = trunc i64 %i.t to i1
  br i1 %i.ab, label %rb_class_of.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = and i64 %i.t, 254
  %i.ad = icmp eq i64 %i.ac, 12
  %spec.select.i = select i1 %i.ad, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.in.i = phi ptr [ %i.aa, %bb.f ], [ @rb_cNilClass, %bb.h ], [ @rb_cTrueClass, %bb.i ], [ @rb_cFalseClass, %bb.g ], [ @rb_cInteger, %bb.j ], [ %spec.select.i, %bb.k ]
  %.055 = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  %.not56 = icmp eq i64 %.055, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %rb_class_of.exit, %RCLASS_EXT_READABLE.exit
  %.057 = phi i64 [ %.0, %RCLASS_EXT_READABLE.exit ], [ %.055, %rb_class_of.exit ] ; 2 uses
  %i.ae = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.057, i64 noundef %i.u, ptr noundef null) ; 5 uses
  %.not.i.i43 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i43, label %rb_callable_method_entry.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ag, null
  br i1 %.not7.i.i, label %rb_callable_method_entry.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = and i8 %i.ah, 15
  %i.aj = icmp eq i8 %i.ai, 7
  br i1 %i.aj, label %rb_callable_method_entry.exit.thread, label %rb_callable_method_entry.exit

rb_callable_method_entry.exit:                    ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ak = getelementptr i8, ptr %i.ae, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !200
  store i64 %i.al, ptr %i.c, align 8, !tbaa !11
  %i.am = call fastcc ptr @resolve_refined_method(i64 noundef %i.l, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.c) ; 4 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %rb_resolve_refined_method_callable.exit.thread, label %bb.n

rb_resolve_refined_method_callable.exit.thread:   ; preds = %rb_callable_method_entry.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %rb_callable_method_entry.exit.thread

bb.n:                                             ; preds = %rb_callable_method_entry.exit
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !198
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %rb_resolve_refined_method_callable.exit, label %rb_resolve_refined_method_callable.exit.thread52

rb_resolve_refined_method_callable.exit.thread52: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.loopexit

rb_resolve_refined_method_callable.exit:          ; preds = %bb.n
  %i.aq = getelementptr i8, ptr %i.ae, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !202
  %i.as = load i64, ptr %i.c, align 8, !tbaa !11
  %i.at = call ptr @rb_method_entry_complement_defined_class(ptr noundef nonnull %i.am, i64 noundef %i.ar, i64 noundef %i.as) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %.not38 = icmp eq ptr %i.at, null
  br i1 %.not38, label %rb_callable_method_entry.exit.thread, label %.loopexit

rb_callable_method_entry.exit.thread:             ; preds = %bb.m, %bb.l, %.lr.ph, %rb_resolve_refined_method_callable.exit.thread, %rb_resolve_refined_method_callable.exit
  %i.au = inttoptr i64 %.057 to ptr               ; 7 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !77
  %i.aw = and i64 %i.av, 65536
  %.not.i.i45 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i45, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %rb_callable_method_entry.exit.thread
  %i.ax = getelementptr i8, ptr %i.au, i64 160    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !192
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.o

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %rb_callable_method_entry.exit.thread
  %i.ba = getelementptr i8, ptr %i.au, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.o:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.bb = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i46 = icmp eq ptr %i.bb, null
  br i1 %.not.i46, label %.split.i, label %bb.p

.split.i:                                         ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %i.au, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %i.bb, i64 128
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !111, !range !114, !noundef !64
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.split7.i, label %bb.s

.split7.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !77
  %i.bh = and i64 %i.bg, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.q

bb.q:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !196
  %i.bk = call i32 @rb_st_lookup(ptr noundef nonnull %i.bi, i64 noundef %i.bj, ptr noundef nonnull %i.b) #23
  %.not5.i.i13.i = icmp eq i32 %i.bk, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.r, %bb.q, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.bm, %bb.r ], [ null, %bb.q ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.bn = getelementptr i8, ptr %i.au, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.bn, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.s:                                             ; preds = %bb.p
  %i.bo = getelementptr i8, ptr %i.au, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.s
  %.0.i47 = phi ptr [ %i.ba, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.bo, %bb.s ], [ %i.bc, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.bp = getelementptr i8, ptr %.0.i47, i64 8
  %.0 = load i64, ptr %i.bp, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !826

.loopexit:                                        ; preds = %RCLASS_EXT_READABLE.exit, %rb_resolve_refined_method_callable.exit, %rb_class_of.exit, %rb_resolve_refined_method_callable.exit.thread52
  %.2 = phi ptr [ %i.am, %rb_resolve_refined_method_callable.exit.thread52 ], [ null, %rb_class_of.exit ], [ null, %RCLASS_EXT_READABLE.exit ], [ %i.at, %rb_resolve_refined_method_callable.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28
  store volatile ptr %i.br, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = icmp eq i64 %4, 4
  br i1 %i.bs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.bt = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 136
  store i64 %4, ptr %i.bt, align 8, !tbaa !441
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  %.not39 = icmp eq ptr %.2, null
  br i1 %.not39, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = call fastcc i64 @method_missing(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.t, i64 noundef %i.u, i32 noundef %i.p, ptr noundef %i.s, i32 noundef 0, i32 noundef %i.o)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bv = call i64 @rb_vm_call0(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.t, i64 noundef %i.u, i32 noundef %i.p, ptr noundef %i.s, ptr noundef nonnull %.2, i32 noundef %i.o)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.031 = phi i64 [ %i.bv, %bb.w ], [ %i.bu, %bb.v ]
  ret i64 %.031
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @method_missing(ptr noundef initializes((145, 146)) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef range(i32 65, 64) %5, i32 noundef %6) unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %7 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %8 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %9 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %10 = alloca %struct.rb_callcache, align 8      ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.e = getelementptr i8, ptr %0, i64 136        ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !441  ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !441
  %i.g = getelementptr i8, ptr %0, i64 145
  %i.h = trunc i32 %5 to i8
  store i8 %i.h, ptr %i.g, align 1
  %i.i = icmp eq i64 %2, 2913
  br i1 %i.i, label %rb_callable_method_entry.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %3, 1                            ; 11 uses
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %i.l = icmp ult i32 %i.j, 128
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !11
  %i.m = shl nuw nsw i64 %i.k, 3
  %i.n = alloca i8, i64 %i.m, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.j, 0
  br i1 %i.o, label %bb.e, label %rb_alloc_tmp_buffer2.exit, !prof !177

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.k, i64 noundef 8) #42
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.d
  %i.p = shl nuw nsw i64 %i.k, 3
  %i.q = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.d, i64 noundef %i.p, i64 noundef range(i64 -2147483648, 2147483648) %i.k) #67
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %rb_alloc_tmp_buffer2.exit
  %i.r = phi ptr [ %i.n, %bb.c ], [ %i.q, %rb_alloc_tmp_buffer2.exit ] ; 9 uses
  %i.s = call i64 @rb_id2sym(i64 noundef %2) #23
  store i64 %i.s, ptr %i.r, align 8, !tbaa !11
  %.not = icmp eq ptr %4, null
  %spec.store.select = select i1 %.not, ptr @method_missing.buf, ptr %4
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = sext i32 %3 to i64                       ; 2 uses
  %i.v = icmp slt i32 %3, 0
  br i1 %i.v, label %bb.g, label %rbimpl_size_mul_or_raise.exit, !prof !177

bb.g:                                             ; preds = %bb.f
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.u) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.f
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.w = shl nuw nsw i64 %i.u, 3
end_hunk_5
begin_hunk_6_@rb_call0:bb.a
  %i.g = phi i1 [ true, %bb.a ], [ true, %.thread100 ], [ false, %bb.b ], [ false, %bb.c ], [ false, %scope_to_ci.exit.fold.split ] ; 2 uses
  %.06097 = phi i32 [ 1, %bb.a ], [ 1, %.thread100 ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %scope_to_ci.exit.fold.split ] ; 4 uses
  %.0.i = phi i64 [ 0, %bb.a ], [ 4, %.thread100 ], [ 4, %bb.b ], [ 8, %bb.c ], [ 0, %scope_to_ci.exit.fold.split ]
  %i.h = sext i32 %3 to i64                       ; 2 uses
  store i64 106522, ptr %10, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !282
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !11
  %i.i = tail call ptr @rb_current_box() #23, !inline_history !474 ; 3 uses
  %i.j = icmp eq i64 %1, 0
  %i.k = and i64 %1, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l                         ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %scope_to_ci.exit
  %i.n = inttoptr i64 %1 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.k, !prof !177

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @uncallable_object(i64 noundef %1, i64 noundef %2) #58, !inline_history !474
  unreachable

bb.f:                                             ; preds = %scope_to_ci.exit
  switch i64 %1, label %bb.i [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.g
    i64 20, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %rb_class_of.exit.i

bb.h:                                             ; preds = %bb.f
  br label %rb_class_of.exit.i

bb.i:                                             ; preds = %bb.f
  %i.q = trunc i64 %1 to i1
  br i1 %i.q, label %rb_class_of.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = and i64 %1, 254
  %i.s = icmp eq i64 %i.r, 12
  %spec.select.i.i = select i1 %i.s, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0.in.i.i = phi ptr [ %spec.select.i.i, %bb.j ], [ @rb_cNilClass, %bb.g ], [ @rb_cTrueClass, %bb.h ], [ @rb_cFalseClass, %bb.f ], [ @rb_cInteger, %bb.i ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %rb_class_of.exit.i, %bb.d
  %.029.i = phi i64 [ %.0.i.i, %rb_class_of.exit.i ], [ %i.p, %bb.d ] ; 5 uses
  %.not33.i = icmp eq ptr %i.i, null
  br i1 %.not33.i, label %rb_ec_vm_ptr.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %i.i, i64 128
  %i.u = load i8, ptr %i.t, align 8, !tbaa !111, !range !114, !noundef !64
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.m, label %rb_ec_vm_ptr.exit.i

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr %i.i, align 8, !tbaa !196
  %i.x = xor i64 %i.w, %.029.i
  br label %rb_ec_vm_ptr.exit.i

rb_ec_vm_ptr.exit.i:                              ; preds = %bb.m, %bb.l, %bb.k
  %.030.i = phi i64 [ %i.x, %bb.m ], [ %.029.i, %bb.l ], [ %.029.i, %bb.k ]
  %i.y = lshr i64 %.030.i, 3
  %i.z = xor i64 %i.y, %2
  %i.aa = urem i64 %i.z, 1023                     ; 2 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.ac, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ad = getelementptr i8, ptr %.val.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 1336
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.aa
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !408 ; 4 uses
  %.not34.i = icmp eq ptr %i.ah, null
  br i1 %.not34.i, label %.critedge.i, label %bb.n, !prof !177

bb.n:                                             ; preds = %rb_ec_vm_ptr.exit.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val37.i = load i64, ptr %i.ai, align 8, !tbaa !185
  %i.aj = icmp eq i64 %.val37.i, %.029.i
  br i1 %i.aj, label %bb.o, label %.critedge.i, !prof !72

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  %.val36.i = load ptr, ptr %i.ak, align 8, !tbaa !187 ; 2 uses
  %i.al = load i64, ptr %.val36.i, align 8, !tbaa !170
  %i.am = and i64 %i.al, 2097152
  %.not35.i = icmp eq i64 %i.am, 0
  br i1 %.not35.i, label %bb.p, label %.critedge.i, !prof !72

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr i8, ptr %.val36.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !202
  %i.ap = icmp eq i64 %i.ao, %2
  br i1 %i.ap, label %gccct_method_search.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.p, %bb.o, %bb.n, %rb_ec_vm_ptr.exit.i
  %i.aq = call fastcc ptr @gccct_method_search_slowpath(ptr noundef nonnull %i.ae, i64 noundef %.029.i, i32 noundef %i.ab, ptr noundef nonnull %10), !inline_history !474
  br label %gccct_method_search.exit

gccct_method_search.exit:                         ; preds = %bb.p, %.critedge.i
  %.1.i = phi ptr [ %i.aq, %.critedge.i ], [ %i.ah, %bb.p ] ; 5 uses
  %.not67 = icmp eq ptr %.1.i, null               ; 2 uses
  br i1 %i.e, label %bb.q, label %bb.ak

bb.q:                                             ; preds = %gccct_method_search.exit
  br i1 %.not67, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %.1.i, i64 16
  %.val70 = load ptr, ptr %i.ar, align 8, !tbaa !187
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.as = phi ptr [ %.val70, %bb.r ], [ null, %bb.q ] ; 4 uses
  br i1 %i.m, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = inttoptr i64 %1 to ptr
  %i.au = getelementptr i8, ptr %i.at, i64 8
  br label %rb_class_of.exit

bb.u:                                             ; preds = %bb.s
  switch i64 %1, label %bb.x [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.v
    i64 20, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  br label %rb_class_of.exit

bb.w:                                             ; preds = %bb.u
  br label %rb_class_of.exit

bb.x:                                             ; preds = %bb.u
  %i.av = trunc i64 %1 to i1
  br i1 %i.av, label %rb_class_of.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = and i64 %1, 254
  %i.ax = icmp eq i64 %i.aw, 12
  %spec.select.i = select i1 %i.ax, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.0.in.i = phi ptr [ %i.au, %bb.t ], [ @rb_cNilClass, %bb.v ], [ @rb_cTrueClass, %bb.w ], [ @rb_cFalseClass, %bb.u ], [ @rb_cInteger, %bb.x ], [ %spec.select.i, %bb.y ]
  %.0.i71 = load i64, ptr %.0.in.i, align 8, !tbaa !11
  %i.ay = icmp eq ptr %i.as, null
  br i1 %i.ay, label %callable_method_entry_refinements0.exit.thread, label %bb.z

bb.z:                                             ; preds = %rb_class_of.exit
  %i.az = getelementptr i8, ptr %i.as, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = and i8 %i.bb, 15
  %.not.i72 = icmp eq i8 %i.bc, 11
  br i1 %.not.i72, label %callable_method_entry_refinements0.exit, label %callable_method_entry_refinements0.exit.thread109.thread, !prof !177

callable_method_entry_refinements0.exit:          ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.bd = call fastcc ptr @method_entry_resolve_refinement(i64 noundef %.0.i71, i64 noundef %2, i32 noundef 1, ptr noundef nonnull %i.d)
  %i.be = load i64, ptr %i.d, align 8, !tbaa !11
  %i.bf = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.be, i64 noundef %2, ptr noundef %i.bd, i32 noundef 1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %.not.i74 = icmp eq ptr %i.bf, null
  br i1 %.not.i74, label %callable_method_entry_refinements0.exit.thread, label %callable_method_entry_refinements0.exit.thread109, !prof !110

callable_method_entry_refinements0.exit.thread109: ; preds = %callable_method_entry_refinements0.exit
  %.phi.trans.insert = getelementptr i8, ptr %i.bf, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83 ; 2 uses
  %.not34.i75 = icmp eq ptr %.pre, null
  br i1 %.not34.i75, label %callable_method_entry_refinements0.exit.thread, label %callable_method_entry_refinements0.exit.thread109.thread, !prof !369

callable_method_entry_refinements0.exit.thread109.thread: ; preds = %bb.z, %callable_method_entry_refinements0.exit.thread109
  %.0.i73112144 = phi ptr [ %i.bf, %callable_method_entry_refinements0.exit.thread109 ], [ %i.as, %bb.z ] ; 4 uses
  %i.bg = phi ptr [ %.pre, %callable_method_entry_refinements0.exit.thread109 ], [ %i.ba, %bb.z ] ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = and i8 %i.bh, 15
  switch i8 %i.bi, label %bb.ad [
    i8 7, label %callable_method_entry_refinements0.exit.thread
    i8 11, label %bb.aa
  ], !prof !477

bb.aa:                                            ; preds = %callable_method_entry_refinements0.exit.thread109.thread
  %i.bj = call ptr @rb_resolve_refined_method_callable(i64 noundef 4, ptr noundef nonnull %.0.i73112144) ; 3 uses
  %.not35.i76 = icmp eq ptr %i.bj, null
  br i1 %.not35.i76, label %callable_method_entry_refinements0.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !83 ; 3 uses
  %.not36.i = icmp eq ptr %i.bl, null
  br i1 %.not36.i, label %callable_method_entry_refinements0.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = and i8 %i.bm, 15
  %i.bo = icmp eq i8 %i.bn, 7
  br i1 %i.bo, label %callable_method_entry_refinements0.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %callable_method_entry_refinements0.exit.thread109.thread
  %i.bp = phi ptr [ %i.bl, %bb.ac ], [ %i.bg, %callable_method_entry_refinements0.exit.thread109.thread ]
  %.028.i = phi ptr [ %i.bj, %bb.ac ], [ %.0.i73112144, %callable_method_entry_refinements0.exit.thread109.thread ] ; 2 uses
  %i.bq = load i64, ptr %.028.i, align 8, !tbaa !170
  %i.br = trunc i64 %i.bq to i32
  %i.bs = lshr i32 %i.br, 16
  %i.bt = and i32 %i.bs, 3                        ; 2 uses
  %.not37.i = icmp eq i32 %i.bt, 1
  br i1 %.not37.i, label %rb_method_call_status.exit, label %bb.ae, !prof !72

bb.ae:                                            ; preds = %bb.ad
  %i.bu = getelementptr i8, ptr %i.bp, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !205
  %i.bw = icmp eq i64 %i.bv, 2913
  br i1 %i.bw, label %rb_method_call_status.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  switch i32 %i.bt, label %rb_method_call_status.exit [
    i32 2, label %callable_method_entry_refinements0.exit.thread
    i32 3, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.bx = getelementptr i8, ptr %.028.i, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !405 ; 5 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = and i64 %i.by, 7
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = or i1 %i.bz, %i.cb
  br i1 %i.cc, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.ag
  %i.cd = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !77
  %i.cf = and i64 %i.ce, 31
  %i.cg = icmp eq i64 %i.cf, 28
  br i1 %i.cg, label %bb.ah, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.ah:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ch = getelementptr i8, ptr %i.cd, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !61
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.ah, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.ag
  %.026.i = phi i64 [ %i.ci, %bb.ah ], [ %i.by, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.by, %bb.ag ]
  %i.cj = icmp eq i64 %6, 36
  br i1 %i.cj, label %callable_method_entry_refinements0.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ck = call i64 @rb_obj_is_kind_of(i64 noundef %6, i64 noundef %.026.i) #23
  %.not38.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not38.not.i, label %callable_method_entry_refinements0.exit.thread, label %rb_method_call_status.exit

callable_method_entry_refinements0.exit.thread:   ; preds = %bb.af, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %bb.ai, %bb.ac, %bb.ab, %bb.aa, %callable_method_entry_refinements0.exit.thread109.thread, %callable_method_entry_refinements0.exit.thread109, %callable_method_entry_refinements0.exit
  %.1.i77.ph = phi i32 [ 0, %callable_method_entry_refinements0.exit ], [ 0, %callable_method_entry_refinements0.exit.thread109 ], [ 0, %callable_method_entry_refinements0.exit.thread109.thread ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 2, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ 1, %bb.af ], [ 2, %bb.ai ], [ 0, %rb_class_of.exit ]
  %i.cl = call fastcc i64 @method_missing(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %.1.i77.ph, i32 noundef %.06097)
  br label %.thread117

rb_method_call_status.exit:                       ; preds = %bb.af, %bb.ad, %bb.ai, %bb.ae
  %.not69 = icmp eq ptr %i.as, %.0.i73112144
  br i1 %.not69, label %rb_method_call_status.exit91.thread, label %bb.aj, !prof !72

bb.aj:                                            ; preds = %rb_method_call_status.exit
  call fastcc void @stack_check(ptr noundef nonnull %0)
  %i.cm = call i64 @rb_vm_call_kw(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %.0.i73112144, i32 noundef %.06097)
  br label %.thread117

bb.ak:                                            ; preds = %gccct_method_search.exit
  br i1 %.not67, label %rb_method_call_status.exit91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr i8, ptr %.1.i, i64 16
  %.val = load ptr, ptr %i.cn, align 8, !tbaa !187 ; 3 uses
  %.not.i79 = icmp eq ptr %.val, null
  br i1 %.not.i79, label %rb_method_call_status.exit91, label %bb.am, !prof !110

bb.am:                                            ; preds = %bb.al
  %i.co = getelementptr i8, ptr %.val, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !83 ; 2 uses
  %.not34.i80 = icmp eq ptr %i.cp, null
  br i1 %.not34.i80, label %rb_method_call_status.exit91, label %bb.an, !prof !177

bb.an:                                            ; preds = %bb.am
  %i.cq = load i8, ptr %i.cp, align 8
  %i.cr = and i8 %i.cq, 15
  switch i8 %i.cr, label %rb_method_call_status.exit91.thread [
    i8 7, label %rb_method_call_status.exit91
    i8 11, label %bb.ao
  ], !prof !477

bb.ao:                                            ; preds = %bb.an
  %i.cs = call ptr @rb_resolve_refined_method_callable(i64 noundef 4, ptr noundef nonnull %.val) ; 2 uses
  %.not35.i81 = icmp eq ptr %i.cs, null
  br i1 %.not35.i81, label %rb_method_call_status.exit91, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83 ; 2 uses
  %.not36.i82 = icmp eq ptr %i.cu, null
  br i1 %.not36.i82, label %rb_method_call_status.exit91, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cv = load i8, ptr %i.cu, align 8
  %i.cw = and i8 %i.cv, 15
  %i.cx = icmp eq i8 %i.cw, 7
  br i1 %i.cx, label %rb_method_call_status.exit91, label %rb_method_call_status.exit91.thread

rb_method_call_status.exit91:                     ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq
  %i.cy = call fastcc i64 @method_missing(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %i.f, i32 noundef %.06097)
  br label %.thread117

rb_method_call_status.exit91.thread:              ; preds = %bb.an, %bb.aq, %rb_method_call_status.exit
  %i.cz = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !63
  %i.db = and i8 %i.da, 2
  %.not.i92 = icmp eq i8 %i.db, 0
  br i1 %.not.i92, label %bb.ar, label %stack_check.exit

bb.ar:                                            ; preds = %rb_method_call_status.exit91.thread
  %i.dc = call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.dc, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dd = load i8, ptr %i.cz, align 8, !tbaa !63
  %i.de = or i8 %i.dd, 2
  store i8 %i.de, ptr %i.cz, align 8, !tbaa !63
  call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %rb_method_call_status.exit91.thread, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.df = select i1 %i.g, i32 64, i32 0           ; 2 uses
  store i32 %i.df, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.dg = getelementptr i8, ptr %.1.i, i64 16
  %.val.i93 = load ptr, ptr %i.dg, align 8, !tbaa !187
  %i.dh = getelementptr i8, ptr %.val.i93, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !83
  %i.dj = load i8, ptr %i.di, align 8
  %i.dk = and i8 %i.dj, 15
  %i.dl = icmp eq i8 %i.dk, 0
  %i.dm = icmp sgt i32 %3, 128
  %i.dn = and i1 %i.dm, %i.dl
  br i1 %i.dn, label %bb.at, label %vm_call0_cc.exit, !prof !177

bb.at:                                            ; preds = %stack_check.exit
  %i.do = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %.06097), !inline_history !461 ; 0 uses
  %.pre124 = load i32, ptr %i.b, align 4, !tbaa !7
  %.pre125 = load i32, ptr %i.a, align 4, !tbaa !7 ; 2 uses
  %.pre126 = sext i32 %.pre125 to i64
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %stack_check.exit, %bb.at
  %.pre-phi = phi i64 [ %i.h, %stack_check.exit ], [ %.pre126, %bb.at ]
  %i.dp = phi i32 [ %3, %stack_check.exit ], [ %.pre125, %bb.at ]
  %i.dq = phi i32 [ %i.df, %stack_check.exit ], [ %.pre124, %bb.at ]
  %.0.i94 = phi ptr [ %4, %stack_check.exit ], [ %i.c, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 106522, ptr %9, align 8, !tbaa !445
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.dr, align 8, !tbaa !238
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %2, ptr %i.ds, align 8, !tbaa !163
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.du = sext i32 %i.dq to i64
  store i64 %i.du, ptr %i.dt, align 8, !tbaa !173
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %.pre-phi, ptr %i.dv, align 8, !tbaa !174
  store ptr %9, ptr %8, align 8, !tbaa !225
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.dw, align 8, !tbaa !182
  store ptr %8, ptr %7, align 8, !tbaa !226
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.1.i, ptr %i.dx, align 8, !tbaa !233
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dz = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !441
  store i64 0, ptr %i.dz, align 8, !tbaa !441
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !228
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %1, ptr %i.eb, align 8, !tbaa !229
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.dp, ptr %i.ec, align 8, !tbaa !230
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ee = zext i1 %i.g to i8
  store i8 %i.ee, ptr %i.ed, align 4, !tbaa !231
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ef, i8 0, i64 11, i1 false)
  %i.eg = call fastcc i64 @vm_call0_body(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %.0.i94), !inline_history !461
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread117

.thread117:                                       ; preds = %bb.aj, %callable_method_entry_refinements0.exit.thread, %vm_call0_cc.exit, %rb_method_call_status.exit91
  %.1 = phi i64 [ %i.eg, %vm_call0_cc.exit ], [ %i.cy, %rb_method_call_status.exit91 ], [ %i.cm, %bb.aj ], [ %i.cl, %callable_method_entry_refinements0.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret i64 %.1
}

declare i32 @rb_ec_stack_check(ptr noundef) local_unnamed_addr #4

declare i64 @rb_rescue2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @check_funcall_exec(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466  ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !468
  %i.f = getelementptr i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !469
  %i.h = getelementptr i8, ptr %i.a, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !471
  %i.j = getelementptr i8, ptr %i.a, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !472
  %i.l = getelementptr i8, ptr %i.a, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !473
  %i.n = getelementptr i8, ptr %i.c, i64 136      ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !441
  store i64 0, ptr %i.n, align 8, !tbaa !441
  %i.p = tail call i64 @rb_vm_call0(ptr noundef %i.c, i64 noundef %i.e, i64 noundef 2913, i32 noundef %i.i, ptr noundef %i.k, ptr noundef %i.g, i32 noundef %i.m), !inline_history !854
  store i64 %i.o, ptr %i.n, align 8, !tbaa !441
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @check_funcall_failed(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 40       ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !855
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !470
  %i.h = tail call fastcc i32 @method_boundp(i64 noundef %i.e, i64 noundef %i.g, i32 noundef 3)
  switch i32 %i.h, label %.critedge10 [
    i32 2, label %.critedge
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.b, align 8
  %i.j = and i8 %i.i, 2
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.critedge10, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.c
  tail call void @rb_exc_raise(i64 noundef %1) #42
  unreachable

.critedge10:                                      ; preds = %bb.b, %bb.c
  ret i64 36
}

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #10

declare i32 @rb_block_given_p() local_unnamed_addr #4

declare i64 @rb_block_proc() local_unnamed_addr #4

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #4

declare void @rb_zjit_invalidate_no_ep_escape(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @eval_make_iseq(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
end_hunk_6
