Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rfc3961_simplified?download=true
inline.NumInlined: 90
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rfc3961_get_mic:bb.a
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i32 %i.x, 0
  br i1 %i.z, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.d, align 8
  %i.aa = getelementptr i8, ptr %.val, i64 -16
  %.val.val = load i32, ptr %i.aa, align 8
  %i.ab = add i32 %.val.val, 7
  %i.ac = or i32 %i.ab, 7
  %i.ad = add i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.n, i64 %i.ae   ; 2 uses
  %i.ag = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 0, ptr noundef %i.af) #13 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i32 %i.ag, 0
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i16, ptr %i.a, align 4
  %i.ak = zext i16 %i.aj to i64                   ; 2 uses
  %i.al = sub nsw i64 %6, %i.ak
  %i.am = tail call i64 @sg_pcopy_from_buffer(ptr noundef %3, i32 noundef %4, ptr noundef %i.af, i64 noundef %i.ak, i64 noundef %i.al) #13
  %i.an = load i16, ptr %i.a, align 4
  %i.ao = zext i16 %i.an to i64                   ; 2 uses
  %.not57 = icmp eq i64 %i.am, %i.ao
  %i.ap = add i64 %7, %i.ao
  %spec.select = select i1 %.not57, i64 %i.ap, i64 -14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.047 = phi i64 [ %i.p, %bb.c ], [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %i.ah, %bb.g ], [ %spec.select, %bb.h ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.n) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %.critedge, %bb.i
  %.0 = phi i64 [ -90, %bb.b ], [ %.047, %bb.i ], [ -12, %.critedge ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_shash_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @rfc3961_verify_mic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %5, align 8                ; 2 uses
  %i.b = load i64, ptr %6, align 8                ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 52         ; 4 uses
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = icmp ult i64 %i.b, %i.e
  br i1 %i.f, label %bb.i, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.a
  %i.g = add i64 %i.a, %i.e
  %i.h = sub nuw i64 %i.b, %i.e
  %i.i = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val65 = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.j = getelementptr i8, ptr %.val65, i64 -16
  %.val65.val = load i32, ptr %i.j, align 8
  %i.k = add i32 %.val65.val, 7
  %i.l = or i32 %i.k, 7
  %i.m = add i32 %i.l, 1
  %i.n = getelementptr i8, ptr %.val65, i64 -8
  %.val67.val = load i32, ptr %i.n, align 8
  %i.o = shl i32 %.val67.val, 1
  %i.p = add i32 %i.o, 14
  %i.q = and i32 %i.p, -16
  %i.r = add i32 %i.m, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.s, i32 noundef range(i32 256, 0) 3392) #14 ; 8 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %.val64 = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.u = getelementptr i8, ptr %.val64, i64 -16
  %.val64.val = load i32, ptr %i.u, align 8
  %i.v = add i32 %.val64.val, 7
  %i.w = or i32 %i.v, 7
  %i.x = add i32 %i.w, 1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %i.t, i64 %i.y     ; 3 uses
  %i.aa = getelementptr i8, ptr %.val64, i64 -8
  %.val66.val = load i32, ptr %i.aa, align 8
  %i.ab = add i32 %.val66.val, 7
  %i.ac = and i32 %i.ab, -8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.z, i64 %i.ad   ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.af = tail call i32 @crypto_shash_init(ptr noundef nonnull %i.t) #13 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not61 = icmp eq ptr %2, null
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i32, ptr %2, align 8
  %i.ak = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.t, ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef null) #13 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = tail call i32 @crypto_shash_update_sg(ptr noundef nonnull %i.t, ptr noundef %3, i64 noundef %i.g, i64 noundef %i.h) #17 ; 0 uses
  %i.an = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.t, ptr noundef null, i32 noundef 0, ptr noundef %i.z) #13 ; 0 uses
  %i.ao = load i16, ptr %i.c, align 4
  %i.ap = zext i16 %i.ao to i64
  %i.aq = tail call i64 @sg_pcopy_to_buffer(ptr noundef %3, i32 noundef %4, ptr noundef %i.ae, i64 noundef %i.ap, i64 noundef %i.a) #13 ; 3 uses
  %i.ar = load i16, ptr %i.c, align 4
  %i.as = zext i16 %i.ar to i64
  %.not62 = icmp eq i64 %i.aq, %i.as
  br i1 %.not62, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr %i.z, ptr %i.ae, i64 %i.aq)
  %.not63 = icmp eq i32 %bcmp, 0
  br i1 %.not63, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = load i64, ptr %5, align 8
  %i.au = add i64 %i.at, %i.aq
  store i64 %i.au, ptr %5, align 8
  %i.av = load i16, ptr %i.c, align 4
  %i.aw = zext i16 %i.av to i64
  %i.ax = load i64, ptr %6, align 8
  %i.ay = sub i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %6, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.g
  %.054 = phi i32 [ %i.af, %bb.b ], [ %i.ak, %bb.d ], [ -14, %bb.e ], [ 0, %bb.g ], [ -74, %bb.f ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.t) #13
  br label %bb.i

bb.i:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %bb.h
  %.0 = phi i32 [ -71, %bb.a ], [ %.054, %bb.h ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfc3961_calc_PRF(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca [1 x %struct.scatterlist], align 16 ; 6 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [464 x i8], align 8               ; 13 uses
  %6 = alloca %struct.krb5_buffer, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i32
  %i.f = load i32, ptr %3, align 8
  %i.g = getelementptr i8, ptr %0, i64 60
  %i.h = load i16, ptr %i.g, align 4
  %i.i = zext i16 %i.h to i32
  %.not = icmp eq i32 %i.f, %i.i
  br i1 %.not, label %_kzalloc_noprof.exit, label %bb.r

_kzalloc_noprof.exit:                             ; preds = %bb.a
  store i64 0, ptr %6, align 8, !annotation !10
  %i.j = getelementptr i8, ptr %0, i64 58
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 54
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  store i32 %i.o, ptr %6, align 8
  %i.p = add nuw nsw i32 %i.l, 15
  %i.q = and i32 %i.p, 131056                     ; 2 uses
  %i.r = or i32 %4, 256                           ; 3 uses
  %i.s = add nuw nsw i32 %i.o, 15
  %i.t = and i32 %i.s, 131056
  %i.u = add nuw nsw i32 %i.t, %i.q
  %i.v = zext nneg i32 %i.u to i64
  %i.w = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.v, i32 noundef range(i32 256, 0) %i.r) #14 ; 5 uses
  %.not31 = icmp eq ptr %i.w, null
  br i1 %.not31, label %bb.r, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %i.x = zext nneg i32 %i.q to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.aa, align 8
  %i.ab = tail call ptr @crypto_alloc_shash(ptr noundef %.val, i32 noundef 0, i32 noundef 0) #13 ; 7 uses
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.ac, label %bb.c, label %_kzalloc_noprof.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = icmp eq ptr %i.ab, inttoptr (i64 -2 to ptr)
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.ae, label %rfc3961_calc_E.exit, label %rfc3961_calc_H.exit

_kzalloc_noprof.exit.i:                           ; preds = %bb.b
  %i.ag = getelementptr i8, ptr %i.ab, i64 24     ; 2 uses
  %.val.i = load ptr, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %.val.i, i64 -16
  %.val.val.i = load i32, ptr %i.ah, align 8
  %i.ai = zext i32 %.val.val.i to i64
  %i.aj = add nuw nsw i64 %i.ai, 8
  %i.ak = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.aj, i32 noundef range(i32 256, 0) %i.r) #14 ; 5 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.h, label %_kzalloc_noprof.exit53.i

_kzalloc_noprof.exit53.i:                         ; preds = %_kzalloc_noprof.exit.i
  %.val44.i = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr i8, ptr %.val44.i, i64 -8
  %.val44.val.i = load i32, ptr %i.al, align 8    ; 2 uses
  %i.am = zext i32 %.val44.val.i to i64
  %i.an = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.am, i32 noundef range(i32 256, 0) %i.r) #14 ; 4 uses
  %.not43.i = icmp eq ptr %i.an, null
  br i1 %.not43.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit53.i
  store ptr %i.ab, ptr %i.ak, align 8
  %i.ao = tail call i32 @crypto_shash_init(ptr noundef nonnull %i.ak) #13 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %2, align 8
  %i.at = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.ak, ptr noundef %i.ar, i32 noundef %i.as, ptr noundef nonnull %i.an) #13 ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.038.i = phi i32 [ %i.ao, %bb.d ], [ %i.at, %bb.e ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.an) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_kzalloc_noprof.exit53.i
  %.1.i = phi i32 [ %.038.i, %bb.f ], [ %i.at, %bb.e ], [ -12, %_kzalloc_noprof.exit53.i ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.ak) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_kzalloc_noprof.exit.i
  %.sroa.040.0 = phi i32 [ %i.l, %_kzalloc_noprof.exit.i ], [ %.val44.val.i, %bb.g ]
  %.sroa.843.0 = phi ptr [ %i.w, %_kzalloc_noprof.exit.i ], [ %i.an, %bb.g ]
  %.2.i = phi i32 [ -12, %_kzalloc_noprof.exit.i ], [ %.1.i, %bb.g ]
  tail call void @crypto_destroy_tfm(ptr noundef %i.ab, ptr noundef %i.ab) #13
  br label %rfc3961_calc_H.exit

rfc3961_calc_H.exit:                              ; preds = %bb.c, %bb.h
  %.sroa.040.1 = phi i32 [ %i.l, %bb.c ], [ %.sroa.040.0, %bb.h ]
  %.sroa.843.1 = phi ptr [ %i.w, %bb.c ], [ %.sroa.843.0, %bb.h ]
  %.0.i = phi i32 [ %i.af, %bb.c ], [ %.2.i, %bb.h ] ; 2 uses
  %i.av = icmp slt i32 %.0.i, 0
  br i1 %i.av, label %rfc3961_calc_E.exit, label %bb.i

bb.i:                                             ; preds = %rfc3961_calc_H.exit
  %i.aw = sub nsw i32 0, %i.e
  %i.ax = and i32 %.sroa.040.1, %i.aw             ; 3 uses
  %i.ay = call i32 @rfc3961_calc_DK(ptr noundef %0, ptr noundef %1, ptr noundef @rfc3961_calc_PRF.prfconstant, ptr noundef nonnull %6, i32 noundef %4) #17, !srcloc !28 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %rfc3961_calc_E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %0, i64 40
  %.val32 = load ptr, ptr %i.ba, align 8
  %i.bb = call ptr @crypto_alloc_sync_skcipher(ptr noundef %.val32, i32 noundef 0, i32 noundef 0) #13 ; 8 uses
  %i.bc = icmp ugt ptr %i.bb, inttoptr (i64 -4096 to ptr)
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = icmp eq ptr %i.bb, inttoptr (i64 -2 to ptr)
  %i.bf = trunc i64 %i.bd to i32
  %spec.select.i38 = select i1 %i.be, i32 -65, i32 %i.bf
  br label %rfc3961_calc_E.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.z, align 8
  %i.bh = load i32, ptr %6, align 8
  %i.bi = call i32 @crypto_skcipher_setkey(ptr noundef %i.bb, ptr noundef %i.bg, i32 noundef %i.bh) #13 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bk = getelementptr i8, ptr %i.bb, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.bm = load i32, ptr %3, align 8
  %.not.i.i = icmp eq i32 %i.ax, %i.bm
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "739: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 739b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 739) #12, !srcloc !29
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.4, i32 112, i32 2305, i64 16) #12, !srcloc !30
  call void asm sideeffect "740: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 740b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 740) #12, !srcloc !31
  br label %rfc3961_do_encrypt.exit.i

.critedge.i.i:                                    ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false), !annotation !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.b, i8 0, i64 464, i1 false), !annotation !10
  %i.bn = getelementptr i8, ptr %i.bb, i64 32
  %.val.i.i = load ptr, ptr %i.bn, align 8        ; 2 uses
  %i.bo = getelementptr i8, ptr %.val.i.i, i64 36
  %.val.val.i.i = load i32, ptr %i.bo, align 4
  %i.bp = urem i32 %i.ax, %.val.val.i.i
  %.not27.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not27.i.i, label %bb.o, label %rfc3961_do_encrypt.exit.i

bb.o:                                             ; preds = %.critedge.i.i
  %i.bq = getelementptr i8, ptr %.val.i.i, i64 -16
  %.val28.val.i.i = load i32, ptr %i.bq, align 8
  %i.br = icmp ugt i32 %.val28.val.i.i, 16
  br i1 %i.br, label %rfc3961_do_encrypt.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr i8, ptr %3, i64 8         ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = zext i32 %i.ax to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr readonly align 1 %.sroa.843.1, i64 %i.bu, i1 false)
  %i.bv = load ptr, ptr %i.bs, align 8
  %i.bw = load i32, ptr %3, align 8
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %i.bv, i32 noundef %i.bw) #13
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.by, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %i.bz = load i32, ptr %3, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %5, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %5, ptr %i.cb, align 8
  store i32 %i.bz, ptr %i.b, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.cc, align 8
  %i.cd = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %i.b) #13
  %.val.i.i.i = load ptr, ptr %i.bl, align 8
  %i.ce = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val3.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = zext i32 %.val3.i.i.i to i64
  %i.cg = add nuw nsw i64 %i.cf, 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, i8 0, i64 range(i64 80, 4294967376) %i.cg, i1 false)
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.b) #12, !srcloc !13
  br label %rfc3961_do_encrypt.exit.i

rfc3961_do_encrypt.exit.i:                        ; preds = %bb.p, %bb.o, %.critedge.i.i, %bb.n
  %.0.i.i35 = phi i32 [ %i.cd, %bb.p ], [ -22, %bb.n ], [ -22, %.critedge.i.i ], [ -22, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.q

bb.q:                                             ; preds = %rfc3961_do_encrypt.exit.i, %bb.l
  %.0.i36 = phi i32 [ %i.bi, %bb.l ], [ %.0.i.i35, %rfc3961_do_encrypt.exit.i ]
  %i.ch = getelementptr i8, ptr %i.bb, i64 8
  call void @crypto_destroy_tfm(ptr noundef %i.bb, ptr noundef %i.ch) #13
  br label %rfc3961_calc_E.exit

rfc3961_calc_E.exit:                              ; preds = %bb.c, %bb.q, %bb.k, %bb.i, %rfc3961_calc_H.exit
  %.028 = phi i32 [ %.0.i, %rfc3961_calc_H.exit ], [ %i.ay, %bb.i ], [ %spec.select.i38, %bb.k ], [ %.0.i36, %bb.q ], [ -65, %bb.c ]
  call void @kfree_sensitive(ptr noundef nonnull %i.w) #13
  br label %bb.r

bb.r:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %rfc3961_calc_E.exit
  %.0 = phi i32 [ -22, %bb.a ], [ %.028, %rfc3961_calc_E.exit ], [ -12, %_kzalloc_noprof.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfc3961_calc_DK(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca [1 x %struct.scatterlist], align 16 ; 6 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [464 x i8], align 8               ; 13 uses
  %6 = alloca %struct.krb5_buffer, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 8 uses
  %i.f = getelementptr i8, ptr %0, i64 54
  %i.g = load i16, ptr %i.f, align 2              ; 3 uses
  %i.h = zext i16 %i.g to i32                     ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i16, ptr %i.i, align 8              ; 2 uses
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.l, %i.k
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %3, align 8
  %.not61 = icmp eq i32 %i.m, %i.k
  br i1 %.not61, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not62 = icmp ne ptr %i.o, null
  %.not63 = icmp eq i16 %i.j, %i.g
  %or.cond = select i1 %.not62, i1 true, i1 %.not63
  br i1 %or.cond, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef %i.q, i32 noundef 0, i32 noundef 0) #13 ; 8 uses
  %i.s = icmp ugt ptr %i.r, inttoptr (i64 -4096 to ptr)
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = icmp eq ptr %i.r, inttoptr (i64 -2 to ptr)
  %i.v = trunc i64 %i.t to i32
  %spec.select = select i1 %i.u, i32 -65, i32 %i.v
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !10
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %1, align 8
  %i.z = tail call i32 @crypto_skcipher_setkey(ptr noundef %i.r, ptr noundef %i.x, i32 noundef %i.y) #13 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.r, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.f
  %i.ab = or i32 %4, 256
  %i.ac = shl nuw nsw i32 %i.e, 1
  %i.ad = add nuw nsw i32 %i.ac, %i.h
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.ae, i32 noundef range(i32 256, 0) %i.ab) #14 ; 7 uses
  %.not64 = icmp eq ptr %i.af, null
  br i1 %.not64, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_kzalloc_noprof.exit
  %i.ag = zext i16 %i.d to i64                    ; 6 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 %i.ag  ; 6 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ag  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8
  store i32 %i.h, ptr %6, align 8
  %i.ak = load i32, ptr %2, align 8               ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.e
  %i.am = getelementptr i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 1 %i.an, i64 %i.ag, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @rfc3961_nfold(i32 %i.ak, ptr %i.an, i32 %i.e, ptr nonnull %i.af) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not96 = icmp eq i16 %i.g, 0
  br i1 %.not96, label %.loopexit, label %.critedge.i.lr.ph

.critedge.i.lr.ph:                                ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.r, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.r, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.lr.ph, %bb.n
  %.05395 = phi i32 [ 0, %.critedge.i.lr.ph ], [ %i.bj, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false), !annotation !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.b, i8 0, i64 464, i1 false), !annotation !10
  %.val.i = load ptr, ptr %i.aq, align 8          ; 2 uses
  %i.aw = getelementptr i8, ptr %.val.i, i64 36
  %.val.val.i = load i32, ptr %i.aw, align 4
  %i.ax = urem i32 %i.e, %.val.val.i
  %.not27.i = icmp eq i32 %i.ax, 0
  br i1 %.not27.i, label %bb.k, label %rfc3961_do_encrypt.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ay = getelementptr i8, ptr %.val.i, i64 -16
  %.val28.val.i = load i32, ptr %i.ay, align 8
  %i.az = icmp ugt i32 %.val28.val.i, 16
  br i1 %i.az, label %rfc3961_do_encrypt.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 8 %i.af, i64 %i.ag, i1 false)
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %i.ah, i32 noundef %i.e) #13
  store ptr %i.ao, ptr %i.ap, align 8
  store i32 0, ptr %i.as, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store ptr %5, ptr %i.at, align 8
  store ptr %5, ptr %i.au, align 8
  store i32 %i.e, ptr %i.b, align 8
  store ptr %i.a, ptr %i.av, align 8
  %i.ba = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %i.b) #13 ; 0 uses
  %.val.i.i = load ptr, ptr %i.ap, align 8
  %i.bb = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val3.i.i = load i32, ptr %i.bb, align 8
  %i.bc = zext i32 %.val3.i.i to i64
  %i.bd = add nuw nsw i64 %i.bc, 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, i8 0, i64 range(i64 80, 4294967376) %i.bd, i1 false)
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.b) #12, !srcloc !13
  br label %rfc3961_do_encrypt.exit

rfc3961_do_encrypt.exit:                          ; preds = %.critedge.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.be = sub i32 %i.h, %.05395                   ; 2 uses
  %.not65 = icmp ugt i32 %i.be, %i.e
  %i.bf = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bg = zext i32 %.05395 to i64
  %i.bh = getelementptr i8, ptr %i.bf, i64 %i.bg  ; 2 uses
  br i1 %.not65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %rfc3961_do_encrypt.exit
  %i.bi = zext nneg i32 %i.be to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.ah, i64 %i.bi, i1 false)
  br label %.loopexit

bb.n:                                             ; preds = %rfc3961_do_encrypt.exit
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.ah, i64 %i.ag, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 1 %i.ah, i64 %i.ag, i1 false)
  %i.bj = add i32 %.05395, %i.e                   ; 2 uses
  %i.bk = load i32, ptr %6, align 8
  %i.bl = icmp ult i32 %i.bj, %i.bk
  br i1 %i.bl, label %.critedge.i, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %bb.n, %bb.j, %bb.m
  %i.bm = phi ptr [ %i.bf, %bb.m ], [ %i.ai, %bb.j ], [ %i.bf, %bb.n ]
  %i.bn = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not66 = icmp eq ptr %i.bn, null
  br i1 %.not66, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  %i.bo = getelementptr i8, ptr %3, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load i32, ptr %6, align 8
  %i.br = zext i32 %i.bq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bm, i64 %i.br, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %.loopexit
  %i.bs = call i32 %i.bn(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.052 = phi i32 [ %i.bs, %bb.p ], [ 0, %bb.o ]
  call void @kfree_sensitive(ptr noundef nonnull %i.af) #13
  br label %bb.r

bb.r:                                             ; preds = %_kzalloc_noprof.exit, %bb.f, %bb.q
end_hunk_0
