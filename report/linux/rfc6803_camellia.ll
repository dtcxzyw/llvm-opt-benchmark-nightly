inline.NumInlined: 23
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_crypto_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.krb5_buffer = type { i32, ptr }

@.str = private unnamed_addr constant [21 x i8] c"camellia128-cts-cmac\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"krb5enc(cmac(camellia),cts(cbc(camellia)))\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cmac(camellia)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cts(cbc(camellia))\00", align 1
@rfc6803_crypto_profile = internal constant %struct.krb5_crypto_profile { ptr @rfc6803_calc_PRF, ptr @rfc6803_calc_KDF_FEEDBACK_CMAC, ptr @rfc6803_calc_KDF_FEEDBACK_CMAC, ptr @rfc6803_calc_KDF_FEEDBACK_CMAC, ptr @authenc_derive_encrypt_keys, ptr @authenc_load_encrypt_keys, ptr @rfc3961_derive_checksum_key, ptr @rfc3961_load_checksum_key, ptr @krb5_aead_encrypt, ptr @krb5_aead_decrypt, ptr @rfc3961_get_mic, ptr @rfc3961_verify_mic }, align 8
@krb5_camellia128_cts_cmac = dso_local local_unnamed_addr constant { i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr } { i32 25, i32 17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr null, ptr @.str.3, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i8 1, [3 x i8] zeroinitializer, ptr @rfc6803_crypto_profile, ptr null }, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"camellia256-cts-cmac\00", align 1
@krb5_camellia256_cts_cmac = dso_local local_unnamed_addr constant { i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr } { i32 26, i32 18, ptr @.str.4, ptr @.str.1, ptr @.str.2, ptr null, ptr @.str.3, i16 16, i16 16, i16 16, i16 32, i16 32, i16 16, i16 16, i16 32, i16 32, i16 32, i8 1, [3 x i8] zeroinitializer, ptr @rfc6803_crypto_profile, ptr null }, align 8
@rfc6803_calc_PRF.prfconstant = internal constant { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.5 }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"crypto/krb5/rfc6803_camellia.c\00", align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfc6803_calc_PRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.krb5_buffer, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !10
  %i.a = getelementptr i8, ptr %0, i64 60
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  store i32 %i.c, ptr %5, align 8
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @crypto_alloc_shash(ptr noundef %i.e, i32 noundef 0, i32 noundef 0) #6 ; 8 uses
  %i.g = icmp ugt ptr %i.f, inttoptr (i64 -4096 to ptr)
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = icmp eq ptr %i.f, inttoptr (i64 -2 to ptr)
  %i.j = trunc i64 %i.h to i32
  %spec.select = select i1 %i.i, i32 -65, i32 %i.j
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %3, align 8                ; 2 uses
  %i.l = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  %.val43 = load ptr, ptr %i.l, align 8           ; 2 uses
  %i.m = getelementptr i8, ptr %.val43, i64 -8
  %.val43.val = load i32, ptr %i.m, align 8
  %.not = icmp eq i32 %i.k, %.val43.val
  br i1 %.not, label %_kzalloc_noprof.exit, label %bb.i

_kzalloc_noprof.exit:                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.c, 7
  %6 = and i32 %i.n, 131064
  %i.o = or disjoint i32 %6, 1
  %i.p = add i32 %i.k, 7
  %7 = and i32 %i.p, -8
  %i.q = add i32 %i.o, %7
  %i.r = getelementptr i8, ptr %.val43, i64 -16
  %.val45.val = load i32, ptr %i.r, align 8
  %i.s = add i32 %.val45.val, 7
  %i.t = or i32 %i.s, 7
  %i.u = add i32 %i.q, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.v, i32 noundef 3392) #7 ; 6 uses
  %.not41 = icmp eq ptr %i.w, null
  br i1 %.not41, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit
  %.val44 = load ptr, ptr %i.l, align 8           ; 2 uses
  %i.x = getelementptr i8, ptr %.val44, i64 -16
  %.val44.val = load i32, ptr %i.x, align 8
  %i.y = add i32 %.val44.val, 7
  %i.z = or i32 %i.y, 7
  %i.aa = add i32 %i.z, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.val44, i64 -8
  %.val.val = load i32, ptr %i.ad, align 8
  %i.ae = add i32 %.val.val, 7
  %8 = and i32 %i.ae, -8
  %i.af = zext i32 %8 to i64
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = call i32 @rfc6803_calc_KDF_FEEDBACK_CMAC(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @rfc6803_calc_PRF.prfconstant, ptr noundef nonnull %5, i32 poison) #8, !srcloc !11 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call i32 @crypto_shash_setkey(ptr noundef %i.f, ptr noundef %i.ag, i32 noundef %i.c) #6 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.f, ptr %i.w, align 8
  %i.am = tail call i32 @crypto_shash_init(ptr noundef nonnull %i.w) #6 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i32, ptr %2, align 8
  %i.ar = getelementptr i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.w, ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef %i.as) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.037 = phi i32 [ %i.ai, %bb.d ], [ %i.ak, %bb.e ], [ %i.am, %bb.f ], [ %i.at, %bb.g ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.w) #6
  br label %bb.i

bb.i:                                             ; preds = %_kzalloc_noprof.exit, %bb.c, %bb.h
  %.1 = phi i32 [ -22, %bb.c ], [ %.037, %bb.h ], [ -12, %_kzalloc_noprof.exit ]
  tail call void @crypto_destroy_tfm(ptr noundef %i.f, ptr noundef %i.f) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %.0 = phi i32 [ %.1, %bb.i ], [ %spec.select, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfc6803_calc_KDF_FEEDBACK_CMAC(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %3, align 8
  %i.b = shl i32 %i.a, 3
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @crypto_alloc_shash(ptr noundef %i.d, i32 noundef 0, i32 noundef 0) #6 ; 8 uses
  %i.f = icmp ugt ptr %i.e, inttoptr (i64 -4096 to ptr)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = icmp eq ptr %i.e, inttoptr (i64 -2 to ptr)
  %i.i = trunc i64 %i.g to i32
  %spec.select = select i1 %i.h, i32 -65, i32 %i.i
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %1, align 8
  %i.m = tail call i32 @crypto_shash_setkey(ptr noundef %i.e, ptr noundef %i.k, i32 noundef %i.l) #6 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  %.val104 = load ptr, ptr %i.o, align 8          ; 2 uses
  %i.p = getelementptr i8, ptr %.val104, i64 -8
  %.val104.val = load i32, ptr %i.p, align 8      ; 3 uses
  %i.q = add i32 %.val104.val, 4
  %i.r = load i32, ptr %2, align 8
  %i.s = add i32 %i.q, %i.r                       ; 2 uses
  %i.t = add i32 %i.s, 5                          ; 2 uses
  %i.u = add i32 %.val104.val, 7
  %5 = and i32 %i.u, -8                           ; 2 uses
  %reass.add = shl i32 %5, 1
  %6 = or disjoint i32 %reass.add, 2
  %i.v = add i32 %i.s, 4
  %i.w = or i32 %i.v, 7
  %i.x = add i32 %6, %i.w
  %i.y = getelementptr i8, ptr %.val104, i64 -16
  %.val107.val = load i32, ptr %i.y, align 8
  %i.z = add i32 %.val107.val, 7
  %i.aa = or i32 %i.z, 7
  %i.ab = add i32 %i.x, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.ac, i32 noundef 3392) #7 ; 6 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit
  store ptr %i.e, ptr %i.ad, align 8
  %.val106 = load ptr, ptr %i.o, align 8          ; 2 uses
  %i.ae = getelementptr i8, ptr %.val106, i64 -16
  %.val106.val = load i32, ptr %i.ae, align 8
  %i.af = add i32 %.val106.val, 7
  %i.ag = or i32 %i.af, 7
  %i.ah = add i32 %i.ag, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai
  %i.ak = getelementptr i8, ptr %.val106, i64 -8
  %.val102.val = load i32, ptr %i.ak, align 8
  %i.al = add i32 %.val102.val, 7
  %7 = and i32 %i.al, -8
  %i.am = zext i32 %7 to i64
  %i.an = getelementptr i8, ptr %i.aj, i64 %i.am  ; 4 uses
  %i.ao = zext i32 %5 to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao  ; 3 uses
  %i.aq = zext i32 %.val104.val to i64            ; 4 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4      ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i32, ptr %2, align 8
  %i.aw = zext i32 %i.av to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.au, i64 %i.aw, i1 false)
  %i.ax = getelementptr i8, ptr %i.as, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.ax, align 1
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.b)
  store i32 %i.az, ptr %i.ay, align 1
  %i.ba = add nuw nsw i64 %i.aq, 9
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  %i.bc = zext i32 %i.t to i64
  %.not101 = icmp eq i64 %i.bb, %i.bc
  br i1 %.not101, label %.critedge.preheader, label %bb.e, !prof !12

.critedge.preheader:                              ; preds = %bb.d
  %i.bd = getelementptr i8, ptr %3, i64 8
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "477: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 477b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 477) #5, !srcloc !13
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.8, i32 78, i32 2305, i64 16) #5, !srcloc !14
  tail call void asm sideeffect "478: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 478b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 478) #5, !srcloc !15
  br label %.loopexit

.critedge:                                        ; preds = %.critedge.preheader, %bb.g
  %.095 = phi i32 [ %i.be, %bb.g ], [ 0, %.critedge.preheader ]
  %.094 = phi i64 [ %i.bq, %bb.g ], [ 0, %.critedge.preheader ] ; 3 uses
  %i.be = add i32 %.095, 1                        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ap, ptr align 8 %i.an, i64 %i.aq, i1 false)
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.be)
  store i32 %i.bf, ptr %i.ar, align 4
  %i.bg = tail call i32 @crypto_shash_init(ptr noundef nonnull %i.ad) #6 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.bi = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.ad, ptr noundef %i.ap, i32 noundef %i.t, ptr noundef %i.an) #6 ; 3 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load i32, ptr %3, align 8
  %i.bl = zext i32 %i.bk to i64
  %i.bm = sub nsw i64 %i.bl, %.094
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.aq) ; 2 uses
  %i.bo = load ptr, ptr %i.bd, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.094
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 8 %i.an, i64 %i.bn, i1 false)
  %i.bq = add nuw nsw i64 %i.bn, %.094            ; 2 uses
  %i.br = load i32, ptr %3, align 8
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %i.bq, %i.bs
  br i1 %i.bt, label %.critedge, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.g, %bb.f, %.critedge, %bb.e
  %.093 = phi i32 [ -22, %bb.e ], [ %i.bi, %bb.g ], [ %i.bi, %bb.f ], [ %i.bg, %.critedge ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.ad) #6
  br label %bb.h

bb.h:                                             ; preds = %_kzalloc_noprof.exit, %bb.c, %.loopexit
  %.1 = phi i32 [ %i.m, %bb.c ], [ %.093, %.loopexit ], [ -12, %_kzalloc_noprof.exit ]
  tail call void @crypto_destroy_tfm(ptr noundef %i.e, ptr noundef %i.e) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.0 = phi i32 [ %.1, %bb.h ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @authenc_derive_encrypt_keys(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @authenc_load_encrypt_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rfc3961_derive_checksum_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rfc3961_load_checksum_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @krb5_aead_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @krb5_aead_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @rfc3961_get_mic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rfc3961_verify_mic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_shash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind "no-builtin-wcslen" }
attributes #7 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #8 = { noredzone "no-builtin-wcslen" }

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
!10 = !{!"auto-init"}
!11 = !{i64 3576}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 2155619784, i64 2155619659}
!14 = !{i64 2155620307, i64 2155621376, i64 2155621409, i64 2155621444, i64 2155621460, i64 2155622387, i64 2155622445, i64 2155622494, i64 2155622304, i64 2155621519, i64 2155621551, i64 2155621634}
!15 = !{i64 2155622803, i64 2155622679}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
end_hunk_0
