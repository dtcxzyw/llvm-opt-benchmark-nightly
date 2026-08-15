inline.NumInlined: 52
inline.NumDeleted: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_crypto_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"aes128-cts-hmac-sha256-128\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"authenc(hmac(sha256),cts(cbc(aes)))\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hmac(sha256)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cts(cbc(aes))\00", align 1
@rfc8009_crypto_profile = internal constant %struct.krb5_crypto_profile { ptr @rfc8009_calc_PRF, ptr @rfc8009_calc_Ki, ptr @rfc8009_calc_Ke, ptr @rfc8009_calc_Ki, ptr @authenc_derive_encrypt_keys, ptr @authenc_load_encrypt_keys, ptr @rfc3961_derive_checksum_key, ptr @rfc3961_load_checksum_key, ptr @rfc8009_encrypt, ptr @rfc8009_decrypt, ptr @rfc3961_get_mic, ptr @rfc3961_verify_mic }, align 8
@krb5_aes128_cts_hmac_sha256_128 = dso_local local_unnamed_addr constant { i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr } { i32 19, i32 19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i16 16, i16 16, i16 16, i16 16, i16 16, i16 20, i16 32, i16 16, i16 16, i16 16, i8 1, [3 x i8] zeroinitializer, ptr @rfc8009_crypto_profile, ptr null }, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"aes256-cts-hmac-sha384-192\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"authenc(hmac(sha384),cts(cbc(aes)))\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"hmac(sha384)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@krb5_aes256_cts_hmac_sha384_192 = dso_local local_unnamed_addr constant { i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr } { i32 20, i32 20, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.4, i16 16, i16 16, i16 24, i16 32, i16 32, i16 20, i16 48, i16 24, i16 32, i16 24, i8 1, [3 x i8] zeroinitializer, ptr @rfc8009_crypto_profile, ptr null }, align 8
@rfc8009_calc_PRF.prfconstant = internal constant { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.9 }, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"crypto/krb5/rfc8009_aes2.c\00", align 1
@rfc8009_no_context = internal constant { i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.10 }, align 8
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@.str.14 = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1
@phys_base = external dso_local local_unnamed_addr global i64, align 8
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfc8009_calc_PRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 60
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = tail call fastcc i32 @rfc8009_calc_KDF_HMAC_SHA2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @rfc8009_calc_PRF.prfconstant, ptr noundef %2, i32 noundef %i.d, ptr noundef %3) #6
  ret i32 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfc8009_calc_Ki(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 52
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = tail call fastcc i32 @rfc8009_calc_KDF_HMAC_SHA2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @rfc8009_no_context, i32 noundef %i.d, ptr noundef %3) #6
  ret i32 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfc8009_calc_Ke(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 54
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = tail call fastcc i32 @rfc8009_calc_KDF_HMAC_SHA2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @rfc8009_no_context, i32 noundef %i.d, ptr noundef %3) #6
  ret i32 %i.e
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @authenc_derive_encrypt_keys(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @authenc_load_encrypt_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rfc3961_derive_checksum_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rfc3961_load_checksum_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rfc8009_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7) #0 align 16 prefalign(16) {
bb.a:
  %8 = alloca [2 x %struct.scatterlist], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.a = getelementptr i8, ptr %0, i64 50         ; 4 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i64
  %.not = icmp eq i64 %5, %i.c
  br i1 %.not, label %.critedge, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "483: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 483b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 483) #7, !srcloc !11
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 185, i32 2305, i64 16) #7, !srcloc !12
  tail call void asm sideeffect "484: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 484b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 484) #7, !srcloc !13
  br label %bb.j

.critedge:                                        ; preds = %bb.a
  %i.d = add i64 %6, %5                           ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i64
  %i.h = add i64 %i.d, %i.g
  %i.i = icmp ugt i64 %i.h, %4
  br i1 %i.i, label %bb.c, label %.critedge74, !prof !14

bb.c:                                             ; preds = %.critedge
  tail call void asm sideeffect "485: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 485b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 485) #7, !srcloc !15
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 193, i32 2305, i64 16) #7, !srcloc !16
  tail call void asm sideeffect "486: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 486b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 486) #7, !srcloc !17
  br label %bb.j

.critedge74:                                      ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false), !annotation !18
  %i.j = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %.val76 = load i32, ptr %i.j, align 4
  %9 = add i32 %.val76, 79
  %10 = or i32 %9, 7
  %11 = add i32 %10, 1
  %.val80 = load ptr, ptr %i.k, align 8
  %12 = getelementptr i8, ptr %.val80, i64 -16
  %.val76.a = load i32, ptr %12, align 8
  %13 = shl i32 %.val76.a, 1
  %14 = add i32 %13, 14
  %15 = and i32 %14, -16
  %i.l = add i32 %11, %15
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.m, i32 noundef 3392) #8 ; 14 uses
  %.not71 = icmp eq ptr %i.n, null
  br i1 %.not71, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.critedge74
  %.val75 = load i32, ptr %i.j, align 4
  %i.o = add i32 %.val75, 79
  %i.p = or i32 %i.o, 7
  %i.q = add i32 %i.p, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 2 uses
  %.val79 = load ptr, ptr %i.k, align 8
  %i.t = getelementptr i8, ptr %.val79, i64 -16
  %.val79.val = load i32, ptr %i.t, align 8
  %i.u = add i32 %.val79.val, 7
  %16 = and i32 %i.u, -8
  %i.v = zext i32 %16 to i64
  %i.w = getelementptr i8, ptr %i.s, i64 %i.v     ; 2 uses
  br i1 %7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i16, ptr %i.a, align 2
  %i.y = zext i16 %i.x to i64
  tail call void @get_random_bytes(ptr noundef nonnull %i.n, i64 noundef %i.y) #9
  %i.z = load i16, ptr %i.a, align 2
  %i.aa = zext i16 %i.z to i64
  %i.ab = tail call i64 @sg_pcopy_from_buffer(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.n, i64 noundef %i.aa, i64 noundef 0) #9
  %i.ac = load i16, ptr %i.a, align 2
  %i.ad = zext i16 %i.ac to i64
  %.not72 = icmp eq i64 %i.ab, %i.ad
  br i1 %.not72, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @sg_init_table(ptr noundef nonnull %8, i32 noundef 2) #9
  %i.ae = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.af = and i64 %i.ae, 3
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %sg_set_buf.exit, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "472: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 472b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 472) #7, !srcloc !19
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.14, i32 137, i32 0, i64 16) #7, !srcloc !20
  unreachable

sg_set_buf.exit:                                  ; preds = %bb.f
  %.val78 = load ptr, ptr %i.k, align 8
  %i.ag = getelementptr i8, ptr %.val78, i64 -16  ; 2 uses
  %.val78.val = load i32, ptr %i.ag, align 8
  %i.ah = add i32 %.val78.val, 7
  %17 = and i32 %i.ah, -8
  %i.ai = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.aj = add i64 %i.ai, 2147483648
  %i.ak = icmp ugt ptr %i.w, inttoptr (i64 -2147483649 to ptr)
  %i.al = load i64, ptr @phys_base, align 8
  %i.am = load i64, ptr @page_offset_base, align 8
  %i.an = sub i64 -2147483648, %i.am
  %i.ao = select i1 %i.ak, i64 %i.al, i64 %i.an
  %i.ap = add i64 %i.aj, %i.ao
  %i.aq = lshr i64 %i.ap, 6
  %.idx.i = and i64 %i.aq, 288230376151711680
  %i.ar = add i64 %.idx.i, %i.ae
  %i.as = trunc i64 %i.ai to i32
  %i.at = and i32 %i.as, 4095
  %i.au = load i64, ptr %8, align 16
  %i.av = and i64 %i.au, 3
  %i.aw = or disjoint i64 %i.ar, %i.av
  store i64 %i.aw, ptr %8, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.at, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %17, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 0, ptr %i.bb, align 4
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = and i64 %i.bc, -4
  %i.be = or disjoint i64 %i.bd, 1
  store i64 %i.be, ptr %i.az, align 16
  %i.bf = getelementptr i8, ptr %1, i64 8
  %i.bg = getelementptr i8, ptr %i.n, i64 32
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.n, i64 16
  %i.bi = getelementptr i8, ptr %i.n, i64 40
  store i32 0, ptr %i.bi, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %.val77.val = load i32, ptr %i.ag, align 8
  %i.bj = add i32 %.val77.val, 7
  %18 = and i32 %i.bj, -8
  %i.bk = getelementptr i8, ptr %i.n, i64 48
  store i32 %18, ptr %i.bk, align 8
  %i.bl = trunc i64 %i.d to i32
  %i.bm = getelementptr i8, ptr %i.n, i64 64
  store ptr %8, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.n, i64 72
  store ptr %8, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.n, i64 52
  store i32 %i.bl, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %i.n, i64 56
  store ptr %i.s, ptr %i.bp, align 8
  %i.bq = call i32 @crypto_aead_encrypt(ptr noundef nonnull %i.n) #9 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i32 %i.bq, 0
  br i1 %i.bs, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sg_set_buf.exit
  %i.bt = load i16, ptr %i.e, align 4
  %i.bu = zext i16 %i.bt to i64
  %i.bv = add i64 %i.d, %i.bu
  br label %bb.i

bb.i:                                             ; preds = %sg_set_buf.exit, %bb.e, %bb.h
  %.068 = phi i64 [ -14, %bb.e ], [ %i.br, %sg_set_buf.exit ], [ %i.bv, %bb.h ]
  call void @kfree_sensitive(ptr noundef nonnull %i.n) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %.critedge74, %bb.i
  %.0 = phi i64 [ -14, %bb.c ], [ -22, %bb.b ], [ %.068, %bb.i ], [ -12, %.critedge74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 1) i32 @rfc8009_decrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) #0 align 16 prefalign(16) {
bb.a:
  %6 = alloca [2 x %struct.scatterlist], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.a = load i64, ptr %4, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "487: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 487b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 487) #7, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 263, i32 2305, i64 16) #7, !srcloc !22
  tail call void asm sideeffect "488: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 488b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 488) #7, !srcloc !23
  br label %bb.g

.critedge:                                        ; preds = %bb.a
  %i.b = load i64, ptr %5, align 8
  %i.c = getelementptr i8, ptr %0, i64 50         ; 3 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, %i.e
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %bb.g, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false), !annotation !18
  %i.k = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %.val47 = load i32, ptr %i.k, align 4
  %7 = add i32 %.val47, 79
  %8 = or i32 %7, 7
  %9 = add i32 %8, 1
  %.val51 = load ptr, ptr %i.l, align 8
  %10 = getelementptr i8, ptr %.val51, i64 -16
  %.val47.a = load i32, ptr %10, align 8
  %11 = shl i32 %.val47.a, 1
  %12 = add i32 %11, 14
  %13 = and i32 %12, -16
  %i.m = add i32 %9, %13
  %i.n = zext i32 %i.m to i64
  %i.o = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.n, i32 noundef 3392) #8 ; 12 uses
  %.not45 = icmp eq ptr %i.o, null
  br i1 %.not45, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit
  %.val46 = load i32, ptr %i.k, align 4
  %.val50 = load ptr, ptr %i.l, align 8
  %i.p = getelementptr i8, ptr %.val50, i64 -16
  %.val50.val = load i32, ptr %i.p, align 8
  call void @sg_init_table(ptr noundef nonnull %6, i32 noundef 2) #9
  %i.q = load i64, ptr @vmemmap_base, align 8     ; 2 uses
  %i.r = and i64 %i.q, 3
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %sg_set_buf.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect "472: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 472b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 472) #7, !srcloc !19
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.14, i32 137, i32 0, i64 16) #7, !srcloc !20
  unreachable

sg_set_buf.exit:                                  ; preds = %bb.c
  %.val49 = load ptr, ptr %i.l, align 8
  %i.s = getelementptr i8, ptr %.val49, i64 -16   ; 2 uses
  %.val49.val = load i32, ptr %i.s, align 8
  %i.t = add i32 %.val49.val, 7
  %14 = and i32 %i.t, -8
  %i.u = add i32 %.val46, 79
  %i.v = or i32 %i.u, 7
  %i.w = add i32 %i.v, 1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x     ; 2 uses
  %i.z = add i32 %.val50.val, 7
  %15 = and i32 %i.z, -8
  %i.aa = zext i32 %15 to i64
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = add i64 %i.ac, 2147483648
  %i.ae = icmp ugt ptr %i.ab, inttoptr (i64 -2147483649 to ptr)
  %i.af = load i64, ptr @phys_base, align 8
  %i.ag = load i64, ptr @page_offset_base, align 8
  %i.ah = sub i64 -2147483648, %i.ag
  %i.ai = select i1 %i.ae, i64 %i.af, i64 %i.ah
  %i.aj = add i64 %i.ad, %i.ai
  %i.ak = lshr i64 %i.aj, 6
  %.idx.i = and i64 %i.ak, 288230376151711680
  %i.al = add i64 %.idx.i, %i.q
  %i.am = trunc i64 %i.ac to i32
  %i.an = and i32 %i.am, 4095
  %i.ao = load i64, ptr %6, align 16
  %i.ap = and i64 %i.ao, 3
  %i.aq = or disjoint i64 %i.al, %i.ap
  store i64 %i.aq, ptr %6, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.an, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %14, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 0, ptr %i.av, align 4
  %i.aw = ptrtoint ptr %2 to i64
  %i.ax = and i64 %i.aw, -4
  %i.ay = or disjoint i64 %i.ax, 1
  store i64 %i.ay, ptr %i.at, align 16
  %i.az = getelementptr i8, ptr %1, i64 8
  %i.ba = getelementptr i8, ptr %i.o, i64 32
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.o, i64 16
  %i.bc = getelementptr i8, ptr %i.o, i64 40
  store i32 0, ptr %i.bc, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %.val48.val = load i32, ptr %i.s, align 8
  %i.bd = add i32 %.val48.val, 7
  %16 = and i32 %i.bd, -8
  %i.be = getelementptr i8, ptr %i.o, i64 48
  store i32 %16, ptr %i.be, align 8
  %i.bf = load i64, ptr %5, align 8
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr i8, ptr %i.o, i64 64
  store ptr %6, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %i.o, i64 72
  store ptr %6, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %i.o, i64 52
  store i32 %i.bg, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %i.o, i64 56
  store ptr %i.y, ptr %i.bk, align 8
  %i.bl = call i32 @crypto_aead_decrypt(ptr noundef nonnull %i.o) #9 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sg_set_buf.exit
  %i.bn = load i16, ptr %i.c, align 2
  %i.bo = zext i16 %i.bn to i64
  %i.bp = load i64, ptr %4, align 8
  %i.bq = add i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %4, align 8
  %i.br = load i16, ptr %i.c, align 2
  %i.bs = zext i16 %i.br to i64
  %i.bt = load i16, ptr %i.f, align 4
  %i.bu = zext i16 %i.bt to i64
  %i.bv = load i64, ptr %5, align 8
  %i.bw = add nuw nsw i64 %i.bu, %i.bs
  %i.bx = sub i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %5, align 8
  br label %bb.f

bb.f:                                             ; preds = %sg_set_buf.exit, %bb.e
  %.043 = phi i32 [ %i.bl, %sg_set_buf.exit ], [ 0, %bb.e ]
  call void @kfree_sensitive(ptr noundef nonnull %i.o) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_kzalloc_noprof.exit, %.critedge, %bb.f
  %.0 = phi i32 [ -71, %.critedge ], [ -22, %bb.b ], [ %.043, %bb.f ], [ -12, %_kzalloc_noprof.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @rfc3961_get_mic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rfc3961_verify_mic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @rfc8009_calc_KDF_HMAC_SHA2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 524281) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 align 16 {
bb.a:
  %i.a = load i32, ptr %5, align 8
  %i.b = lshr i32 %4, 3
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %.critedge, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "477: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 477b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 477) #7, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 45, i32 2305, i64 16) #7, !srcloc !25
  tail call void asm sideeffect "478: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 478b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 478) #7, !srcloc !26
  br label %bb.m

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @crypto_alloc_shash(ptr noundef %i.d, i32 noundef 0, i32 noundef 0) #9 ; 8 uses
  %i.f = icmp ugt ptr %i.e, inttoptr (i64 -4096 to ptr)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = icmp eq ptr %i.e, inttoptr (i64 -2 to ptr)
  %i.i = trunc i64 %i.g to i32
  %spec.select = select i1 %i.h, i32 -65, i32 %i.i
  br label %bb.m

bb.d:                                             ; preds = %.critedge
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %1, align 8
  %i.m = tail call i32 @crypto_shash_setkey(ptr noundef %i.e, ptr noundef %i.k, i32 noundef %i.l) #9 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  %.val93 = load ptr, ptr %i.o, align 8           ; 2 uses
  %i.p = getelementptr i8, ptr %.val93, i64 -8
  %.val93.val = load i32, ptr %i.p, align 8       ; 2 uses
  %i.q = shl i32 %.val93.val, 3
  %i.r = icmp ult i32 %i.q, %4
  br i1 %i.r, label %bb.f, label %.critedge88, !prof !14

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "479: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 479b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 479) #7, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 56, i32 2305, i64 16) #7, !srcloc !28
  tail call void asm sideeffect "480: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 480b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 480) #7, !srcloc !29
  br label %bb.l

.critedge88:                                      ; preds = %bb.e
  %i.s = load i32, ptr %2, align 8
  %i.t = add i32 %i.s, 5
  %i.u = load i32, ptr %3, align 8
  %6 = add i32 %i.t, %i.u                         ; 2 uses
  %i.v = add i32 %6, 4                            ; 2 uses
  %i.w = add i32 %.val93.val, 7
  %7 = and i32 %i.w, -8
  %8 = or disjoint i32 %7, 2
  %i.x = add i32 %6, 3
  %i.y = or i32 %i.x, 7
  %i.z = add i32 %8, %i.y
  %9 = getelementptr i8, ptr %.val93, i64 -16
  %.val96.val = load i32, ptr %9, align 8
  %i.aa = add i32 %.val96.val, 7
  %i.ab = or i32 %i.aa, 7
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.ad, i32 noundef 3392) #8 ; 7 uses
  %.not85 = icmp eq ptr %i.ae, null
  br i1 %.not85, label %bb.l, label %bb.g

bb.g:                                             ; preds = %.critedge88
  store ptr %i.e, ptr %i.ae, align 8
  %i.af = tail call i32 @crypto_shash_init(ptr noundef nonnull %i.ae) #9 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val95 = load ptr, ptr %i.o, align 8           ; 2 uses
  %i.ah = getelementptr i8, ptr %.val95, i64 -16  ; 2 uses
  %.val95.val = load i32, ptr %i.ah, align 8
  %i.ai = add i32 %.val95.val, 7
  %i.aj = or i32 %i.ai, 7
  %i.ak = add i32 %i.aj, 1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.ae, i64 %i.al
  %i.an = getelementptr i8, ptr %.val95, i64 -8
  %.val91.val = load i32, ptr %i.an, align 8
  %i.ao = add i32 %.val91.val, 7
  %10 = and i32 %i.ao, -8
  %i.ap = zext i32 %10 to i64
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.ap  ; 4 uses
  store i32 16777216, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 4      ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load i32, ptr %2, align 8
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ar, ptr align 1 %i.at, i64 %i.av, i1 false)
  %i.aw = getelementptr i8, ptr %i.ar, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 1      ; 2 uses
  store i8 0, ptr %i.aw, align 1
  %i.ay = getelementptr i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i32, ptr %3, align 8
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.az, i64 %i.bb, i1 false)
  %i.bc = getelementptr i8, ptr %i.ax, i64 %i.bb  ; 2 uses
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %4)
  store i32 %i.bd, ptr %i.bc, align 1
  %i.be = getelementptr i8, ptr %i.bc, i64 4
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.aq to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = zext i32 %i.v to i64
  %.not86 = icmp eq i64 %i.bh, %i.bi
  br i1 %.not86, label %.critedge90, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "481: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 481b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 481) #7, !srcloc !30
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 89, i32 2305, i64 16) #7, !srcloc !31
  tail call void asm sideeffect "482: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 482b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 482) #7, !srcloc !32
  br label %bb.k

.critedge90:                                      ; preds = %bb.h
  %.val94.val = load i32, ptr %i.ah, align 8
  %i.bj = add i32 %.val94.val, 7
  %i.bk = or i32 %i.bj, 7
  %i.bl = add i32 %i.bk, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.ae, i64 %i.bm  ; 2 uses
  %i.bo = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.ae, ptr noundef %i.aq, i32 noundef %i.v, ptr noundef %i.bn) #9 ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge90
  %i.bq = getelementptr i8, ptr %5, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load i32, ptr %5, align 8
  %i.bt = zext i32 %i.bs to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 8 %i.bn, i64 %i.bt, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.critedge90, %bb.g, %bb.j
  %.079 = phi i32 [ %i.af, %bb.g ], [ -22, %bb.i ], [ %i.bo, %.critedge90 ], [ %i.bo, %bb.j ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.ae) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %.critedge88, %bb.d, %bb.k
  %.1 = phi i32 [ %i.m, %bb.d ], [ -22, %bb.f ], [ %.079, %bb.k ], [ -12, %.critedge88 ]
  tail call void @crypto_destroy_tfm(ptr noundef %i.e, ptr noundef %i.e) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.b, %bb.l
  %.0 = phi i32 [ %.1, %bb.l ], [ -22, %bb.b ], [ %spec.select, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_shash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone "no-builtin-wcslen" }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 2155640874, i64 2155640749}
!12 = !{i64 2155641397, i64 2155642464, i64 2155642497, i64 2155642532, i64 2155642548, i64 2155643475, i64 2155643533, i64 2155643582, i64 2155643392, i64 2155642607, i64 2155642639, i64 2155642722}
!13 = !{i64 2155643888, i64 2155643764}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{i64 2155645236, i64 2155645111}
!16 = !{i64 2155645759, i64 2155646836, i64 2155646869, i64 2155646904, i64 2155646920, i64 2155647847, i64 2155647905, i64 2155647954, i64 2155647764, i64 2155646979, i64 2155647011, i64 2155647094}
!17 = !{i64 2155648260, i64 2155648136}
!18 = !{!"auto-init"}
!19 = !{i64 2155439705, i64 2155439580}
!20 = !{i64 2155440228, i64 2155440704, i64 2155440737, i64 2155440772, i64 2155440788, i64 2155441629, i64 2155441687, i64 2155441736, i64 2155441546, i64 2155440847, i64 2155440879}
!21 = !{i64 2155655414, i64 2155655289}
!22 = !{i64 2155655937, i64 2155656988, i64 2155657021, i64 2155657056, i64 2155657072, i64 2155657999, i64 2155658057, i64 2155658106, i64 2155657916, i64 2155657131, i64 2155657163, i64 2155657246}
!23 = !{i64 2155658412, i64 2155658288}
!24 = !{i64 2155618099, i64 2155617974}
!25 = !{i64 2155618622, i64 2155619680, i64 2155619713, i64 2155619748, i64 2155619764, i64 2155620691, i64 2155620749, i64 2155620798, i64 2155620608, i64 2155619823, i64 2155619855, i64 2155619938}
!26 = !{i64 2155621103, i64 2155620979}
!27 = !{i64 2155622456, i64 2155622331}
!28 = !{i64 2155622979, i64 2155624055, i64 2155624088, i64 2155624123, i64 2155624139, i64 2155625066, i64 2155625124, i64 2155625173, i64 2155624983, i64 2155624198, i64 2155624230, i64 2155624313}
!29 = !{i64 2155625478, i64 2155625354}
!30 = !{i64 2155631933, i64 2155631808}
!31 = !{i64 2155632456, i64 2155637586, i64 2155637619, i64 2155637654, i64 2155637670, i64 2155638597, i64 2155638655, i64 2155638704, i64 2155638514, i64 2155637729, i64 2155637761, i64 2155637844}
!32 = !{i64 2155639009, i64 2155638885}
end_hunk_0
