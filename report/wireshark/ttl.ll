Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ttl?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
begin_hunk_0_@ttl_is_chb_addr:bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.b
  br label %bb.h

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = zext nneg i8 %i.c to i64
  %switch.downshift = lshr i64 1344, %switch.cast
  %switch.masked = trunc i64 %switch.downshift to i1
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.f, %bb.d, %bb.c, %bb.g
  %.0 = phi i1 [ false, %bb.g ], [ %switch.selectcmp, %bb.f ], [ %switch.masked, %switch.lookup ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define range(i32 0, 126) i32 @ttl_get_address_iface_type(i16 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = trunc i16 %0 to i8
  %i.c = and i8 %i.b, 63                          ; 14 uses
  %i.d = and i32 %i.a, 7168
  %i.e = icmp eq i32 %i.d, 0
  %i.f = lshr i32 %i.a, 6
  %i.g = and i32 %i.f, 15                         ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  switch i32 %i.g, label %bb.r [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add nsw i8 %i.c, -1          ; 2 uses
  %i.h = icmp ult i8 %switch.tableidx, 51
  br i1 %i.h, label %switch.lookup, label %bb.r

bb.d:                                             ; preds = %bb.b
  %.off = add nsw i8 %i.c, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.s, label %bb.r

bb.e:                                             ; preds = %bb.b
  %switch.tableidx26 = add nsw i8 %i.c, -1        ; 2 uses
  %i.i = icmp ult i8 %switch.tableidx26, 27
  br i1 %i.i, label %switch.lookup27, label %bb.r

bb.f:                                             ; preds = %bb.b
  %switch.tableidx31 = add nsw i8 %i.c, -1        ; 2 uses
  %i.j = icmp ult i8 %switch.tableidx31, 27
  br i1 %i.j, label %switch.lookup32, label %bb.r

bb.g:                                             ; preds = %bb.b
  %switch.tableidx36 = add nsw i8 %i.c, -1        ; 2 uses
  %i.k = icmp ult i8 %switch.tableidx36, 27
  br i1 %i.k, label %switch.lookup37, label %bb.r

bb.h:                                             ; preds = %bb.b
  %switch.tableidx41 = add nsw i8 %i.c, -2        ; 2 uses
  %i.l = icmp ult i8 %switch.tableidx41, 33
  br i1 %i.l, label %switch.lookup42, label %bb.r

bb.i:                                             ; preds = %bb.b
  %switch.tableidx46 = add nsw i8 %i.c, -1        ; 2 uses
  %i.m = icmp ult i8 %switch.tableidx46, 42
  br i1 %i.m, label %switch.lookup47, label %bb.r

bb.j:                                             ; preds = %bb.b
  %switch19 = icmp samesign ult i8 %i.c, 28
  br i1 %switch19, label %bb.s, label %bb.r

bb.k:                                             ; preds = %bb.a
  switch i32 %i.g, label %bb.r [
    i32 0, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 8, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %switch.tableidx51 = add nsw i8 %i.c, -1        ; 2 uses
  %i.n = icmp ult i8 %switch.tableidx51, 14
  br i1 %i.n, label %switch.lookup52, label %bb.r

bb.m:                                             ; preds = %bb.k
  %switch.tableidx56 = add nsw i8 %i.c, -1        ; 2 uses
  %i.o = icmp ult i8 %switch.tableidx56, 11
  br i1 %i.o, label %switch.lookup57, label %bb.r

bb.n:                                             ; preds = %bb.k
  %.off20 = add nsw i8 %i.c, -3
  %switch21 = icmp ult i8 %.off20, 2
  br i1 %switch21, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.k
  %switch.tableidx61 = add nsw i8 %i.c, -1        ; 2 uses
  %i.p = icmp ult i8 %switch.tableidx61, 8
  br i1 %i.p, label %switch.lookup62, label %bb.r

bb.p:                                             ; preds = %bb.k
  %.off22 = add nsw i8 %i.c, -1
  %switch23 = icmp ult i8 %.off22, 15
  br i1 %switch23, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.k
  %.off24 = add nsw i8 %i.c, -1
  %switch25 = icmp ult i8 %.off24, 24
  br i1 %switch25, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.q, %bb.p, %bb.n, %bb.j, %bb.d, %bb.k, %bb.b
  br label %bb.s

switch.lookup:                                    ; preds = %bb.c
  %i.q = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type, i64 %i.q
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.s

switch.lookup27:                                  ; preds = %bb.e
  %i.r = zext nneg i8 %switch.tableidx26 to i64
  %switch.gep28 = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type.10, i64 %i.r
  %switch.load29 = load i8, ptr %switch.gep28, align 1
  br label %bb.s

switch.lookup32:                                  ; preds = %bb.f
  %i.s = zext nneg i8 %switch.tableidx31 to i64
  %switch.gep33 = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type.10, i64 %i.s
  %switch.load34 = load i8, ptr %switch.gep33, align 1
  br label %bb.s

switch.lookup37:                                  ; preds = %bb.g
  %i.t = zext nneg i8 %switch.tableidx36 to i64
  %switch.gep38 = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type.10, i64 %i.t
  %switch.load39 = load i8, ptr %switch.gep38, align 1
  br label %bb.s

switch.lookup42:                                  ; preds = %bb.h
  %i.u = zext nneg i8 %switch.tableidx41 to i64
  %switch.gep43 = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type.11, i64 %i.u
  %switch.load44 = load i8, ptr %switch.gep43, align 1
  br label %bb.s

switch.lookup47:                                  ; preds = %bb.i
  %i.v = zext nneg i8 %switch.tableidx46 to i64
  %switch.gep48 = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type.12, i64 %i.v
  %switch.load49 = load i8, ptr %switch.gep48, align 1
  br label %bb.s

switch.lookup52:                                  ; preds = %bb.l
  %i.w = zext nneg i8 %switch.tableidx51 to i64
  %switch.gep53 = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type.13, i64 %i.w
  %switch.load54 = load i8, ptr %switch.gep53, align 1
  br label %bb.s

switch.lookup57:                                  ; preds = %bb.m
  %i.x = zext nneg i8 %switch.tableidx56 to i64
  %switch.gep58 = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type.14, i64 %i.x
  %switch.load59 = load i8, ptr %switch.gep58, align 1
  br label %bb.s

switch.lookup62:                                  ; preds = %bb.o
  %i.y = zext nneg i8 %switch.tableidx61 to i64
  %switch.gep63 = getelementptr inbounds nuw i8, ptr @switch.table.ttl_get_address_iface_type.15, i64 %i.y
  %switch.load64 = load i8, ptr %switch.gep63, align 1
  br label %bb.s

bb.s:                                             ; preds = %switch.lookup62, %switch.lookup57, %switch.lookup52, %switch.lookup47, %switch.lookup42, %switch.lookup37, %switch.lookup32, %switch.lookup27, %switch.lookup, %bb.q, %bb.p, %bb.n, %bb.j, %bb.d, %bb.r
  %.0.shrunk = phi i8 [ 0, %bb.r ], [ 125, %bb.p ], [ 107, %bb.q ], [ %switch.load64, %switch.lookup62 ], [ 1, %bb.j ], [ %switch.load54, %switch.lookup52 ], [ %switch.load, %switch.lookup ], [ 1, %bb.d ], [ %switch.load59, %switch.lookup57 ], [ %switch.load29, %switch.lookup27 ], [ 1, %bb.n ], [ %switch.load34, %switch.lookup32 ], [ %switch.load49, %switch.lookup47 ], [ %switch.load39, %switch.lookup37 ], [ %switch.load44, %switch.lookup42 ]
  %.0 = zext i8 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define ptr @ttl_get_cascade_name(i16 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i16 %0, 10
  %i.b = and i16 %i.a, 7
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @ttl_cascade_names, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef nonnull ptr @ttl_get_device_name(i16 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = and i32 %i.a, 7168
  %i.c = icmp eq i32 %i.b, 0
  %i.d = lshr i32 %i.a, 6
  %i.e = and i32 %i.d, 15                         ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %i.e, 8
  br i1 %i.f, label %switch.lookup, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i32 %i.e, 9
  br i1 %i.g, label %switch.lookup3, label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %1 = zext nneg i32 %i.e to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_create_interface, i64 %1
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.d

switch.lookup3:                                   ; preds = %bb.c
  %i.h = zext nneg i32 %i.e to i64
  %switch.gep4 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_create_interface.29, i64 %i.h
  %switch.load5 = load ptr, ptr %switch.gep4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %switch.lookup3, %switch.lookup
  %.0 = phi ptr [ %switch.load5, %switch.lookup3 ], [ %switch.load, %switch.lookup ], [ @.str.8, %bb.c ], [ @.str.8, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define nonnull ptr @ttl_get_function_name(i16 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = trunc i16 %0 to i8
  %i.c = and i8 %i.b, 63                          ; 28 uses
  %i.d = and i32 %i.a, 7168
  %i.e = icmp eq i32 %i.d, 0
  %i.f = lshr i32 %i.a, 6
  %i.g = and i32 %i.f, 15                         ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  switch i32 %i.g, label %bb.r [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i8 %i.c, 52
  br i1 %i.h, label %switch.lookup, label %bb.r

bb.d:                                             ; preds = %bb.b
  %switch.selectcmp = icmp eq i8 %i.c, 4
  %switch.select = select i1 %switch.selectcmp, ptr @.str.13, ptr @.str.8
  %switch.selectcmp18 = icmp eq i8 %i.c, 3
  %switch.select19 = select i1 %switch.selectcmp18, ptr @.str.12, ptr %switch.select
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i8 %i.c, 28
  br i1 %i.i, label %switch.lookup20, label %bb.r

bb.f:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i8 %i.c, 28
  br i1 %i.j, label %switch.lookup23, label %bb.r

bb.g:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i8 %i.c, 28
  br i1 %i.k, label %switch.lookup26, label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i8 %i.c, 39
  br i1 %i.l, label %switch.lookup29, label %bb.r

bb.i:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i8 %i.c, 43
  br i1 %i.m, label %switch.lookup32, label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i8 %i.c, 28
  br i1 %i.n, label %switch.lookup35, label %bb.r

bb.k:                                             ; preds = %bb.a
  switch i32 %i.g, label %bb.r [
    i32 0, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 8, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %i.o = icmp samesign ult i8 %i.c, 23
  br i1 %i.o, label %switch.lookup38, label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.p = icmp samesign ult i8 %i.c, 23
  br i1 %i.p, label %switch.lookup41, label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.q = icmp samesign ult i8 %i.c, 5
  br i1 %i.q, label %switch.lookup44, label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.r = icmp samesign ult i8 %i.c, 13
  br i1 %i.r, label %switch.lookup47, label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.s = icmp samesign ult i8 %i.c, 16
  br i1 %i.s, label %switch.lookup50, label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.t = icmp samesign ult i8 %i.c, 25
  br i1 %i.t, label %switch.lookup53, label %bb.r

switch.lookup:                                    ; preds = %bb.c
  %i.u = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name, i64 %i.u
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.r

switch.lookup20:                                  ; preds = %bb.e
  %i.v = zext nneg i8 %i.c to i64
  %switch.gep21 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.17, i64 %i.v
  %switch.load22 = load ptr, ptr %switch.gep21, align 8
  br label %bb.r

switch.lookup23:                                  ; preds = %bb.f
  %i.w = zext nneg i8 %i.c to i64
  %switch.gep24 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.18, i64 %i.w
  %switch.load25 = load ptr, ptr %switch.gep24, align 8
  br label %bb.r

switch.lookup26:                                  ; preds = %bb.g
  %i.x = zext nneg i8 %i.c to i64
  %switch.gep27 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.19, i64 %i.x
  %switch.load28 = load ptr, ptr %switch.gep27, align 8
  br label %bb.r

switch.lookup29:                                  ; preds = %bb.h
  %i.y = zext nneg i8 %i.c to i64
  %switch.gep30 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.20, i64 %i.y
  %switch.load31 = load ptr, ptr %switch.gep30, align 8
  br label %bb.r

switch.lookup32:                                  ; preds = %bb.i
  %i.z = zext nneg i8 %i.c to i64
  %switch.gep33 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.21, i64 %i.z
  %switch.load34 = load ptr, ptr %switch.gep33, align 8
  br label %bb.r

switch.lookup35:                                  ; preds = %bb.j
  %i.aa = zext nneg i8 %i.c to i64
  %switch.gep36 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.22, i64 %i.aa
  %switch.load37 = load ptr, ptr %switch.gep36, align 8
  br label %bb.r

switch.lookup38:                                  ; preds = %bb.l
  %i.ab = zext nneg i8 %i.c to i64
  %switch.gep39 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.23, i64 %i.ab
  %switch.load40 = load ptr, ptr %switch.gep39, align 8
  br label %bb.r

switch.lookup41:                                  ; preds = %bb.m
  %i.ac = zext nneg i8 %i.c to i64
  %switch.gep42 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.24, i64 %i.ac
  %switch.load43 = load ptr, ptr %switch.gep42, align 8
  br label %bb.r

switch.lookup44:                                  ; preds = %bb.n
  %i.ad = zext nneg i8 %i.c to i64
  %switch.gep45 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.25, i64 %i.ad
  %switch.load46 = load ptr, ptr %switch.gep45, align 8
  br label %bb.r

switch.lookup47:                                  ; preds = %bb.o
  %i.ae = zext nneg i8 %i.c to i64
  %switch.gep48 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.26, i64 %i.ae
  %switch.load49 = load ptr, ptr %switch.gep48, align 8
  br label %bb.r

switch.lookup50:                                  ; preds = %bb.p
  %i.af = zext nneg i8 %i.c to i64
  %switch.gep51 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.27, i64 %i.af
  %switch.load52 = load ptr, ptr %switch.gep51, align 8
  br label %bb.r

switch.lookup53:                                  ; preds = %bb.q
  %i.ag = zext nneg i8 %i.c to i64
  %switch.gep54 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_get_function_name.28, i64 %i.ag
  %switch.load55 = load ptr, ptr %switch.gep54, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.k, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %switch.lookup53, %switch.lookup50, %switch.lookup47, %switch.lookup44, %switch.lookup41, %switch.lookup38, %switch.lookup35, %switch.lookup32, %switch.lookup29, %switch.lookup26, %switch.lookup23, %switch.lookup20, %switch.lookup, %bb.d
  %.0 = phi ptr [ %switch.load34, %switch.lookup32 ], [ %switch.load43, %switch.lookup41 ], [ %switch.load, %switch.lookup ], [ %switch.load40, %switch.lookup38 ], [ %switch.load46, %switch.lookup44 ], [ %switch.load55, %switch.lookup53 ], [ %switch.load37, %switch.lookup35 ], [ %switch.load49, %switch.lookup47 ], [ %switch.load31, %switch.lookup29 ], [ %switch.load25, %switch.lookup23 ], [ %switch.load28, %switch.lookup26 ], [ %switch.load22, %switch.lookup20 ], [ %switch.load52, %switch.lookup50 ], [ %switch.select19, %bb.d ], [ @.str.8, %bb.q ], [ @.str.8, %bb.p ], [ @.str.8, %bb.o ], [ @.str.8, %bb.n ], [ @.str.8, %bb.m ], [ @.str.8, %bb.l ], [ @.str.8, %bb.j ], [ @.str.8, %bb.i ], [ @.str.8, %bb.h ], [ @.str.8, %bb.g ], [ @.str.8, %bb.f ], [ @.str.8, %bb.e ], [ @.str.8, %bb.c ], [ @.str.8, %bb.k ], [ @.str.8, %bb.b ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @ttl_init_masters_from_pref_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @get_persconffile_path(ptr noundef @.str.170, i1 noundef zeroext true, ptr noundef %1) ; 2 uses
  %i.b = tail call fastcc zeroext i1 @ttl_parse_masters_pref_file(ptr noundef %0, ptr noundef %i.a)
  tail call void @g_free(ptr noundef %i.a)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @get_persconffile_path(ptr noundef @.str.170, i1 noundef zeroext false, ptr noundef %1) ; 2 uses
  %i.d = tail call fastcc zeroext i1 @ttl_parse_masters_pref_file(ptr noundef %0, ptr noundef %i.c)
  tail call void @g_free(ptr noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i1 [ true, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.0.in
}

; Function Attrs: null_pointer_is_valid
declare ptr @get_persconffile_path(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@ttl_read_lin_data_entry:bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.r ], [ -1, %bb.i ], [ -1, %bb.f ], [ -1, %bb.p ], [ -1, %bb.n ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @ttl_read_flexray_data_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i16 noundef zeroext range(i16 0, 4080) %4, i16 noundef zeroext range(i16 0, 8192) %5, ptr nofree noundef readonly captures(address_is_null) %6, i16 noundef zeroext %7, i64 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %6, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -21, ptr %1, align 4
  %i.c = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef @.str.206)
  store ptr %i.c, ptr %2, align 8
  br label %ttl_skip_bytes.exit

bb.c:                                             ; preds = %bb.a
  %i.d = zext i16 %7 to i32                       ; 2 uses
  %i.e = and i16 %7, 6
  %or.cond.not = icmp eq i16 %i.e, 0
  br i1 %or.cond.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  switch i32 %i.g, label %bb.j [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %3, align 8
  %i.i = zext nneg i16 %4 to i32
  %i.j = tail call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %i.h, ptr noundef null, i32 noundef %i.i, ptr noundef %1, ptr noundef %2)
  br i1 %i.j, label %ttl_skip_bytes.exit, label %ttl_skip_bytes.exit.thread

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i16 %4, 0
  br i1 %.not.i.i, label %ttl_skip_bytes.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = zext nneg i16 %4 to i32
  %i.l = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ugt i32 %i.n, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 -12, ptr %1, align 4
  %i.r = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef @.str.199)
  br label %ttl_skip_bytes.exit.thread.sink.split

bb.i:                                             ; preds = %bb.g
  store i32 %i.n, ptr %i.l, align 4
  br label %ttl_skip_bytes.exit

bb.j:                                             ; preds = %bb.d
  store i32 -21, ptr %1, align 4
  %i.s = load i32, ptr %i.f, align 8
  %i.t = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.200, i32 noundef %i.s)
  br label %ttl_skip_bytes.exit.thread.sink.split

ttl_skip_bytes.exit.thread.sink.split:            ; preds = %bb.h, %bb.j
  %.sink = phi ptr [ %i.t, %bb.j ], [ %i.r, %bb.h ]
  store ptr %.sink, ptr %2, align 8
  br label %ttl_skip_bytes.exit.thread

ttl_skip_bytes.exit.thread:                       ; preds = %ttl_skip_bytes.exit.thread.sink.split, %bb.e
  br label %ttl_skip_bytes.exit

bb.k:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %6, i64 4
  %i.w = load i8, ptr %i.v, align 4, !range !17, !noundef !18
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 -127, ptr %i.a, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = and i32 %i.d, 992
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = and i32 %i.d, 96
  %.not.not = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.not, i8 0, i8 2
  %i.ab = trunc i16 %7 to i8
  %i.ac = lshr i8 %i.ab, 5
  %i.ad = and i8 %i.ac, 4
  %i.ae = or disjoint i8 %i.aa, %i.ad
  %i.af = lshr i16 %7, 4
  %i.ag = trunc i16 %i.af to i8
  %i.ah = and i8 %i.ag, 16
  %spec.select = or disjoint i8 %i.ae, %i.ah
  %i.ai = lshr i16 %7, 6
  %i.aj = trunc i16 %i.ai to i8
  %i.ak = and i8 %i.aj, 8
  %spec.select41 = or disjoint i8 %spec.select, %i.ak
  store i8 %spec.select41, ptr %i.u, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.al = getelementptr i8, ptr %0, i64 264       ; 3 uses
  call void @ws_buffer_append(ptr noundef %i.al, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not36 = icmp eq i16 %4, 0
  br i1 %.not36, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = zext nneg i16 %4 to i64                 ; 2 uses
  call void @ws_buffer_assure_space(ptr noundef %i.al, i64 noundef %i.am)
  %.val.i = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %.val9.i = load i64, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val.i, i64 %.val9.i
  %i.ap = call fastcc zeroext i1 @ttl_read_bytes(ptr noundef %3, ptr noundef %i.ao, i16 noundef zeroext range(i16 0, 4080) %4, ptr noundef %1, ptr noundef %2)
  br i1 %i.ap, label %ttl_read_bytes_buffer.exit.thread, label %ttl_skip_bytes.exit

ttl_read_bytes_buffer.exit.thread:                ; preds = %bb.p
  %i.aq = load i64, ptr %i.an, align 8
  %i.ar = add i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.an, align 8
  br label %bb.q

bb.q:                                             ; preds = %ttl_read_bytes_buffer.exit.thread, %bb.o
  %i.as = load i32, ptr %6, align 4
  %i.at = getelementptr i8, ptr %6, i64 8
  %i.au = load i32, ptr %i.at, align 4
  %narrow = add nuw nsw i16 %4, 2
  %i.av = zext nneg i16 %narrow to i32            ; 2 uses
  call void @wtap_setup_packet_rec(ptr noundef %0, i32 noundef %i.as)
  %i.aw = call ptr @wtap_block_create(i32 noundef 5) ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 216       ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %0, i64 4
  store i32 7, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %0, i64 32
  store i32 6, ptr %i.az, align 8
  %i.ba = udiv i64 %8, 1000000
  %i.bb = getelementptr i8, ptr %0, i64 16
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = urem i64 %8, 1000000
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 1000
  %i.bf = getelementptr i8, ptr %0, i64 24
  store i32 %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %0, i64 48
  store i32 %i.av, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %0, i64 52
  store i32 %i.av, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %0, i64 60
  store i32 %i.au, ptr %i.bi, align 4
  %i.bj = zext nneg i16 %5 to i32
  %i.bk = call i32 @wtap_block_add_uint32_option(ptr noundef %i.aw, i32 noundef 6, i32 noundef %i.bj) ; 0 uses
  %.val = load ptr, ptr %i.ax, align 8
  %i.bl = call i32 @wtap_block_add_uint32_option(ptr noundef %.val, i32 noundef 2, i32 noundef 1) ; 0 uses
  br label %ttl_skip_bytes.exit

ttl_skip_bytes.exit:                              ; preds = %bb.p, %ttl_skip_bytes.exit.thread, %bb.i, %bb.f, %bb.e, %bb.q, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.q ], [ 1, %bb.e ], [ -1, %ttl_skip_bytes.exit.thread ], [ 1, %bb.i ], [ 1, %bb.f ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ttl_create_interface(ptr noundef nonnull %0, i32 noundef range(i32 1, 126) %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wtap_block_create(i32 noundef 1) ; 5 uses
  %i.b = tail call ptr @wtap_block_get_mandatory_data(ptr noundef %i.a) ; 7 uses
  store i32 %1, ptr %i.b, align 8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #12
  %i.d = tail call i32 @wtap_block_add_string_option(ptr noundef %i.a, i32 noundef 2, ptr noundef nonnull %3, i64 noundef %i.c) ; 0 uses
  br label %ttl_add_interface_name.exit

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i16 %2, 10
  %i.f = and i16 %i.e, 7
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr @ttl_cascade_names, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i16 %2 to i32                       ; 2 uses
  %i.k = and i32 %i.j, 7168
  %i.l = icmp eq i32 %i.k, 0
  %i.m = lshr i32 %i.j, 6
  %i.n = and i32 %i.m, 15                         ; 4 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i32 %i.n, 8
  br i1 %i.o, label %switch.lookup, label %ttl_get_device_name.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = icmp samesign ult i32 %i.n, 9
  br i1 %i.p, label %switch.lookup1, label %ttl_get_device_name.exit.i

switch.lookup:                                    ; preds = %bb.d
  %4 = zext nneg i32 %i.n to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_create_interface, i64 %4
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %ttl_get_device_name.exit.i

switch.lookup1:                                   ; preds = %bb.e
  %i.q = zext nneg i32 %i.n to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_create_interface.29, i64 %i.q
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  br label %ttl_get_device_name.exit.i

ttl_get_device_name.exit.i:                       ; preds = %bb.d, %bb.e, %switch.lookup1, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load3, %switch.lookup1 ], [ %switch.load, %switch.lookup ], [ @.str.8, %bb.e ], [ @.str.8, %bb.d ]
  %i.r = tail call ptr @ttl_get_function_name(i16 noundef zeroext %2)
  %i.s = tail call i32 (ptr, i32, ptr, ...) @wtap_block_add_string_option_format(ptr noundef %i.a, i32 noundef 2, ptr noundef @.str.202, ptr noundef %i.i, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.r) ; 0 uses
  br label %ttl_add_interface_name.exit

ttl_add_interface_name.exit:                      ; preds = %bb.b, %ttl_get_device_name.exit.i
  %i.t = getelementptr i8, ptr %i.b, i64 8
  store i64 1000000, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.b, i64 16
  store i32 6, ptr %i.u, align 8
  %i.v = tail call i32 @wtap_block_add_uint8_option(ptr noundef %i.a, i32 noundef 9, i8 noundef zeroext 6) ; 0 uses
  %i.w = getelementptr i8, ptr %i.b, i64 20
  store i32 262144, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.b, i64 24
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.b, i64 32
  store ptr null, ptr %i.y, align 8
  tail call void @wtap_add_idb(ptr noundef nonnull %0, ptr noundef %i.a)
  %i.z = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -2
  %i.ac = load i32, ptr %i.b, align 8             ; 2 uses
  br i1 %i.ab, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %ttl_add_interface_name.exit
  %.not = icmp eq i32 %i.aa, %i.ac
  br i1 %.not, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %ttl_add_interface_name.exit
  %.sink = phi i32 [ %i.ac, %ttl_add_interface_name.exit ], [ -1, %bb.f ]
  store i32 %.sink, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_get_mandatory_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint8_option(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_idb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_string_option(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_string_option_format(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_assure_space(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint32_option(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_append(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{null}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"branch_weights", !"expected", i32 2147450111, i32 33537}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i8 0, i8 2}
!18 = !{}
end_hunk_1
