Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ncrypto?download=true
inline.NumInlined: 3407
inline.NumDeleted: 1384
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK7ncrypto8X509View9checkHostESt17basic_string_viewIcSt11char_traitsIcEEiPNS_11DataPointerE:bb.a
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.g, i64 noundef %i.l, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %_ZN7ncrypto11DataPointeraSEOS0_.exit.thread

_ZN7ncrypto11DataPointeraSEOS0_.exit.thread:      ; preds = %bb.e, %bb.g, %bb.h
  store ptr %i.e, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.n, align 8
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

_ZN7ncrypto11DataPointeraSEOS0_.exit:             ; preds = %bb.d
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.e, i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

bb.i:                                             ; preds = %bb.b
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

bb.j:                                             ; preds = %bb.b
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

_ZN7ncrypto11DataPointerD2Ev.exit:                ; preds = %_ZN7ncrypto11DataPointeraSEOS0_.exit, %_ZN7ncrypto11DataPointeraSEOS0_.exit.thread, %bb.c, %bb.b, %bb.j, %bb.i
  %.0 = phi i32 [ 3, %bb.j ], [ 2, %bb.i ], [ %i.d, %bb.b ], [ 1, %bb.c ], [ 1, %_ZN7ncrypto11DataPointeraSEOS0_.exit.thread ], [ 1, %_ZN7ncrypto11DataPointeraSEOS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %_ZN7ncrypto11DataPointerD2Ev.exit, %bb.a
  %.1 = phi i32 [ %.0, %_ZN7ncrypto11DataPointerD2Ev.exit ], [ 0, %bb.a ]
  call void @ERR_clear_error() #21
  ret i32 %.1
}

declare i32 @X509_check_host(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZNK7ncrypto8X509View10checkEmailESt17basic_string_viewIcSt11char_traitsIcEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @ERR_clear_error() #21
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @X509_check_email(ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %1, i32 noundef %3) #21
  %switch.tableidx = add i32 %i.c, 2              ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 4
  br i1 %i.d, label %switch.lookup, label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK7ncrypto8X509View7checkIpESt17basic_string_viewIcSt11char_traitsIcEEi, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ], [ 3, %bb.b ]
  tail call void @ERR_clear_error() #21
  ret i32 %.0
}

declare i32 @X509_check_email(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZNK7ncrypto8X509View7checkIpESt17basic_string_viewIcSt11char_traitsIcEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @ERR_clear_error() #21
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @X509_check_ip_asc(ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3) #21
  %switch.tableidx = add i32 %i.c, 2              ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 4
  br i1 %i.d, label %switch.lookup, label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK7ncrypto8X509View7checkIpESt17basic_string_viewIcSt11char_traitsIcEEi, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ], [ 3, %bb.b ]
  tail call void @ERR_clear_error() #21
  ret i32 %.0
}

declare i32 @X509_check_ip_asc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN7ncrypto8X509View4FromERKNS_10SSLPointerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @ERR_clear_error() #21
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.a, null
  br i1 %.not.i.i.not, label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @SSL_get_certificate(ptr noundef nonnull %i.a) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.b, %bb.a
  %.sroa.02.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  tail call void @ERR_clear_error() #21
  ret ptr %.sroa.02.0
}

declare ptr @SSL_get_certificate(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN7ncrypto8X509View4FromERKNS_13SSLCtxPointerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @ERR_clear_error() #21
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.a, null
  br i1 %.not.i.i.not, label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @SSL_CTX_get0_certificate(ptr noundef nonnull %i.a) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.b, %bb.a
  %.sroa.02.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  tail call void @ERR_clear_error() #21
  ret ptr %.sroa.02.0
}

declare ptr @SSL_CTX_get0_certificate(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK7ncrypto8X509View14getFingerprintB5cxx11ERKNS_6DigestE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = load ptr, ptr %1, align 8
  %i.d = load ptr, ptr %2, align 8
  %i.e = call i32 @X509_digest(ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.h, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.i = mul i32 %i.f, 3                          ; 2 uses
  %i.j = add i32 %i.i, -1                         ; 3 uses
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.l, ptr %3, align 8
  %i.m = icmp ugt i32 %i.j, 15
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = zext i32 %i.i to i64
  %i.o = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 2 uses
  store ptr %i.o, ptr %3, align 8
  store i64 %i.k, ptr %i.l, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  switch i32 %i.j, label %bb.h [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.l, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %i.o, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.q = phi ptr [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.p, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.s, align 1
  %i.t = load i32, ptr %i.a, align 4
  %.not15 = icmp eq i32 %i.t, 0
  br i1 %.not15, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 4 uses
  %4 = mul nuw nsw i64 %indvars.iv, 3             ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = lshr i8 %i.v, 4
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZZNK7ncrypto8X509View14getFingerprintB5cxx11ERKNS_6DigestEE3hex, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = load ptr, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %4
  store i8 %i.z, ptr %i.ab, align 1
  %i.ac = load i8, ptr %i.u, align 1
  %i.ad = and i8 %i.ac, 15
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZNK7ncrypto8X509View14getFingerprintB5cxx11ERKNS_6DigestEE3hex, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %5 = add nuw nsw i64 %4, 1
  %6 = and i64 %5, 4294967295
  %i.ah = load ptr, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %6
  store i8 %i.ag, ptr %i.ai, align 1
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = add i32 %i.aj, -1
  %i.al = zext i32 %i.ak to i64
  %.not12 = icmp eq i64 %indvars.iv, %i.al
  br i1 %.not12, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %7 = add nuw nsw i64 %4, 2
  %8 = and i64 %7, 4294967295
  %i.am = load ptr, ptr %3, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %8
  store i8 58, ptr %i.an, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.a, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.critedge, !llvm.loop !52

.critedge:                                        ; preds = %bb.i, %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ar, ptr %0, align 8
  %i.as = load ptr, ptr %3, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.l
  br i1 %i.at, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.au = load i64, ptr %i.r, align 8             ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge
  store ptr %i.as, ptr %0, align 8
  %i.ax = load i64, ptr %i.l, align 8
  store i64 %i.ax, ptr %i.ar, align 8
  %.pre = load i64, ptr %i.r, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ay = phi i64 [ %i.au, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ba, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bb, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i32 @X509_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK7ncrypto8X509View5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ncrypto::X509Pointer") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @ERR_clear_error() #21
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @X509_dup(ptr noundef nonnull %i.a) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %0, align 8
  tail call void @ERR_clear_error() #21
  ret void
}

declare ptr @X509_dup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto11X509Pointer5ParseENS_6BufferIKhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.ncrypto::Result.100") align 8 captures(none) initializes((0, 1), (8, 16), (20, 21), (28, 29)) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @ERR_clear_error() #21
  %i.a = trunc i64 %2 to i32
  %i.b = tail call ptr @BIO_new_mem_buf(ptr noundef %1, i32 noundef %i.a) #21 ; 5 uses
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %_ZN7ncrypto11X509PointerD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PEM_read_bio_X509_AUX(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull @_ZN7ncrypto18NoPasswordCallbackEPciiPv, ptr noundef null) #21 ; 2 uses
  %.not.i.i1.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i1.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.f, align 4
  br label %_ZN7ncrypto10BIOPointer5resetEP6bio_st.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.b, i32 noundef 1, i64 noundef 0, ptr noundef null) #21 ; 0 uses
  %i.h = tail call ptr @d2i_X509_bio(ptr noundef nonnull %i.b, ptr noundef null) #21 ; 2 uses
  %.not.i.i2.not = icmp eq ptr %i.h, null
  br i1 %.not.i.i2.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.k, align 4
  br label %_ZN7ncrypto10BIOPointer5resetEP6bio_st.exit.i

bb.f:                                             ; preds = %bb.d
  %i.l = tail call i64 @ERR_get_error() #21
  %i.m = trunc i64 %i.l to i32
  store i8 0, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.q, align 8
  br label %_ZN7ncrypto10BIOPointer5resetEP6bio_st.exit.i

_ZN7ncrypto11X509PointerD2Ev.exit8:               ; preds = %bb.a
  %i.r = tail call i64 @ERR_get_error() #21
  %i.s = trunc i64 %i.r to i32
  store i8 0, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.w, align 8
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto10BIOPointer5resetEP6bio_st.exit.i:    ; preds = %bb.f, %bb.e, %bb.c
  tail call void @BIO_free_all(ptr noundef nonnull %i.b) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %_ZN7ncrypto11X509PointerD2Ev.exit8, %_ZN7ncrypto10BIOPointer5resetEP6bio_st.exit.i
  tail call void @ERR_clear_error() #21
  ret void
}

declare ptr @BIO_new_mem_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PEM_read_bio_X509_AUX(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @d2i_X509_bio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK7ncrypto8X509View10enumUsagesESt8functionIFvPKcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt10unique_ptrI20stack_st_ASN1_OBJECTN7ncrypto19StackOfXASN1DeleterEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @X509_get_ext_d2i(ptr noundef nonnull %i.c, i32 noundef 126, ptr noundef null, ptr noundef null) #21 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNSt10unique_ptrI20stack_st_ASN1_OBJECTN7ncrypto19StackOfXASN1DeleterEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.e) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.g ] ; 2 uses
  %i.j = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.e, i32 noundef %.010) #21
  %i.k = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %i.j, i32 noundef 1) #21
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt8functionIFvPKcEEclES1_.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable
end_hunk_0
