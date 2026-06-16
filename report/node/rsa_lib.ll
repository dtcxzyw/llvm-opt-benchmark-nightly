inline.NumInlined: 84
inline.NumDeleted: 21
begin_hunk_0_@RSA_set_method:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ENGINE_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RSA_new_method(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @rsa_new_intern(ptr noundef %0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_rsa_new_with_ctx(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @rsa_new_intern(ptr noundef null, ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @RSA_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = atomicrmw sub ptr %i.b, i32 1 release, align 4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %CRYPTO_DOWN_REF.exit.thread, label %CRYPTO_DOWN_REF.exit

CRYPTO_DOWN_REF.exit.thread:                      ; preds = %bb.b
  fence acquire
  br label %bb.c

CRYPTO_DOWN_REF.exit:                             ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %CRYPTO_DOWN_REF.exit.thread, %CRYPTO_DOWN_REF.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %.not26 = icmp eq ptr %i.i, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = tail call i32 @ENGINE_finish(ptr noundef %i.l) #10 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @CRYPTO_free_ex_data(i32 noundef 9, ptr noundef nonnull %0, ptr noundef nonnull %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9
  tail call void @CRYPTO_THREAD_lock_free(ptr noundef %i.p) #10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  tail call void @BN_free(ptr noundef %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  tail call void @BN_free(ptr noundef %i.t) #10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  tail call void @BN_clear_free(ptr noundef %i.v) #10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  tail call void @BN_clear_free(ptr noundef %i.x) #10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  tail call void @BN_clear_free(ptr noundef %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  tail call void @BN_clear_free(ptr noundef %i.ab) #10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  tail call void @BN_clear_free(ptr noundef %i.ad) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  tail call void @BN_clear_free(ptr noundef %i.af) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43
  tail call void @RSA_PSS_PARAMS_free(ptr noundef %i.ah) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.aj, ptr noundef nonnull @ossl_rsa_multip_info_free) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45
  tail call void @BN_BLINDING_free(ptr noundef %i.al) #10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46
  tail call void @BN_BLINDING_free(ptr noundef %i.an) #10
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 186) #10
  br label %bb.g

bb.g:                                             ; preds = %CRYPTO_DOWN_REF.exit, %bb.a, %bb.f
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_THREAD_lock_free(ptr noundef) local_unnamed_addr #3

declare void @BN_free(ptr noundef) local_unnamed_addr #3

declare void @BN_clear_free(ptr noundef) local_unnamed_addr #3

declare void @RSA_PSS_PARAMS_free(ptr noundef) local_unnamed_addr #3

declare void @ossl_rsa_multip_info_free(ptr noundef) #3

declare void @BN_BLINDING_free(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @RSA_up_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_rsa_get0_libctx(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_rsa_set0_libctx(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RSA_set_ex_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2) #10
  ret i32 %i.b
}

declare i32 @CRYPTO_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @RSA_get_ex_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call ptr @CRYPTO_get_ex_data(ptr noundef nonnull %i.a, i32 noundef %1) #10
  ret ptr %i.b
}

declare ptr @CRYPTO_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext range(i16 0, 1201) i16 @ossl_ifc_ffc_compute_security_bits(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = add i32 %0, -2048                        ; 2 uses
  %i.b = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 23) ; 3 uses
  %i.c = icmp ult i32 %i.b, 27
  %switch.shifted = lshr i32 67115285, %i.b
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 687736
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %0, 8
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i32 %0 to i64
  %i.g = mul nuw nsw i64 %i.f, 181704             ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.020.i = phi i32 [ 0, %bb.d ], [ %i.i, %bb.e ]
  %.01419.i = phi i64 [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.h = lshr i64 %.01419.i, 1                    ; 3 uses
  %i.i = add nuw nsw i32 %.020.i, 262144          ; 2 uses
  %i.j = icmp samesign ugt i64 %.01419.i, 1048575
  br i1 %i.j, label %bb.e, label %ilog_e.exit, !llvm.loop !47

ilog_e.exit:                                      ; preds = %bb.e
  %i.k = icmp samesign ult i32 %0, 7681
  %i.l = icmp samesign ult i32 %0, 15361
  %. = select i1 %i.l, i16 256, i16 1200
  %.0 = select i1 %i.k, i16 192, i16 %.
  %i.m = mul nuw nsw i64 %i.h, %i.h
  %i.n = icmp samesign ugt i64 %.01419.i, 741455  ; 2 uses
  %.216.v.i = select i1 %i.n, i64 19, i64 18
  %.216.i = lshr i64 %i.m, %.216.v.i              ; 3 uses
  %i.o = select i1 %i.n, i32 131072, i32 0
  %i.p = mul nuw nsw i64 %.216.i, %.216.i
  %i.q = icmp samesign ugt i64 %.216.i, 370727    ; 2 uses
  %.216.v.1.i = select i1 %i.q, i64 19, i64 18
  %.216.1.i = lshr i64 %i.p, %.216.v.1.i          ; 3 uses
  %i.r = select i1 %i.q, i32 65536, i32 0
  %i.s = mul nuw nsw i64 %.216.1.i, %.216.1.i
  %i.t = icmp samesign ugt i64 %.216.1.i, 370727  ; 2 uses
  %.216.v.2.i = select i1 %i.t, i64 19, i64 18
  %.216.2.i = lshr i64 %i.s, %.216.v.2.i          ; 2 uses
  %i.u = select i1 %i.t, i32 32768, i32 0
  %i.v = mul i64 %.216.2.i, %.216.2.i             ; 2 uses
  %i.w = icmp ugt i64 %i.v, 137438953471          ; 2 uses
  %.216.v.3.i = select i1 %i.w, i64 19, i64 18
  %.216.3.i = lshr i64 %i.v, %.216.v.3.i          ; 2 uses
  %i.x = select i1 %i.w, i32 16384, i32 0
  %i.y = mul i64 %.216.3.i, %.216.3.i             ; 2 uses
  %i.z = icmp ugt i64 %i.y, 137438953471          ; 2 uses
  %.216.v.4.i = select i1 %i.z, i64 19, i64 18
  %.216.4.i = lshr i64 %i.y, %.216.v.4.i          ; 2 uses
  %i.aa = select i1 %i.z, i32 8192, i32 0
  %i.ab = mul i64 %.216.4.i, %.216.4.i            ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 137438953471        ; 2 uses
  %.216.v.5.i = select i1 %i.ac, i64 19, i64 18
  %.216.5.i = lshr i64 %i.ab, %.216.v.5.i         ; 2 uses
  %i.ad = select i1 %i.ac, i32 4096, i32 0
  %i.ae = mul i64 %.216.5.i, %.216.5.i            ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 137438953471        ; 2 uses
  %.216.v.6.i = select i1 %i.af, i64 19, i64 18
  %.216.6.i = lshr i64 %i.ae, %.216.v.6.i         ; 2 uses
  %i.ag = select i1 %i.af, i32 2048, i32 0
  %i.ah = mul i64 %.216.6.i, %.216.6.i            ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 137438953471        ; 2 uses
  %.216.v.7.i = select i1 %i.ai, i64 19, i64 18
  %.216.7.i = lshr i64 %i.ah, %.216.v.7.i         ; 2 uses
  %i.aj = select i1 %i.ai, i32 1024, i32 0
  %i.ak = mul i64 %.216.7.i, %.216.7.i            ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 137438953471        ; 2 uses
  %.216.v.8.i = select i1 %i.al, i64 19, i64 18
  %.216.8.i = lshr i64 %i.ak, %.216.v.8.i         ; 2 uses
  %i.am = select i1 %i.al, i32 512, i32 0
  %i.an = mul i64 %.216.8.i, %.216.8.i            ; 2 uses
  %i.ao = icmp ugt i64 %i.an, 137438953471        ; 2 uses
  %.216.v.9.i = select i1 %i.ao, i64 19, i64 18
  %.216.9.i = lshr i64 %i.an, %.216.v.9.i         ; 2 uses
  %i.ap = select i1 %i.ao, i32 256, i32 0
  %i.aq = mul i64 %.216.9.i, %.216.9.i            ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 137438953471        ; 2 uses
  %.216.v.10.i = select i1 %i.ar, i64 19, i64 18
  %.216.10.i = lshr i64 %i.aq, %.216.v.10.i       ; 2 uses
  %i.as = select i1 %i.ar, i32 128, i32 0
  %i.at = mul i64 %.216.10.i, %.216.10.i          ; 2 uses
  %i.au = icmp ugt i64 %i.at, 137438953471        ; 2 uses
  %.216.v.11.i = select i1 %i.au, i64 19, i64 18
  %.216.11.i = lshr i64 %i.at, %.216.v.11.i       ; 2 uses
  %i.av = select i1 %i.au, i32 64, i32 0
  %i.aw = mul i64 %.216.11.i, %.216.11.i          ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, 137438953471        ; 2 uses
  %.216.v.12.i = select i1 %i.ax, i64 19, i64 18
  %.216.12.i = lshr i64 %i.aw, %.216.v.12.i       ; 2 uses
  %i.ay = select i1 %i.ax, i32 32, i32 0
  %i.az = mul i64 %.216.12.i, %.216.12.i          ; 2 uses
  %i.ba = icmp ugt i64 %i.az, 137438953471        ; 2 uses
  %.216.v.13.i = select i1 %i.ba, i64 19, i64 18
  %.216.13.i = lshr i64 %i.az, %.216.v.13.i       ; 2 uses
  %i.bb = select i1 %i.ba, i32 16, i32 0
  %i.bc = mul i64 %.216.13.i, %.216.13.i          ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 137438953471        ; 2 uses
  %.216.v.14.i = select i1 %i.bd, i64 19, i64 18
  %.216.14.i = lshr i64 %i.bc, %.216.v.14.i       ; 2 uses
  %i.be = select i1 %i.bd, i32 8, i32 0
  %i.bf = mul i64 %.216.14.i, %.216.14.i          ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, 137438953471        ; 2 uses
  %.216.v.15.i = select i1 %i.bg, i64 19, i64 18
  %.216.15.i = lshr i64 %i.bf, %.216.v.15.i       ; 2 uses
  %i.bh = select i1 %i.bg, i32 4, i32 0
  %i.bi = mul i64 %.216.15.i, %.216.15.i          ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 137438953471        ; 2 uses
  %.216.v.16.i = select i1 %i.bj, i64 19, i64 18
  %.216.16.i = lshr i64 %i.bi, %.216.v.16.i       ; 2 uses
  %i.bk = select i1 %i.bj, i32 2, i32 0
  %i.bl = mul i64 %.216.16.i, %.216.16.i
  %i.bm = icmp ugt i64 %i.bl, 137438953471
  %i.bn = zext i1 %i.bm to i32
  %i.bo = or disjoint i32 %i.o, %i.r
  %i.bp = or disjoint i32 %i.bo, %i.u
  %i.bq = or disjoint i32 %i.bp, %i.x
  %i.br = or disjoint i32 %i.bq, %i.aa
  %i.bs = or disjoint i32 %i.br, %i.ad
  %.2.5.i = or i32 %i.bs, %i.i
  %.2.6.i = add i32 %.2.5.i, %i.ag
  %.2.7.i = add i32 %.2.6.i, %i.aj
  %.2.8.i = add i32 %.2.7.i, %i.am
  %.2.9.i = add i32 %.2.8.i, %i.ap
  %.2.10.i = add i32 %.2.9.i, %i.as
  %.2.11.i = add i32 %.2.10.i, %i.av
  %.2.12.i = add i32 %.2.11.i, %i.ay
  %.2.13.i = add i32 %.2.12.i, %i.bb
  %.2.14.i = add i32 %.2.13.i, %i.be
  %.2.15.i = add i32 %.2.14.i, %i.bh
  %.2.16.i = add i32 %.2.15.i, %i.bk
  %.2.17.i = add i32 %.2.16.i, %i.bn
  %i.bt = zext i32 %.2.17.i to i64
  %i.bu = shl nuw nsw i64 %i.bt, 18
  %i.bv = udiv i64 %i.bu, 378193                  ; 2 uses
  %i.bw = mul i64 %i.bv, %i.g
  %i.bx = lshr i64 %i.bw, 18
  %i.by = mul i64 %i.bx, %i.bv                    ; 2 uses
  %i.bz = lshr i64 %i.by, 18
  %.not.not.6.not.i = icmp slt i64 %i.by, 0       ; 3 uses
  %i.ca = select i1 %.not.not.6.not.i, i64 -35184372088832, i64 0
  %.1.6.i = add nsw i64 %i.ca, %i.bz              ; 2 uses
  %i.cb = select i1 %.not.not.6.not.i, i64 2, i64 0 ; 2 uses
  %i.cc = select i1 %.not.not.6.not.i, i64 6, i64 0
  %i.cd = or disjoint i64 %i.cb, 1                ; 2 uses
  %i.ce = mul nuw nsw i64 %i.cd, %i.cc            ; 2 uses
  %i.cf = lshr i64 %.1.6.i, 42
  %.not.not.7.i = icmp samesign ugt i64 %i.cf, %i.ce ; 2 uses
  %.neg.7.i = xor i64 %i.ce, -1
  %.neg17.7.i = shl nsw i64 %.neg.7.i, 42
  %.115.7.i = select i1 %.not.not.7.i, i64 %i.cd, i64 %i.cb ; 2 uses
  %i.cg = select i1 %.not.not.7.i, i64 %.neg17.7.i, i64 0
  %.1.7.i = add nsw i64 %i.cg, %.1.6.i            ; 2 uses
  %i.ch = shl nuw nsw i64 %.115.7.i, 1            ; 2 uses
  %i.ci = mul nuw nsw i64 %.115.7.i, 6
  %i.cj = or disjoint i64 %i.ch, 1                ; 2 uses
  %i.ck = mul nuw nsw i64 %i.ci, %i.cj            ; 2 uses
  %i.cl = lshr i64 %.1.7.i, 39
  %.not.not.8.i = icmp samesign ugt i64 %i.cl, %i.ck ; 2 uses
  %.neg.8.i = xor i64 %i.ck, -1
  %.neg17.8.i = shl nsw i64 %.neg.8.i, 39
  %.115.8.i = select i1 %.not.not.8.i, i64 %i.cj, i64 %i.ch ; 2 uses
  %i.cm = select i1 %.not.not.8.i, i64 %.neg17.8.i, i64 0
  %.1.8.i = add nsw i64 %i.cm, %.1.7.i            ; 2 uses
  %i.cn = shl nuw nsw i64 %.115.8.i, 1            ; 2 uses
  %i.co = mul nuw nsw i64 %.115.8.i, 6
  %i.cp = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cq = mul nuw nsw i64 %i.co, %i.cp            ; 2 uses
  %i.cr = lshr i64 %.1.8.i, 36
  %.not.not.9.i = icmp samesign ugt i64 %i.cr, %i.cq ; 2 uses
  %.neg.9.i = xor i64 %i.cq, -1
  %.neg17.9.i = shl nsw i64 %.neg.9.i, 36
  %.115.9.i = select i1 %.not.not.9.i, i64 %i.cp, i64 %i.cn ; 2 uses
  %i.cs = select i1 %.not.not.9.i, i64 %.neg17.9.i, i64 0
  %.1.9.i = add nsw i64 %i.cs, %.1.8.i            ; 2 uses
  %i.ct = shl nuw nsw i64 %.115.9.i, 1            ; 2 uses
  %i.cu = mul nuw nsw i64 %.115.9.i, 6
  %i.cv = or disjoint i64 %i.ct, 1                ; 2 uses
  %i.cw = mul nuw nsw i64 %i.cu, %i.cv            ; 2 uses
  %i.cx = lshr i64 %.1.9.i, 33
  %.not.not.10.i = icmp samesign ugt i64 %i.cx, %i.cw ; 2 uses
  %.neg.10.i = xor i64 %i.cw, -1
  %.neg17.10.i = shl nsw i64 %.neg.10.i, 33
  %.115.10.i = select i1 %.not.not.10.i, i64 %i.cv, i64 %i.ct ; 2 uses
  %i.cy = select i1 %.not.not.10.i, i64 %.neg17.10.i, i64 0
  %.1.10.i = add nsw i64 %i.cy, %.1.9.i           ; 2 uses
  %i.cz = shl nuw nsw i64 %.115.10.i, 1           ; 2 uses
  %i.da = mul nuw nsw i64 %.115.10.i, 6
  %i.db = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.dc = mul nuw nsw i64 %i.da, %i.db            ; 2 uses
  %i.dd = lshr i64 %.1.10.i, 30
  %.not.not.11.i = icmp samesign ugt i64 %i.dd, %i.dc ; 2 uses
  %.neg.11.i = xor i64 %i.dc, -1
  %.neg17.11.i = shl nsw i64 %.neg.11.i, 30
  %.115.11.i = select i1 %.not.not.11.i, i64 %i.db, i64 %i.cz ; 2 uses
  %i.de = select i1 %.not.not.11.i, i64 %.neg17.11.i, i64 0
  %.1.11.i = add nsw i64 %i.de, %.1.10.i          ; 2 uses
  %i.df = shl nuw nsw i64 %.115.11.i, 1           ; 2 uses
  %i.dg = mul nuw nsw i64 %.115.11.i, 6
  %i.dh = or disjoint i64 %i.df, 1                ; 2 uses
  %i.di = mul nuw nsw i64 %i.dg, %i.dh            ; 2 uses
  %i.dj = lshr i64 %.1.11.i, 27
  %.not.not.12.i = icmp samesign ugt i64 %i.dj, %i.di ; 2 uses
  %.neg.12.i = xor i64 %i.di, -1
  %.neg17.12.i = shl nsw i64 %.neg.12.i, 27
  %.115.12.i = select i1 %.not.not.12.i, i64 %i.dh, i64 %i.df ; 2 uses
  %i.dk = select i1 %.not.not.12.i, i64 %.neg17.12.i, i64 0
  %.1.12.i = add nsw i64 %i.dk, %.1.11.i          ; 2 uses
  %i.dl = shl nuw nsw i64 %.115.12.i, 1           ; 2 uses
  %i.dm = mul nuw nsw i64 %.115.12.i, 6
  %i.dn = or disjoint i64 %i.dl, 1                ; 2 uses
  %i.do = mul nuw nsw i64 %i.dm, %i.dn            ; 2 uses
  %i.dp = lshr i64 %.1.12.i, 24
  %.not.not.13.i = icmp samesign ugt i64 %i.dp, %i.do ; 2 uses
  %.neg.13.i = xor i64 %i.do, -1
  %.neg17.13.i = shl nsw i64 %.neg.13.i, 24
  %.115.13.i = select i1 %.not.not.13.i, i64 %i.dn, i64 %i.dl ; 2 uses
  %i.dq = select i1 %.not.not.13.i, i64 %.neg17.13.i, i64 0
  %.1.13.i = add nsw i64 %i.dq, %.1.12.i          ; 2 uses
  %i.dr = shl nuw nsw i64 %.115.13.i, 1           ; 2 uses
  %i.ds = mul nuw nsw i64 %.115.13.i, 6
  %i.dt = or disjoint i64 %i.dr, 1                ; 2 uses
  %i.du = mul nuw nsw i64 %i.ds, %i.dt            ; 2 uses
  %i.dv = lshr i64 %.1.13.i, 21
  %.not.not.14.i = icmp samesign ugt i64 %i.dv, %i.du ; 2 uses
  %.neg.14.i = xor i64 %i.du, -1
  %.neg17.14.i = shl nsw i64 %.neg.14.i, 21
  %.115.14.i = select i1 %.not.not.14.i, i64 %i.dt, i64 %i.dr ; 2 uses
  %i.dw = select i1 %.not.not.14.i, i64 %.neg17.14.i, i64 0
  %.1.14.i = add nsw i64 %i.dw, %.1.13.i          ; 2 uses
  %i.dx = shl nuw nsw i64 %.115.14.i, 1           ; 2 uses
  %i.dy = mul nuw nsw i64 %.115.14.i, 6
  %i.dz = or disjoint i64 %i.dx, 1                ; 2 uses
  %i.ea = mul nuw nsw i64 %i.dy, %i.dz            ; 2 uses
  %i.eb = lshr i64 %.1.14.i, 18
  %.not.not.15.i = icmp samesign ugt i64 %i.eb, %i.ea ; 2 uses
  %.neg.15.i = xor i64 %i.ea, -1
  %.neg17.15.i = shl nsw i64 %.neg.15.i, 18
end_hunk_0
