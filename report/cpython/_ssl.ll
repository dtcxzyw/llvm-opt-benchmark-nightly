inline.NumInlined: 471
inline.NumDeleted: 148
begin_hunk_0_@_get_aia_uri:bb.a
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %Py_XDECREF.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %select.unfold, %.split31, %bb.a, %bb.c
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.o ], [ @_Py_NoneStruct, %bb.c ], [ null, %bb.k ], [ @_Py_NoneStruct, %bb.a ], [ null, %.split31 ], [ null, %select.unfold ], [ null, %bb.j ], [ @_Py_NoneStruct, %bb.m ], [ @_Py_NoneStruct, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.q ], [ %i.al, %bb.r ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_get_crl_dp(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_get_ext_d2i(ptr noundef %0, i32 noundef 103, ptr noundef null, ptr noundef null) #10 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyList_New(i64 noundef 0) #10 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_XDECREF.exit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #10
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader, %.loopexit
  %.03152 = phi i32 [ %i.ae, %.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.03152) #10
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph53
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 3 uses
  %i.l = tail call i32 @OPENSSL_sk_num(ptr noundef %i.k) #10
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.03251 = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.n = tail call ptr @OPENSSL_sk_value(ptr noundef %i.k, i32 noundef %.03251) #10 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59
  %.not = icmp eq i32 %i.o, 6
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = tail call ptr @ASN1_STRING_get0_data(ptr noundef %i.q) #10
  %i.s = tail call i32 @ASN1_STRING_length(ptr noundef %i.q) #10
  %i.t = sext i32 %i.s to i64
  %i.u = tail call ptr @PyUnicode_FromStringAndSize(ptr noundef %i.r, i64 noundef %i.t) #10 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread45, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @PyList_Append(ptr noundef nonnull %i.c, ptr noundef nonnull %i.u) #10
  %i.x = load i32, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.u, align 8, !tbaa !30
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = icmp slt i32 %i.w, 0
  br i1 %i.aa, label %.thread45, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %Py_DECREF.exit
  %i.ab = add nuw nsw i32 %.03251, 1              ; 2 uses
  %i.ac = tail call i32 @OPENSSL_sk_num(ptr noundef %i.k) #10
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %bb.h, %bb.c, %.lr.ph53
  %i.ae = add nuw nsw i32 %.03152, 1              ; 2 uses
  %i.af = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #10
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph53, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.ah = getelementptr i8, ptr %i.c, i64 16
  %.val = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.ai = icmp sgt i64 %.val, 0
  br i1 %i.ai, label %bb.i, label %.thread45

bb.i:                                             ; preds = %._crit_edge
  %i.aj = tail call ptr @PyList_AsTuple(ptr noundef nonnull %i.c) #10
  br label %.thread45

.thread45:                                        ; preds = %bb.d, %Py_DECREF.exit, %._crit_edge, %bb.i
  %.03347 = phi ptr [ %i.aj, %bb.i ], [ @_Py_NoneStruct, %._crit_edge ], [ null, %Py_DECREF.exit ], [ null, %bb.d ] ; 3 uses
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i, label %bb.j, label %Py_XDECREF.exit

bb.j:                                             ; preds = %.thread45
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.c, align 8, !tbaa !30
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %.thread45, %bb.j, %bb.k
  %.03348 = phi ptr [ null, %bb.b ], [ %.03347, %.thread45 ], [ %.03347, %bb.j ], [ %.03347, %bb.k ]
  tail call void @CRL_DIST_POINTS_free(ptr noundef nonnull %i.a) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Py_XDECREF.exit
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.a ], [ %.03348, %Py_XDECREF.exit ]
  ret ptr %.0
}

declare i32 @X509_NAME_entry_count(ptr noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare ptr @X509_NAME_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @X509_NAME_ENTRY_set(ptr noundef) local_unnamed_addr #1

declare ptr @PyList_AsTuple(ptr noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @X509_NAME_ENTRY_get_object(ptr noundef) local_unnamed_addr #1

declare ptr @X509_NAME_ENTRY_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_asn1obj2py(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef %1, i32 noundef %2) #10 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @ERR_peek_last_error() #10      ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %sext.i = shl i64 %i.d, 32
  %i.h = ashr exact i64 %sext.i, 32
  call fastcc void @fill_and_set_sslerror(ptr noundef readonly %0, ptr noundef null, ptr noundef %i.g, i32 noundef %i.e, ptr noundef null, i32 noundef 1119, i64 noundef %i.h)
  call void @ERR_clear_error() #10
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %i.b, 255
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @OBJ_obj2txt(ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2) #10
  %i.k = add i32 %i.j, 1                          ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = call ptr @PyMem_Malloc(i64 noundef %i.l) #10 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = call ptr @PyErr_NoMemory() #10           ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.p = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.m, i32 noundef %i.k, ptr noundef %1, i32 noundef %2) #10 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = call i64 @ERR_peek_last_error() #10      ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %sext.i30 = shl i64 %i.r, 32
  %i.v = ashr exact i64 %sext.i30, 32
  call fastcc void @fill_and_set_sslerror(ptr noundef readonly %0, ptr noundef null, ptr noundef %i.u, i32 noundef %i.s, ptr noundef null, i32 noundef 1134, i64 noundef %i.v)
  call void @ERR_clear_error() #10
  br label %_Py_NewRef.exit

bb.h:                                             ; preds = %bb.f, %bb.c
  %.025 = phi ptr [ %i.m, %bb.f ], [ %i.a, %bb.c ] ; 4 uses
  %.024 = phi i32 [ %i.p, %bb.f ], [ %i.b, %bb.c ] ; 2 uses
  %i.w = icmp eq i32 %.024, 0
  %3 = trunc nuw i32 %2 to i1
  %or.cond = and i1 %i.w, %3
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !30 ; 2 uses
  %i.y = icmp ugt i32 %i.x, -1073741825
  br i1 %i.y, label %_Py_NewRef.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nuw i32 %i.x, 1
  store i32 %i.z, ptr @_Py_NoneStruct, align 8, !tbaa !30
  br label %_Py_NewRef.exit

bb.k:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %.024 to i64
  %i.ab = call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %.025, i64 noundef %i.aa) #10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.j, %bb.i, %bb.k, %bb.g
  %.1 = phi ptr [ %i.m, %bb.g ], [ %.025, %bb.k ], [ %.025, %bb.i ], [ %.025, %bb.j ] ; 2 uses
  %.0 = phi ptr [ null, %bb.g ], [ %i.ab, %bb.k ], [ @_Py_NoneStruct, %bb.i ], [ @_Py_NoneStruct, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %i.a, %.1
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_Py_NewRef.exit
  call void @PyMem_Free(ptr noundef nonnull %.1) #10
  br label %bb.m

bb.m:                                             ; preds = %_Py_NewRef.exit, %bb.l, %bb.e, %bb.b
  %.026 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %.0, %bb.l ], [ %.0, %_Py_NewRef.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.026
}

declare i32 @ASN1_STRING_type(ptr noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(ptr noundef) local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

declare ptr @ASN1_STRING_get0_data(ptr noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_to_UTF8(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare i64 @ERR_peek_last_error() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_and_set_sslerror(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef range(i32 105, 5904) %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %6, 2147483648
  %.not.i131 = icmp eq i64 %i.a, 0                ; 2 uses
  %i.b = trunc i64 %6 to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 23
  %.0.i = select i1 %.not.i131, i32 %i.c, i32 2   ; 2 uses
  %.0.v.i = select i1 %.not.i131, i32 8388607, i32 2147483647
  %.0.i133 = and i32 %.0.v.i, %i.b
  %i.d = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.27, i32 noundef %.0.i, i32 noundef %.0.i133) #10 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_XDECREF.exit143, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = tail call ptr @PyDict_GetItemWithError(ptr noundef %i.g, ptr noundef nonnull %i.d) #10 ; 3 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %.not.i127 = icmp sgt i32 %i.i, -1
  br i1 %.not.i127, label %bb.d, label %Py_DECREF.exit128

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.d, align 8, !tbaa !30
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit128

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %Py_DECREF.exit128

Py_DECREF.exit128:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.l = icmp eq ptr %i.h, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Py_DECREF.exit128
  %i.m = tail call ptr @PyErr_Occurred() #10
  %.not110 = icmp eq ptr %i.m, null
  br i1 %.not110, label %bb.g, label %Py_XDECREF.exit143

bb.g:                                             ; preds = %bb.f, %Py_DECREF.exit128
  %i.n = zext nneg i32 %.0.i to i64
  %i.o = tail call ptr @PyLong_FromLong(i64 noundef %i.n) #10 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_XDECREF.exit143, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = tail call ptr @PyDict_GetItemWithError(ptr noundef %i.r, ptr noundef nonnull %i.o) #10 ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %.not.i125 = icmp sgt i32 %i.t, -1
  br i1 %.not.i125, label %bb.i, label %Py_DECREF.exit126

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.o, align 8, !tbaa !30
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit126

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #10
  br label %Py_DECREF.exit126

Py_DECREF.exit126:                                ; preds = %bb.h, %bb.i, %bb.j
  %i.w = icmp eq ptr %i.s, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit126
  %i.x = tail call ptr @PyErr_Occurred() #10
  %.not111 = icmp eq ptr %i.x, null
  br i1 %.not111, label %bb.l, label %Py_XDECREF.exit143

bb.l:                                             ; preds = %bb.k, %Py_DECREF.exit126
  %i.y = icmp eq ptr %4, null
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @ERR_reason_error_string(i64 noundef %6) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.a
  %.190 = phi ptr [ null, %bb.a ], [ %i.s, %bb.m ], [ %i.s, %bb.l ] ; 3 uses
  %.187 = phi ptr [ null, %bb.a ], [ %i.h, %bb.m ], [ %i.h, %bb.l ] ; 4 uses
  %.2 = phi ptr [ %4, %bb.a ], [ %i.z, %bb.m ], [ %4, %bb.l ] ; 2 uses
  %.not112 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not112, label %_Py_NewRef.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = icmp eq ptr %2, %i.ab
  br i1 %i.ac, label %bb.p, label %_Py_NewRef.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  %i.af = tail call i64 @SSL_get_verify_result(ptr noundef %i.ae) #10 ; 3 uses
  %i.ag = tail call ptr @PyLong_FromLong(i64 noundef %i.af) #10 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %Py_XDECREF.exit143, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i64 %i.af, label %bb.t [
    i64 62, label %bb.r
    i64 64, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr i8, ptr %1, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77
  %i.ak = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.28, ptr noundef %i.aj) #10
  br label %_Py_NewRef.exit

bb.s:                                             ; preds = %bb.q
  %i.al = getelementptr i8, ptr %1, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !77
  %i.an = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.29, ptr noundef %i.am) #10
  br label %_Py_NewRef.exit

bb.t:                                             ; preds = %bb.q
  %i.ao = tail call ptr @X509_verify_cert_error_string(i64 noundef %i.af) #10 ; 2 uses
  %.not113 = icmp eq ptr %i.ao, null
  br i1 %.not113, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.ao) #10
  br label %_Py_NewRef.exit

bb.v:                                             ; preds = %bb.t
  %i.aq = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !30 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %_Py_NewRef.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr @_Py_NoneStruct, align 8, !tbaa !30
  br label %_Py_NewRef.exit.thread
end_hunk_0
