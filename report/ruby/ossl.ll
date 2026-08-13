inline.NumInlined: 59
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ossl_x509_sk2ary:bb.a
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #16 ; 2 uses
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.09) #16
  %i.f = tail call i64 @ossl_x509_new(ptr noundef %i.e) #16
  %i.g = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %i.f) #16 ; 0 uses
  %i.h = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i64 %i.c
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ossl_x509_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ossl_x509crl_sk2ary(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #16 ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #16 ; 2 uses
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.09) #16
  %i.f = tail call i64 @ossl_x509crl_new(ptr noundef %i.e) #16
  %i.g = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %i.f) #16 ; 0 uses
  %i.h = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i64 %i.c
}

declare i64 @ossl_x509crl_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ossl_x509name_sk2ary(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #16 ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #16 ; 2 uses
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.09) #16
  %i.f = tail call i64 @ossl_x509name_new(ptr noundef %i.e) #16
  %i.g = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %i.f) #16 ; 0 uses
  %i.h = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i64 %i.c
}

declare i64 @ossl_x509name_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ossl_str_new(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i64 @rb_protect(ptr noundef nonnull @ossl_str_new_i, i64 noundef %1, ptr noundef nonnull %i.a) #16 ; 3 uses
  %.not = icmp eq ptr %2, null
  %.pr = load i32, ptr %i.a, align 4, !tbaa !6    ; 3 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq i32 %.pr, 0
  br i1 %.not11, label %bb.d, label %bb.c

.thread:                                          ; preds = %bb.a
  store i32 %.pr, ptr %2, align 4, !tbaa !6
  %.not1113 = icmp eq i32 %.pr, 0
  br i1 %.not1113, label %bb.d, label %.thread14

bb.c:                                             ; preds = %bb.b
  call void @rb_set_errinfo(i64 noundef 4) #16
  br label %.thread14

bb.d:                                             ; preds = %.thread, %bb.b
  %.not12 = icmp eq ptr %0, null
  br i1 %.not12, label %.thread14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.e, %bb.f
  %i.h = phi ptr [ %i.g, %bb.f ], [ %i.f, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %.thread14

.thread14:                                        ; preds = %.thread, %bb.d, %RSTRING_PTR.exit, %bb.c
  %.0 = phi i64 [ 4, %.thread ], [ 4, %bb.c ], [ %i.b, %RSTRING_PTR.exit ], [ %i.b, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_str_new_i(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %0) #16, !callees !22
  ret i64 %i.a
}

declare void @rb_set_errinfo(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i64 @ossl_buf2str(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = call i64 @rb_protect(ptr noundef nonnull @ossl_str_new_i, i64 noundef %i.b, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.pr.i = load i32, ptr %i.a, align 4, !tbaa !6  ; 2 uses
  %.not1113.i = icmp eq i32 %.pr.i, 0
  br i1 %.not1113.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not12.i = icmp eq ptr %0, null
  br i1 %.not12.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull readonly align 1 %0, i64 %i.b, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 118) #16
  call void @rb_jump_tag(i32 noundef %.pr.i) #19
  unreachable

bb.f:                                             ; preds = %bb.b, %RSTRING_PTR.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 118) #16
  ret i64 %i.c
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ossl_bin2hex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.012 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = shl i64 %.012, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  store i8 %i.h, ptr %i.j, align 1, !tbaa !16
  %i.k = and i32 %i.d, 15
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = lshr i32 %i.r, 4
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = shl i64 %.012, 1
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.v, ptr %i.x, align 1, !tbaa !16
  %i.y = and i32 %i.r, 15
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !16
  %i.ad = add nuw i64 %.012, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !23

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.012.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod13 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.012.epil.init
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = shl i64 %.012.epil.init, 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !16
  %i.an = and i32 %i.ag, 15
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ossl_pem_passwd_value(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !15
  %i.b = icmp eq i64 %0, 4
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24
  %i.h = icmp sgt i64 %i.g, 1024
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @eOSSLError, align 8, !tbaa !15
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.i, ptr noundef nonnull @.str.3, i32 noundef 1024) #17
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 4, %bb.a ], [ %i.d, %bb.b ]
  ret i64 %.0
}

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ossl_pem_passwd_cb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = and i64 %i.b, -5
  %.not32 = icmp eq i64 %i.c, 0
  br i1 %.not32, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 7
  %.not33 = icmp eq i64 %i.d, 0
  br i1 %.not33, label %rbimpl_RB_TYPE_P_fastpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.e = load i64, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.f = and i64 %i.e, 31
  %i.g = icmp eq i64 %i.f, 5
  br i1 %i.g, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %i.j = sext i32 %1 to i64
  %.not28 = icmp sgt i64 %i.i, %i.j
  br i1 %.not28, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.n, i64 %i.i, i1 false)
  %i.o = trunc i64 %i.i to i32
  br label %.loopexit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.c
  %i.p = load i64, ptr @dOSSL, align 8, !tbaa !15
  %i.q = icmp eq i64 %i.p, 20
  br i1 %i.q, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.s = tail call i64 @fwrite(ptr nonnull @.str.4, i64 12, i64 1, ptr %i.r) #20 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.5, i64 34, i64 1, ptr %i.t) #20 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 186) #21 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.x = tail call i32 @rb_block_given_p() #16
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.not26 = icmp eq i32 %2, 0
  %i.y = select i1 %.not26, i64 0, i64 20         ; 2 uses
  %i.z = call i64 @rb_protect(ptr noundef nonnull @ossl_pem_passwd_cb0, i64 noundef %i.y, ptr noundef nonnull %i.a) #16
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !6
  %.not2735 = icmp eq i32 %i.aa, 0
  br i1 %.not2735, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ab = sext i32 %1 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call i32 @PEM_def_callback(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null) #16
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.k, %.preheader
  call void @rb_set_errinfo(i64 noundef 4) #16
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %i.ad = phi i64 [ %i.z, %.lr.ph ], [ %i.aj, %bb.k ] ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4
  br i1 %i.ae, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, %i.ab
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.3, i32 noundef %1) #16
  %i.aj = call i64 @rb_protect(ptr noundef nonnull @ossl_pem_passwd_cb0, i64 noundef %i.y, ptr noundef nonnull %i.a) #16
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !6
  %.not27 = icmp eq i32 %i.ak, 0
  br i1 %.not27, label %bb.i, label %._crit_edge

bb.l:                                             ; preds = %bb.j
  %i.al = load i64, ptr %i.af, align 8, !tbaa !11
  %i.am = and i64 %i.al, 8192
  %.not.i29 = icmp eq i64 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  br i1 %.not.i29, label %RSTRING_PTR.exit30, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  br label %RSTRING_PTR.exit30

RSTRING_PTR.exit30:                               ; preds = %bb.l, %bb.m
  %i.ap = phi ptr [ %i.ao, %bb.m ], [ %i.an, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.ap, i64 %i.ah, i1 false)
  %i.aq = trunc i64 %i.ah to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.f, %RSTRING_PTR.exit30, %._crit_edge, %bb.h, %RSTRING_PTR.exit
  %.0 = phi i32 [ %i.o, %RSTRING_PTR.exit ], [ %i.ac, %bb.h ], [ -1, %._crit_edge ], [ -1, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.aq, %RSTRING_PTR.exit30 ], [ -1, %bb.f ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare i32 @rb_block_given_p() local_unnamed_addr #2

declare i32 @PEM_def_callback(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @ossl_pem_passwd_cb0(i64 noundef %0) #0 {
bb.a:
end_hunk_0
