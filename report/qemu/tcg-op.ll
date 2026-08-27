Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-op?download=true
inline.NumInlined: 724
inline.NumDeleted: 64
begin_hunk_0_@tcg_gen_andi_i32:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %tcg_gen_movi_i32.exit

bb.f:                                             ; preds = %bb.a
  %i.t = add nuw i32 %2, 1
  %i.u = and i32 %i.t, %2
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = xor i32 %2, -1
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.v, i1 false) ; 3 uses
  switch i32 %i.w, label %.thread [
    i32 16, label %bb.h
    i32 8, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = zext nneg i32 %i.w to i64
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 0, i64 noundef %i.ad, i64 noundef %i.ag, i64 noundef 0, i64 noundef %i.y) ; 0 uses
  br label %tcg_gen_movi_i32.exit

.thread:                                          ; preds = %bb.g, %bb.f
  %i.ai = tail call ptr @tcg_constant_i32(i32 noundef %2) #6
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = ptrtoint ptr %0 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ar
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = tail call ptr @tcg_gen_op3(i32 noundef 8, i32 noundef 0, i64 noundef %i.an, i64 noundef %i.aq, i64 noundef %i.at) ; 0 uses
  br label %tcg_gen_movi_i32.exit

tcg_gen_movi_i32.exit:                            ; preds = %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_extract_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 32
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nuw nsw i32 %3, %2                   ; 4 uses
  %i.d = icmp samesign ult i32 %i.c, 33
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i32 %i.c, 32
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %3, 32
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %tcg_gen_shri_i32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.k, i64 noundef %i.n) ; 0 uses
  br label %tcg_gen_shri_i32.exit

bb.e:                                             ; preds = %bb.b
  %i.p = sub nuw nsw i32 32, %3
  %i.q = tail call ptr @tcg_constant_i32(i32 noundef %i.p) #6
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = ptrtoint ptr %0 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 0, i64 noundef %i.v, i64 noundef %i.y, i64 noundef %i.ab) ; 0 uses
  br label %tcg_gen_shri_i32.exit

bb.f:                                             ; preds = %bb.a
  switch i32 %2, label %.thread60 [
    i32 0, label %tcg_target_extract_valid.exit
    i32 8, label %.split
  ]

.split:                                           ; preds = %bb.f
  %i.ad = icmp eq i32 %3, 8
  br i1 %i.ad, label %bb.g, label %.thread60

tcg_target_extract_valid.exit:                    ; preds = %bb.f
  switch i32 %3, label %.thread [
    i32 16, label %bb.g
    i32 8, label %bb.g
  ]

.thread:                                          ; preds = %tcg_target_extract_valid.exit
  %notmask59 = shl nsw i32 -1, %3
  %i.ae = xor i32 %notmask59, -1
  tail call void @tcg_gen_andi_i32(ptr noundef %0, ptr noundef %1, i32 noundef %i.ae)
  br label %tcg_gen_shri_i32.exit

bb.g:                                             ; preds = %tcg_target_extract_valid.exit, %tcg_target_extract_valid.exit, %.split
  %i.af = zext nneg i32 %2 to i64
  %i.ag = zext nneg i32 %3 to i64
  %i.ah = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = ptrtoint ptr %0 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 0, i64 noundef %i.al, i64 noundef %i.ao, i64 noundef range(i64 0, 4294967296) %i.af, i64 noundef %i.ag) ; 0 uses
  br label %tcg_gen_shri_i32.exit

.thread60:                                        ; preds = %bb.f, %.split
  %.in = shl nsw i32 -1, %3
  %i.aq = xor i32 %.in, -1                        ; 2 uses
  switch i32 %i.c, label %bb.h [
    i32 16, label %tcg_gen_shri_i32.exit49
    i32 8, label %tcg_gen_shri_i32.exit49
  ]

tcg_gen_shri_i32.exit49:                          ; preds = %.thread60, %.thread60
  %i.ar = zext nneg i32 %i.c to i64
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ax
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 0, i64 noundef %i.aw, i64 noundef %i.az, i64 noundef 0, i64 noundef %i.ar) ; 0 uses
  %i.bb = tail call ptr @tcg_constant_i32(i32 noundef %2) #6
  %i.bc = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 0, i64 noundef %i.be, i64 noundef %i.be, i64 noundef %i.bh) ; 0 uses
  br label %tcg_gen_shri_i32.exit

bb.h:                                             ; preds = %.thread60
  %i.bj = zext nneg i32 %i.aq to i64
  %i.bk = tail call zeroext i1 @tcg_op_imm_match(i32 noundef 8, i32 noundef 0, i64 noundef %i.bj) #6
  br i1 %i.bk, label %tcg_gen_shri_i32.exit52, label %tcg_gen_shli_i32.exit

tcg_gen_shri_i32.exit52:                          ; preds = %bb.h
  %i.bl = tail call ptr @tcg_constant_i32(i32 noundef %2) #6
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = ptrtoint ptr %0 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bl to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bu
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 0, i64 noundef %i.bq, i64 noundef %i.bt, i64 noundef %i.bw) ; 0 uses
  tail call void @tcg_gen_andi_i32(ptr noundef %0, ptr noundef %0, i32 noundef %i.aq)
  br label %tcg_gen_shri_i32.exit

tcg_gen_shli_i32.exit:                            ; preds = %bb.h
  %i.by = sub nuw nsw i32 32, %3                  ; 2 uses
  %i.bz = sub nuw nsw i32 %i.by, %2
  %i.ca = tail call ptr @tcg_constant_i32(i32 noundef %i.bz) #6
  %i.cb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.cd = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %1 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.ca to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cj
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = tail call ptr @tcg_gen_op3(i32 noundef 51, i32 noundef 0, i64 noundef %i.cf, i64 noundef %i.ci, i64 noundef %i.cl) ; 0 uses
  %i.cn = tail call ptr @tcg_constant_i32(i32 noundef %i.by) #6
  %i.co = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cd
  %i.cq = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 0, i64 noundef %i.cq, i64 noundef %i.cq, i64 noundef %i.ct) ; 0 uses
  br label %tcg_gen_shri_i32.exit

tcg_gen_shri_i32.exit:                            ; preds = %tcg_gen_shli_i32.exit, %bb.e, %bb.d, %bb.c, %tcg_gen_shri_i32.exit52, %tcg_gen_shri_i32.exit49, %.thread, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_or_i32(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = tail call ptr @tcg_gen_op3(i32 noundef 42, i32 noundef 0, i64 noundef %i.e, i64 noundef %i.h, i64 noundef %i.k) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_ori_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 -1, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @tcg_constant_i32(i32 noundef -1) #6 ; 2 uses
  %.not.i.i = icmp eq ptr %0, %i.a
  br i1 %.not.i.i, label %tcg_gen_movi_i32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.i) ; 0 uses
  br label %tcg_gen_movi_i32.exit

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %tcg_gen_movi_i32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %tcg_gen_movi_i32.exit

bb.f:                                             ; preds = %bb.a
  %i.t = tail call ptr @tcg_constant_i32(i32 noundef %2) #6
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = ptrtoint ptr %0 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = tail call ptr @tcg_gen_op3(i32 noundef 42, i32 noundef 0, i64 noundef %i.y, i64 noundef %i.ab, i64 noundef %i.ae) ; 0 uses
  br label %tcg_gen_movi_i32.exit

tcg_gen_movi_i32.exit:                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_xor_i32(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = tail call ptr @tcg_gen_op3(i32 noundef 58, i32 noundef 0, i64 noundef %i.e, i64 noundef %i.h, i64 noundef %i.k) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_xori_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %tcg_gen_mov_i32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.e, i64 noundef %i.h) ; 0 uses
  br label %tcg_gen_mov_i32.exit

bb.d:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @tcg_op_supported(i32 noundef 41, i32 noundef 0, i32 noundef 0) #6
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = tail call ptr @tcg_gen_op2(i32 noundef 41, i32 noundef 0, i64 noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %tcg_gen_mov_i32.exit

bb.f:                                             ; preds = %bb.a, %bb.d
  %i.t = tail call ptr @tcg_constant_i32(i32 noundef %2) #6
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = ptrtoint ptr %0 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = tail call ptr @tcg_gen_op3(i32 noundef 58, i32 noundef 0, i64 noundef %i.y, i64 noundef %i.ab, i64 noundef %i.ae) ; 0 uses
  br label %tcg_gen_mov_i32.exit

tcg_gen_mov_i32.exit:                             ; preds = %bb.c, %bb.b, %bb.e, %bb.f
  ret void
}

declare zeroext i1 @tcg_op_supported(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_not_i32(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @tcg_op_supported(i32 noundef 41, i32 noundef 0, i32 noundef 0) #6
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
end_hunk_0
begin_hunk_1_@tcg_gen_deposit_z_i32:bb.a
  br label %tcg_gen_shli_i32.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @tcg_gen_extract_i32(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %3)
  br label %tcg_gen_shli_i32.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = tail call ptr @tcg_constant_i32(i32 noundef 0) #6
  %i.ad = zext nneg i32 %2 to i64
  %i.ae = zext nneg i32 %3 to i64
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ac to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.an
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = tail call ptr @tcg_gen_op5(i32 noundef 16, i32 noundef 0, i64 noundef %i.aj, i64 noundef %i.am, i64 noundef %i.ap, i64 noundef range(i64 0, 32) %i.ad, i64 noundef range(i64 1, 33) %i.ae) ; 0 uses
  br label %tcg_gen_shli_i32.exit

tcg_gen_shli_i32.exit:                            ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.h
  ret void
}

declare zeroext i1 @tcg_op_imm_match(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_sextract_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 32
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nuw nsw i32 %3, %2                   ; 4 uses
  %i.d = icmp samesign ult i32 %i.c, 33
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i32 %i.c, 32
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %3, 32
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %tcg_gen_sari_i32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.k, i64 noundef %i.n) ; 0 uses
  br label %tcg_gen_sari_i32.exit

bb.e:                                             ; preds = %bb.b
  %i.p = sub nuw nsw i32 32, %3
  %i.q = tail call ptr @tcg_constant_i32(i32 noundef %i.p) #6
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = ptrtoint ptr %0 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = tail call ptr @tcg_gen_op3(i32 noundef 48, i32 noundef 0, i64 noundef %i.v, i64 noundef %i.y, i64 noundef %i.ab) ; 0 uses
  br label %tcg_gen_sari_i32.exit

bb.f:                                             ; preds = %bb.a
  switch i32 %2, label %tcg_target_sextract_valid.exit.thread [
    i32 0, label %bb.g
    i32 8, label %tcg_target_sextract_valid.exit
  ]

bb.g:                                             ; preds = %bb.f
  switch i32 %3, label %tcg_target_sextract_valid.exit.thread [
    i32 8, label %tcg_target_sextract_valid.exit.thread54
    i32 16, label %tcg_target_sextract_valid.exit.thread54
  ]

tcg_target_sextract_valid.exit:                   ; preds = %bb.f
  %i.ad = icmp eq i32 %3, 8
  br i1 %i.ad, label %tcg_target_sextract_valid.exit.thread54, label %tcg_target_sextract_valid.exit.thread

tcg_target_sextract_valid.exit.thread54:          ; preds = %bb.g, %bb.g, %tcg_target_sextract_valid.exit
  %i.ae = zext nneg i32 %2 to i64
  %i.af = zext nneg i32 %3 to i64
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = ptrtoint ptr %0 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %1 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 0, i64 noundef %i.ak, i64 noundef %i.an, i64 noundef range(i64 0, 4294967296) %i.ae, i64 noundef %i.af) ; 0 uses
  br label %tcg_gen_sari_i32.exit

tcg_target_sextract_valid.exit.thread:            ; preds = %bb.g, %bb.f, %tcg_target_sextract_valid.exit
  switch i32 %i.c, label %bb.i [
    i32 8, label %tcg_target_sextract_valid.exit39
    i32 16, label %tcg_target_sextract_valid.exit39
  ]

tcg_target_sextract_valid.exit39:                 ; preds = %tcg_target_sextract_valid.exit.thread, %tcg_target_sextract_valid.exit.thread
  %i.ap = zext nneg i32 %i.c to i64
  %i.aq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.av
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 0, i64 noundef %i.au, i64 noundef %i.ax, i64 noundef 0, i64 noundef %i.ap) ; 0 uses
  %i.az = icmp eq i32 %2, 0
  br i1 %i.az, label %tcg_gen_sari_i32.exit, label %bb.h

bb.h:                                             ; preds = %tcg_target_sextract_valid.exit39
  %i.ba = tail call ptr @tcg_constant_i32(i32 noundef %2) #6
  %i.bb = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = tail call ptr @tcg_gen_op3(i32 noundef 48, i32 noundef 0, i64 noundef %i.bd, i64 noundef %i.bd, i64 noundef %i.bg) ; 0 uses
  br label %tcg_gen_sari_i32.exit

bb.i:                                             ; preds = %tcg_target_sextract_valid.exit.thread
  switch i32 %3, label %tcg_gen_shli_i32.exit [
    i32 8, label %tcg_target_sextract_valid.exit44
    i32 16, label %tcg_target_sextract_valid.exit44
  ]

tcg_target_sextract_valid.exit44:                 ; preds = %bb.i, %bb.i
  %i.bi = icmp eq i32 %2, 0
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 3 uses
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %tcg_target_sextract_valid.exit44
  %.not.i.i46 = icmp eq ptr %0, %1
  br i1 %.not.i.i46, label %.tcg_gen_shri_i32.exit_crit_edge, label %bb.k

.tcg_gen_shri_i32.exit_crit_edge:                 ; preds = %bb.j
  %.pre58 = ptrtoint ptr %0 to i64
  br label %tcg_gen_shri_i32.exit

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %.pre, align 8            ; 2 uses
  %i.bk = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %1 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.bm, i64 noundef %i.bp) ; 0 uses
  br label %tcg_gen_shri_i32.exit

bb.l:                                             ; preds = %tcg_target_sextract_valid.exit44
  %i.br = tail call ptr @tcg_constant_i32(i32 noundef %2) #6
  %i.bs = load ptr, ptr %.pre, align 8            ; 3 uses
  %i.bt = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %1 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.br to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bz
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 0, i64 noundef %i.bv, i64 noundef %i.by, i64 noundef %i.cb) ; 0 uses
  br label %tcg_gen_shri_i32.exit

tcg_gen_shri_i32.exit:                            ; preds = %.tcg_gen_shri_i32.exit_crit_edge, %bb.k, %bb.l
  %.pre-phi59 = phi i64 [ %.pre58, %.tcg_gen_shri_i32.exit_crit_edge ], [ %i.bk, %bb.k ], [ %i.bt, %bb.l ]
  %i.cd = zext nneg i32 %3 to i64
  %i.ce = load ptr, ptr %.pre, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.pre-phi59
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ch = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 0, i64 noundef %i.cg, i64 noundef %i.cg, i64 noundef 0, i64 noundef %i.cd) ; 0 uses
  br label %tcg_gen_sari_i32.exit

tcg_gen_shli_i32.exit:                            ; preds = %bb.i
  %i.ci = sub nuw nsw i32 32, %3                  ; 2 uses
  %i.cj = sub nuw nsw i32 %i.ci, %2
  %i.ck = tail call ptr @tcg_constant_i32(i32 noundef %i.cj) #6
  %i.cl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %1 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cq
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.ck to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ct
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = tail call ptr @tcg_gen_op3(i32 noundef 51, i32 noundef 0, i64 noundef %i.cp, i64 noundef %i.cs, i64 noundef %i.cv) ; 0 uses
  %i.cx = tail call ptr @tcg_constant_i32(i32 noundef %i.ci) #6
  %i.cy = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cn
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = tail call ptr @tcg_gen_op3(i32 noundef 48, i32 noundef 0, i64 noundef %i.da, i64 noundef %i.da, i64 noundef %i.dd) ; 0 uses
  br label %tcg_gen_sari_i32.exit

tcg_gen_sari_i32.exit:                            ; preds = %tcg_gen_shli_i32.exit, %bb.h, %tcg_target_sextract_valid.exit39, %bb.e, %bb.d, %bb.c, %tcg_gen_shri_i32.exit, %tcg_target_sextract_valid.exit.thread54
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_extract2_i32(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %3, 33
  tail call void @llvm.assume(i1 %i.a)
  switch i32 %3, label %bb.f [
    i32 0, label %bb.b
    i32 32, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %tcg_gen_mov_i32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.i) ; 0 uses
  br label %tcg_gen_mov_i32.exit

bb.d:                                             ; preds = %bb.a
  %.not.i17 = icmp eq ptr %0, %2
  br i1 %.not.i17, label %tcg_gen_mov_i32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %2 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %tcg_gen_mov_i32.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %1, %2
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @tcg_gen_rotri_i32(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  br label %tcg_gen_mov_i32.exit

bb.h:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %3 to i64
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = ptrtoint ptr %0 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ad
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = tail call ptr @tcg_gen_op4(i32 noundef 23, i32 noundef 0, i64 noundef %i.z, i64 noundef %i.ac, i64 noundef %i.af, i64 noundef range(i64 -2147483648, 4294967296) %i.u) ; 0 uses
  br label %tcg_gen_mov_i32.exit

tcg_gen_mov_i32.exit:                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_add2_i32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @tcg_op_supported(i32 noundef 61, i32 noundef 0, i32 noundef 0) #6
  %i.b = tail call ptr @tcg_temp_ebb_new_i32() #6 ; 7 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %4 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = tail call ptr @tcg_gen_op3(i32 noundef 59, i32 noundef 0, i64 noundef %i.g, i64 noundef %i.j, i64 noundef %i.m) ; 0 uses
  %i.o = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.p = ptrtoint ptr %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %3 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %5 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = tail call ptr @tcg_gen_op3(i32 noundef 61, i32 noundef 0, i64 noundef %i.r, i64 noundef %i.u, i64 noundef %i.x) ; 0 uses
  %.not.i = icmp eq ptr %0, %i.b
  br i1 %.not.i, label %tcg_gen_mov_i32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %0 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.e
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.ac, i64 noundef %i.ae) ; 0 uses
  br label %tcg_gen_mov_i32.exit

bb.d:                                             ; preds = %bb.a
  %i.ag = tail call ptr @tcg_temp_ebb_new_i32() #6 ; 2 uses
  %i.ah = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %4 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = tail call ptr @tcg_gen_op3(i32 noundef 7, i32 noundef 0, i64 noundef %i.al, i64 noundef %i.ao, i64 noundef %i.ar) ; 0 uses
  %i.at = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aj
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = tail call ptr @tcg_gen_op4(i32 noundef 49, i32 noundef 0, i64 noundef %i.aw, i64 noundef %i.ay, i64 noundef %i.ba, i64 noundef range(i64 -2147483648, 4294967296) 10) ; 0 uses
  %i.bc = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.bd = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %3 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bg
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %5 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = tail call ptr @tcg_gen_op3(i32 noundef 7, i32 noundef 0, i64 noundef %i.bf, i64 noundef %i.bi, i64 noundef %i.bl) ; 0 uses
  %i.bn = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bd
  %i.bp = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.au
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = tail call ptr @tcg_gen_op3(i32 noundef 7, i32 noundef 0, i64 noundef %i.bp, i64 noundef %i.bp, i64 noundef %i.br) ; 0 uses
  %.not.i25 = icmp eq ptr %0, %i.b
  br i1 %.not.i25, label %tcg_gen_mov_i32.exit26, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.bu = ptrtoint ptr %0 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.aj
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 0, i64 noundef %i.bw, i64 noundef %i.by) ; 0 uses
  br label %tcg_gen_mov_i32.exit26

tcg_gen_mov_i32.exit26:                           ; preds = %bb.d, %bb.e
  tail call void @tcg_temp_free_i32(ptr noundef %i.b) #6
  br label %tcg_gen_mov_i32.exit

tcg_gen_mov_i32.exit:                             ; preds = %bb.c, %bb.b, %tcg_gen_mov_i32.exit26
  %.sink = phi ptr [ %i.ag, %tcg_gen_mov_i32.exit26 ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
end_hunk_1
begin_hunk_2_@tcg_gen_andi_i64:bb.a
    i32 32, label %tcg_target_extract_valid.exit15.thread
    i32 16, label %tcg_target_extract_valid.exit15
    i32 8, label %tcg_target_extract_valid.exit15
  ]

tcg_target_extract_valid.exit15.thread:           ; preds = %bb.g
  %i.y = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.y)
  br label %.loopexit

tcg_target_extract_valid.exit15:                  ; preds = %bb.g, %bb.g
  %i.z = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.z)
  switch i32 %i.x, label %bb.h [
    i32 16, label %.loopexit
    i32 8, label %.loopexit
  ]

.loopexit:                                        ; preds = %tcg_target_extract_valid.exit15, %tcg_target_extract_valid.exit15, %tcg_target_extract_valid.exit15.thread
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 1, i64 noundef %i.ae, i64 noundef %i.ah, i64 noundef 0, i64 noundef %i.w) ; 0 uses
  br label %tcg_gen_movi_i64.exit

bb.h:                                             ; preds = %tcg_target_extract_valid.exit15
  %notmask.i = shl nsw i64 -1, %i.w
  %i.aj = xor i64 %notmask.i, -1
  br label %tailrecurse

tcg_gen_extract_i64.exit:                         ; preds = %bb.g, %bb.f
  %i.ak = tail call ptr @tcg_constant_i64(i64 noundef %.tr28) #6
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = ptrtoint ptr %0 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %1 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.at
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = tail call ptr @tcg_gen_op3(i32 noundef 8, i32 noundef 1, i64 noundef %i.ap, i64 noundef %i.as, i64 noundef %i.av) ; 0 uses
  br label %tcg_gen_movi_i64.exit

tcg_gen_movi_i64.exit:                            ; preds = %.loopexit, %bb.e, %bb.d, %bb.c, %bb.b, %tcg_gen_extract_i64.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_extract_i64(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 64
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nuw nsw i32 %3, %2                   ; 4 uses
  %i.d = icmp samesign ult i32 %i.c, 65
  tail call void @llvm.assume(i1 %i.d)
  switch i32 %i.c, label %bb.f [
    i32 64, label %bb.b
    i32 32, label %tcg_target_extract_valid.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %3, 64
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %tcg_gen_shri_i64.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 1, i64 noundef %i.j, i64 noundef %i.m) ; 0 uses
  br label %tcg_gen_shri_i64.exit

bb.e:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i32 64, %3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = tail call ptr @tcg_constant_i64(i64 noundef %i.p) #6
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = ptrtoint ptr %0 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 1, i64 noundef %i.v, i64 noundef %i.y, i64 noundef %i.ab) ; 0 uses
  br label %tcg_gen_shri_i64.exit

bb.f:                                             ; preds = %bb.a
  switch i32 %2, label %tcg_target_extract_valid.exit47 [
    i32 0, label %tcg_target_extract_valid.exit
    i32 8, label %.split
  ]

.split:                                           ; preds = %bb.f
  %i.ad = icmp eq i32 %3, 8
  br i1 %i.ad, label %tcg_target_extract_valid.exit.thread, label %tcg_target_extract_valid.exit47

tcg_target_extract_valid.exit:                    ; preds = %bb.f
  switch i32 %3, label %.thread [
    i32 16, label %tcg_target_extract_valid.exit.thread
    i32 8, label %tcg_target_extract_valid.exit.thread
  ]

.thread:                                          ; preds = %tcg_target_extract_valid.exit
  %i.ae = zext nneg i32 %3 to i64
  %notmask62 = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask62, -1
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %1, i64 noundef %i.af)
  br label %tcg_gen_shri_i64.exit

tcg_target_extract_valid.exit.thread:             ; preds = %tcg_target_extract_valid.exit, %tcg_target_extract_valid.exit, %bb.a, %.split
  %i.ag = zext nneg i32 %2 to i64
  %i.ah = zext nneg i32 %3 to i64
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %0 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 1, i64 noundef %i.am, i64 noundef %i.ap, i64 noundef range(i64 0, 4294967296) %i.ag, i64 noundef %i.ah) ; 0 uses
  br label %tcg_gen_shri_i64.exit

tcg_target_extract_valid.exit47:                  ; preds = %bb.f, %.split
  %.pn = zext nneg i32 %3 to i64
  %.in = shl nsw i64 -1, %.pn
  %i.ar = xor i64 %.in, -1                        ; 2 uses
  switch i32 %i.c, label %bb.g [
    i32 16, label %tcg_gen_shri_i64.exit50
    i32 8, label %tcg_gen_shri_i64.exit50
  ]

tcg_gen_shri_i64.exit50:                          ; preds = %tcg_target_extract_valid.exit47, %tcg_target_extract_valid.exit47
  %i.as = zext nneg i32 %i.c to i64
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 1, i64 noundef %i.ax, i64 noundef %i.ba, i64 noundef 0, i64 noundef %i.as) ; 0 uses
  %i.bc = zext nneg i32 %2 to i64
  %i.bd = tail call ptr @tcg_constant_i64(i64 noundef %i.bc) #6
  %i.be = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.av
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 1, i64 noundef %i.bg, i64 noundef %i.bg, i64 noundef %i.bj) ; 0 uses
  br label %tcg_gen_shri_i64.exit

bb.g:                                             ; preds = %tcg_target_extract_valid.exit47
  %i.bl = tail call zeroext i1 @tcg_op_imm_match(i32 noundef 8, i32 noundef 1, i64 noundef %i.ar) #6
  br i1 %i.bl, label %tcg_gen_shri_i64.exit53, label %bb.h

tcg_gen_shri_i64.exit53:                          ; preds = %bb.g
  %i.bm = zext nneg i32 %2 to i64
  %i.bn = tail call ptr @tcg_constant_i64(i64 noundef %i.bm) #6
  %i.bo = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = ptrtoint ptr %0 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %1 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bn to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 1, i64 noundef %i.bs, i64 noundef %i.bv, i64 noundef %i.by) ; 0 uses
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.ar)
  br label %tcg_gen_shri_i64.exit

bb.h:                                             ; preds = %bb.g
  %i.ca = sub nuw nsw i32 64, %3                  ; 3 uses
  %i.cb = icmp eq i32 %i.ca, %2
  br i1 %i.cb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not.i.i55 = icmp eq ptr %0, %1
  br i1 %.not.i.i55, label %tcg_gen_shli_i64.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = ptrtoint ptr %0 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %1 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 1, i64 noundef %i.cg, i64 noundef %i.cj) ; 0 uses
  br label %tcg_gen_shli_i64.exit

bb.k:                                             ; preds = %bb.h
  %4 = sub nuw nsw i32 %i.ca, %2
  %i.cl = zext nneg i32 %4 to i64
  %i.cm = tail call ptr @tcg_constant_i64(i64 noundef %i.cl) #6
  %i.cn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = ptrtoint ptr %0 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %1 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cs
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cm to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cv
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = tail call ptr @tcg_gen_op3(i32 noundef 51, i32 noundef 1, i64 noundef %i.cr, i64 noundef %i.cu, i64 noundef %i.cx) ; 0 uses
  br label %tcg_gen_shli_i64.exit

tcg_gen_shli_i64.exit:                            ; preds = %bb.i, %bb.j, %bb.k
  %i.cz = icmp eq i32 %3, 64
  br i1 %i.cz, label %tcg_gen_shri_i64.exit, label %bb.l

bb.l:                                             ; preds = %tcg_gen_shli_i64.exit
  %i.da = zext nneg i32 %i.ca to i64
  %i.db = tail call ptr @tcg_constant_i64(i64 noundef %i.da) #6
  %i.dc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = ptrtoint ptr %0 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dh = ptrtoint ptr %i.db to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 1, i64 noundef %i.dg, i64 noundef %i.dg, i64 noundef %i.dj) ; 0 uses
  br label %tcg_gen_shri_i64.exit

tcg_gen_shri_i64.exit:                            ; preds = %bb.l, %tcg_gen_shli_i64.exit, %bb.e, %bb.d, %bb.c, %tcg_gen_shri_i64.exit53, %tcg_gen_shri_i64.exit50, %.thread, %tcg_target_extract_valid.exit.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_ori_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.f [
    i64 -1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @tcg_constant_i64(i64 noundef -1) #6 ; 2 uses
  %.not.i.i = icmp eq ptr %0, %i.a
  br i1 %.not.i.i, label %tcg_gen_movi_i64.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 1, i64 noundef %i.f, i64 noundef %i.i) ; 0 uses
  br label %tcg_gen_movi_i64.exit

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %tcg_gen_movi_i64.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 1, i64 noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %tcg_gen_movi_i64.exit

bb.f:                                             ; preds = %bb.a
  %i.t = tail call ptr @tcg_constant_i64(i64 noundef %2) #6
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = ptrtoint ptr %0 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = tail call ptr @tcg_gen_op3(i32 noundef 42, i32 noundef 1, i64 noundef %i.y, i64 noundef %i.ab, i64 noundef %i.ae) ; 0 uses
  br label %tcg_gen_movi_i64.exit

tcg_gen_movi_i64.exit:                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_xori_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.f [
    i64 0, label %bb.b
    i64 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %tcg_gen_mov_i64.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 1, i64 noundef %i.e, i64 noundef %i.h) ; 0 uses
  br label %tcg_gen_mov_i64.exit

bb.d:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @tcg_op_supported(i32 noundef 41, i32 noundef 1, i32 noundef 0) #6
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = tail call ptr @tcg_gen_op2(i32 noundef 41, i32 noundef 1, i64 noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %tcg_gen_mov_i64.exit

bb.f:                                             ; preds = %bb.a, %bb.d
  %i.t = tail call ptr @tcg_constant_i64(i64 noundef %2) #6
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = ptrtoint ptr %0 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = tail call ptr @tcg_gen_op3(i32 noundef 58, i32 noundef 1, i64 noundef %i.y, i64 noundef %i.ab, i64 noundef %i.ae) ; 0 uses
  br label %tcg_gen_mov_i64.exit

tcg_gen_mov_i64.exit:                             ; preds = %bb.c, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_shli_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ult i64 %2, 64
  tail call void @llvm.assume(i1 %or.cond)
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %tcg_gen_mov_i64.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 1, i64 noundef %i.f, i64 noundef %i.i) ; 0 uses
  br label %tcg_gen_mov_i64.exit

bb.d:                                             ; preds = %bb.a
  %i.k = tail call ptr @tcg_constant_i64(i64 noundef %2) #6
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = ptrtoint ptr %0 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.k to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = tail call ptr @tcg_gen_op3(i32 noundef 51, i32 noundef 1, i64 noundef %i.p, i64 noundef %i.s, i64 noundef %i.v) ; 0 uses
  br label %tcg_gen_mov_i64.exit

tcg_gen_mov_i64.exit:                             ; preds = %bb.c, %bb.b, %bb.d
end_hunk_2
begin_hunk_3_@tcg_gen_remu_i64:bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bl = load ptr, ptr @helper_info_remu_i64, align 8
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = ptrtoint ptr %0 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = ptrtoint ptr %1 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  %i.bs = ptrtoint ptr %2 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs
  tail call void @tcg_gen_call2(ptr noundef %i.bl, ptr noundef nonnull @helper_info_remu_i64, ptr noundef %i.bp, ptr noundef %i.br, ptr noundef %i.bt) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_ext8s_i64(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef range(i64 0, 4294967296) 0, i64 noundef 8) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_sextract_i64(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 64
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nuw nsw i32 %3, %2                   ; 4 uses
  %i.d = icmp samesign ult i32 %i.c, 65
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i32 %i.c, 64
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %3, 64
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %tcg_gen_sari_i64.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 1, i64 noundef %i.k, i64 noundef %i.n) ; 0 uses
  br label %tcg_gen_sari_i64.exit

bb.e:                                             ; preds = %bb.b
  %i.p = sub nuw nsw i32 64, %3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = tail call ptr @tcg_constant_i64(i64 noundef %i.q) #6
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aa
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = tail call ptr @tcg_gen_op3(i32 noundef 48, i32 noundef 1, i64 noundef %i.w, i64 noundef %i.z, i64 noundef %i.ac) ; 0 uses
  br label %tcg_gen_sari_i64.exit

bb.f:                                             ; preds = %bb.a
  %cond = icmp eq i32 %2, 0                       ; 3 uses
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  switch i32 %3, label %bb.h [
    i32 8, label %tcg_target_sextract_valid.exit
    i32 16, label %tcg_target_sextract_valid.exit
    i32 32, label %tcg_target_sextract_valid.exit
  ]

tcg_target_sextract_valid.exit:                   ; preds = %bb.g, %bb.g, %bb.g
  %i.ae = zext nneg i32 %3 to i64
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 1, i64 noundef %i.aj, i64 noundef %i.am, i64 noundef range(i64 0, 4294967296) 0, i64 noundef %i.ae) ; 0 uses
  br label %tcg_gen_sari_i64.exit

bb.h:                                             ; preds = %bb.f, %bb.g
  switch i32 %i.c, label %tcg_target_sextract_valid.exit39 [
    i32 8, label %bb.i
    i32 16, label %bb.i
    i32 32, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ao = zext nneg i32 %i.c to i64
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %1 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 1, i64 noundef %i.at, i64 noundef %i.aw, i64 noundef 0, i64 noundef %i.ao) ; 0 uses
  br i1 %cond, label %tcg_gen_sari_i64.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %2 to i64
  %i.az = tail call ptr @tcg_constant_i64(i64 noundef %i.ay) #6
  %i.ba = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ar
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = tail call ptr @tcg_gen_op3(i32 noundef 48, i32 noundef 1, i64 noundef %i.bc, i64 noundef %i.bc, i64 noundef %i.bf) ; 0 uses
  br label %tcg_gen_sari_i64.exit

tcg_target_sextract_valid.exit39:                 ; preds = %bb.h
  switch i32 %3, label %tcg_target_sextract_valid.exit44 [
    i32 8, label %bb.k
    i32 16, label %bb.k
    i32 32, label %bb.k
  ]

bb.k:                                             ; preds = %tcg_target_sextract_valid.exit39, %tcg_target_sextract_valid.exit39, %tcg_target_sextract_valid.exit39
  br i1 %cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not.i.i46 = icmp eq ptr %0, %1
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 3 uses
  br i1 %.not.i.i46, label %.tcg_gen_shri_i64.exit_crit_edge, label %bb.m

.tcg_gen_shri_i64.exit_crit_edge:                 ; preds = %bb.l
  %.pre55 = ptrtoint ptr %0 to i64
  br label %tcg_gen_shri_i64.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %.pre, align 8            ; 2 uses
  %i.bi = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bl
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = tail call ptr @tcg_gen_op2(i32 noundef 6, i32 noundef 1, i64 noundef %i.bk, i64 noundef %i.bn) ; 0 uses
  br label %tcg_gen_shri_i64.exit

bb.n:                                             ; preds = %bb.k
  %i.bp = zext nneg i32 %2 to i64
  %i.bq = tail call ptr @tcg_constant_i64(i64 noundef %i.bp) #6
  %i.br = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.bt = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %1 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bq to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bz
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 1, i64 noundef %i.bv, i64 noundef %i.by, i64 noundef %i.cb) ; 0 uses
  br label %tcg_gen_shri_i64.exit

tcg_gen_shri_i64.exit:                            ; preds = %.tcg_gen_shri_i64.exit_crit_edge, %bb.m, %bb.n
  %.pre-phi56 = phi i64 [ %.pre55, %.tcg_gen_shri_i64.exit_crit_edge ], [ %i.bi, %bb.m ], [ %i.bt, %bb.n ]
  %.pre-phi = phi ptr [ %.pre, %.tcg_gen_shri_i64.exit_crit_edge ], [ %.pre, %bb.m ], [ %i.br, %bb.n ]
  %i.cd = zext nneg i32 %3 to i64
  %i.ce = load ptr, ptr %.pre-phi, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.pre-phi56
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ch = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 1, i64 noundef %i.cg, i64 noundef %i.cg, i64 noundef 0, i64 noundef %i.cd) ; 0 uses
  br label %tcg_gen_sari_i64.exit

tcg_target_sextract_valid.exit44:                 ; preds = %tcg_target_sextract_valid.exit39
  %i.ci = sub nuw nsw i32 64, %3                  ; 2 uses
  %i.cj = sub nuw nsw i32 %i.ci, %2
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = tail call ptr @tcg_constant_i64(i64 noundef %i.ck) #6
  %i.cm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.co = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %1 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cr
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cl to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cu
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = tail call ptr @tcg_gen_op3(i32 noundef 51, i32 noundef 1, i64 noundef %i.cq, i64 noundef %i.ct, i64 noundef %i.cw) ; 0 uses
  %i.cy = zext nneg i32 %i.ci to i64
  %i.cz = tail call ptr @tcg_constant_i64(i64 noundef %i.cy) #6
  %i.da = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.co
  %i.dc = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = tail call ptr @tcg_gen_op3(i32 noundef 48, i32 noundef 1, i64 noundef %i.dc, i64 noundef %i.dc, i64 noundef %i.df) ; 0 uses
  br label %tcg_gen_sari_i64.exit

tcg_gen_sari_i64.exit:                            ; preds = %tcg_target_sextract_valid.exit44, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %tcg_gen_shri_i64.exit, %tcg_target_sextract_valid.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_ext16s_i64(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef range(i64 0, 4294967296) 0, i64 noundef 16) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_ext32s_i64(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call noundef ptr @tcg_gen_op4(i32 noundef 50, i32 noundef 1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef range(i64 0, 4294967296) 0, i64 noundef 32) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_ext8u_i64(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef range(i64 0, 4294967296) 0, i64 noundef 8), !inline_history !9 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_ext16u_i64(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef range(i64 0, 4294967296) 0, i64 noundef 16), !inline_history !9 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_ext32u_i64(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef range(i64 0, 4294967296) 0, i64 noundef 32), !inline_history !9 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_bswap16_i64(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %2, 4
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %2, 2
  %.not26 = icmp eq i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not26)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call zeroext i1 @tcg_op_supported(i32 noundef 10, i32 noundef 1, i32 noundef 0) #6
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = sext i32 %2 to i64
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = tail call ptr @tcg_gen_op3(i32 noundef 10, i32 noundef 1, i64 noundef %i.i, i64 noundef %i.l, i64 noundef range(i64 -2147483648, 2147483648) %i.d) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.n = tail call ptr @tcg_temp_ebb_new_i64() #6 ; 2 uses
  %i.o = tail call ptr @tcg_temp_ebb_new_i64() #6 ; 4 uses
  %i.p = tail call ptr @tcg_constant_i64(i64 noundef 8) #6
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = tail call ptr @tcg_gen_op3(i32 noundef 52, i32 noundef 1, i64 noundef %i.u, i64 noundef %i.x, i64 noundef %i.aa) ; 0 uses
  %i.ac = and i32 %2, 1
  %.not27 = icmp eq i32 %i.ac, 0
  br i1 %.not27, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.q, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.s
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 1, i64 noundef %i.af, i64 noundef %i.af, i64 noundef range(i64 0, 4294967296) 0, i64 noundef 8), !inline_history !9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call ptr @tcg_constant_i64(i64 noundef 56) #6
  %i.ai = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.aj = ptrtoint ptr %i.o to i64                ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.v
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = tail call ptr @tcg_gen_op3(i32 noundef 51, i32 noundef 1, i64 noundef %i.al, i64 noundef %i.an, i64 noundef %i.aq) ; 0 uses
  %i.as = tail call ptr @tcg_constant_i64(i64 noundef 48) #6
  %i.at = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aj
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = tail call ptr @tcg_gen_op3(i32 noundef 48, i32 noundef 1, i64 noundef %i.av, i64 noundef %i.av, i64 noundef %i.ay) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ba = and i32 %2, 2
  %.not28 = icmp eq i32 %i.ba, 0
  br i1 %.not28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.bc = ptrtoint ptr %i.o to i64                ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.v
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = tail call noundef ptr @tcg_gen_op4(i32 noundef 22, i32 noundef 1, i64 noundef %i.be, i64 noundef %i.bg, i64 noundef range(i64 0, 4294967296) 0, i64 noundef 8), !inline_history !9 ; 0 uses
  %i.bi = tail call ptr @tcg_constant_i64(i64 noundef 8) #6
end_hunk_3
