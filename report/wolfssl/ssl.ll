Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 160
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wolfSSL_CTX_use_certificate_buffer:bb.a
  br i1 %.not, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  %i.a = tail call i32 @ProcessBuffer(ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr nonnull poison)
  br label %bb.b

.split7:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2
  %.not8 = icmp eq i16 %i.d, 0
  %i.e = zext i1 %.not8 to i32
  %i.f = tail call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %i.e, ptr nonnull poison)
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split7
  %phi.call = phi i32 [ %i.a, %.split ], [ %i.f, %.split7 ]
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_use_PrivateKey_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  %i.b = call i32 @ProcessBuffer(ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1, ptr nonnull poison)
  br label %bb.b

.split7:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.d = load i16, ptr %i.c, align 1
  %i.e = and i16 %i.d, 2
  %.not8 = icmp eq i16 %i.e, 0
  %i.f = zext i1 %.not8 to i32
  %i.g = call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.f, ptr nonnull poison)
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split7
  %phi.call = phi i32 [ %i.b, %.split ], [ %i.g, %.split7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_use_certificate_chain_buffer_format(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %.split6

.split:                                           ; preds = %bb.a
  %i.a = tail call i32 @ProcessBuffer(ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 1, ptr nonnull poison)
  br label %bb.b

.split6:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2
  %.not7 = icmp eq i16 %i.d, 0
  %i.e = zext i1 %.not7 to i32
  %i.f = tail call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef %i.e, ptr nonnull poison)
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split6
  %phi.call = phi i32 [ %i.a, %.split ], [ %i.f, %.split6 ]
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_use_certificate_chain_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.split.i, label %.split6.i

.split.i:                                         ; preds = %bb.a
  %i.a = tail call i32 @ProcessBuffer(ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 1, ptr nonnull poison)
  br label %wolfSSL_CTX_use_certificate_chain_buffer_format.exit

.split6.i:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2
  %.not7.i = icmp eq i16 %i.d, 0
  %i.e = zext i1 %.not7.i to i32
  %i.f = tail call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef %i.e, ptr nonnull poison)
  br label %wolfSSL_CTX_use_certificate_chain_buffer_format.exit

wolfSSL_CTX_use_certificate_chain_buffer_format.exit: ; preds = %.split.i, %.split6.i
  %phi.call.i = phi i32 [ %i.a, %.split.i ], [ %i.f, %.split6.i ]
  ret i32 %phi.call.i
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_use_certificate_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 16, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load i64, ptr %i.c, align 16
  %i.e = and i64 %i.d, 128
  %.not = icmp eq i64 %i.e, 0
  %i.f = zext i1 %.not to i32
  %i.g = tail call i32 @ProcessBuffer(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %i.f, ptr nonnull poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_use_PrivateKey_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load i64, ptr %i.d, align 16
  %i.f = and i64 %i.e, 128
  %.not = icmp eq i64 %i.f, 0
  %i.g = zext i1 %.not to i32
  %i.h = call i32 @ProcessBuffer(ptr noundef %i.c, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.g, ptr nonnull poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ -173, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_use_certificate_chain_buffer_format(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 16, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load i64, ptr %i.c, align 16
  %i.e = and i64 %i.d, 128
  %.not = icmp eq i64 %i.e, 0
  %i.f = zext i1 %.not to i32
  %i.g = tail call i32 @ProcessBuffer(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null, i32 noundef 1, i32 noundef %i.f, ptr nonnull poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_use_certificate_chain_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wolfSSL_use_certificate_chain_buffer_format.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 16, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load i64, ptr %i.c, align 16
  %i.e = and i64 %i.d, 128
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = zext i1 %.not.i to i32
  %i.g = tail call i32 @ProcessBuffer(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null, i32 noundef 1, i32 noundef %i.f, ptr nonnull poison)
  br label %wolfSSL_use_certificate_chain_buffer_format.exit

wolfSSL_use_certificate_chain_buffer_format.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -401, 2) i32 @wolfSSL_SetTmpDH(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %i.d = and i1 %i.b, %i.c
  %or.cond3.not = and i1 %i.a, %i.d
  br i1 %or.cond3.not, label %bb.b, label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = tail call ptr @wolfSSL_Malloc(i64 noundef %i.e) #23 ; 4 uses
  %i.g = sext i32 %4 to i64                       ; 2 uses
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef %i.g) #23 ; 4 uses
  %i.i = icmp ne ptr %i.f, null                   ; 2 uses
  %i.j = icmp ne ptr %i.h, null                   ; 2 uses
  %or.cond5.not = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond5.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %3, i64 %i.g, i1 false)
  %i.k = tail call fastcc i32 @wolfssl_set_tmp_dh(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef %2, ptr noundef nonnull %i.h, i32 noundef %4) ; 2 uses
  %.not71 = icmp eq i32 %i.k, 1
  br i1 %.not71, label %.thread65, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.27983 = phi i32 [ -125, %bb.d ], [ %i.k, %bb.c ]
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.f) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.27982 = phi i32 [ %.27983, %bb.e ], [ -125, %bb.d ] ; 2 uses
  br i1 %i.j, label %bb.g, label %.thread65

bb.g:                                             ; preds = %bb.f
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.h) #23
  br label %.thread65

.thread65:                                        ; preds = %bb.a, %bb.f, %bb.g, %bb.c
  %.256 = phi i32 [ 1, %bb.c ], [ %.27982, %bb.f ], [ %.27982, %bb.g ], [ 0, %bb.a ]
  ret i32 %.256
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -401, 2) i32 @wolfssl_set_tmp_dh(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 65535                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load i16, ptr %i.b, align 8, !tbaa !125
  %i.d = zext i16 %i.c to i32
  %i.e = icmp samesign ult i32 %i.a, %i.d
  br i1 %i.e, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1074
  %i.g = load i16, ptr %i.f, align 2, !tbaa !127
  %i.h = zext i16 %i.g to i32
  %i.i = icmp samesign ugt i32 %i.a, %i.h
  br i1 %i.i, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 48
  %i.m = icmp eq i64 %i.l, 16
  br i1 %i.m, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %i.k, -6755399441055745
  %i.o = or disjoint i64 %i.n, 2251799813685248
  store i64 %i.o, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 507 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !246
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !247 ; 2 uses
  %.not43 = icmp eq ptr %i.s, null
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.s) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !248 ; 2 uses
  %.not44 = icmp eq ptr %i.u, null
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.u) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store ptr %1, ptr %i.v, align 16, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %3, ptr %i.w, align 16, !tbaa !248
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 %2, ptr %i.x, align 8, !tbaa !249
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %4, ptr %i.y, align 8, !tbaa !250
  store i8 1, ptr %i.p, align 1, !tbaa !246
  %i.z = load i64, ptr %i.j, align 16
  %i.aa = or i64 %i.z, 33554432
  store i64 %i.aa, ptr %i.j, align 16
  %i.ab = tail call i32 @AllocateSuites(ptr noundef nonnull %0) #23
  %.not45 = icmp eq i32 %i.ab, 0
  br i1 %.not45, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.v, align 16, !tbaa !247
  store ptr null, ptr %i.w, align 16, !tbaa !248
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !154
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !153
  %i.ah = load i64, ptr %i.j, align 16            ; 6 uses
  %i.ai = lshr i64 %i.ah, 25
  %i.aj = trunc i64 %i.ai to i16
  %i.ak = and i16 %i.aj, 1
  %i.al = lshr i64 %i.ah, 26
  %i.am = trunc i64 %i.al to i16
  %i.an = and i16 %i.am, 1
  %i.ao = lshr i64 %i.ah, 24
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = and i16 %i.ap, 1
  %i.ar = lshr i64 %i.ah, 27
  %i.as = trunc i64 %i.ar to i16
  %i.at = and i16 %i.as, 1
  %i.au = lshr i64 %i.ah, 43
  %i.av = trunc i64 %i.au to i16
  %i.aw = and i16 %i.av, 1
  %i.ax = trunc i64 %i.ah to i32
  %i.ay = lshr i32 %i.ax, 4
  %i.az = and i32 %i.ay, 3
  %i.ba = load i16, ptr %i.ae, align 2
  tail call void @InitSuites(ptr noundef %i.ad, i16 %i.ba, i32 noundef %i.ag, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.ak, i16 noundef zeroext %i.an, i16 noundef zeroext %i.aq, i16 noundef zeroext 1, i16 noundef zeroext %i.at, i16 noundef zeroext %i.aw, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.az) #23
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %bb.b, %bb.a, %bb.j, %.critedge
  %.250 = phi i32 [ 1, %.critedge ], [ 0, %bb.j ], [ -401, %bb.a ], [ -401, %bb.b ], [ -344, %bb.c ]
  ret i32 %.250
}

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @wolfSSL_CTX_SetTmpDH(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %i.d = and i1 %i.b, %i.c
  %or.cond3.not = and i1 %i.a, %i.d
  br i1 %or.cond3.not, label %bb.b, label %.thread74

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = tail call ptr @wolfSSL_Malloc(i64 noundef %i.e) #23 ; 5 uses
  %i.g = sext i32 %4 to i64                       ; 2 uses
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef %i.g) #23 ; 5 uses
  %i.i = icmp eq ptr %i.f, null
  %i.j = icmp eq ptr %i.h, null
  %or.cond5 = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond5, label %.thread51, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %3, i64 %i.g, i1 false)
  %i.k = tail call fastcc i32 @wolfssl_ctx_set_tmp_dh(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef %2, ptr noundef nonnull %i.h, i32 noundef %4)
  br label %.thread51

.thread51:                                        ; preds = %bb.b, %.thread
  %.2 = phi i32 [ %i.k, %.thread ], [ -125, %bb.b ] ; 4 uses
  %i.l = icmp ne i32 %.2, 1
  %or.cond7 = and i1 %i.a, %i.l
  br i1 %or.cond7, label %bb.c, label %.thread74

bb.c:                                             ; preds = %.thread51
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.f) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %.thread74, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.h) #23
  br label %.thread74

.thread74:                                        ; preds = %bb.a, %bb.e, %bb.f, %.thread51
  %.265 = phi i32 [ %.2, %.thread51 ], [ %.2, %bb.e ], [ %.2, %bb.f ], [ -173, %bb.a ]
  ret i32 %.265
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 0) i32 @wolfssl_ctx_set_tmp_dh(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.WC_RNG, align 8             ; 5 uses
  %6 = alloca [1 x %struct.DhKey], align 16       ; 5 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not39 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3.not = and i1 %or.cond.not39, %i.c
  br i1 %or.cond3.not, label %bb.b, label %.thread44

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %2, 65535                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 174
  %i.f = load i16, ptr %i.e, align 2, !tbaa !124
  %i.g = zext i16 %i.f to i32
  %i.h = icmp samesign ult i32 %i.d, %i.g
  br i1 %i.h, label %.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load i16, ptr %i.i, align 8, !tbaa !126
  %i.k = zext i16 %i.j to i32
  %i.l = icmp samesign ugt i32 %i.d, %i.k
  br i1 %i.l, label %.thread44, label %.thread

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.m = call i32 @wc_InitRng(ptr noundef nonnull %5) #23 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.thread
end_hunk_0
