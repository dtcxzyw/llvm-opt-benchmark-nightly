Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/gss_krb5_wrap?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"net/sunrpc/auth_gss/gss_krb5_wrap.c\00", align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @gss_krb5_wrap_v2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @xdr_extend_head(ptr noundef %2, i32 noundef %1, i32 noundef 16) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr i8, ptr %i.b, i64 %i.c     ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1
  store i8 5, ptr %i.d, align 1
  %i.f = getelementptr i8, ptr %i.d, i64 2
  store i8 4, ptr %i.e, align 1
  %i.g = load i32, ptr %0, align 8
  %.not30 = icmp eq i32 %i.g, 0
  %spec.select = zext i1 %.not30 to i8
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = trunc i32 %i.i to i8
  %i.k = and i8 %i.j, 4
  %.1 = or disjoint i8 %i.k, %spec.select
  %i.l = or disjoint i8 %.1, 2
  %i.m = getelementptr i8, ptr %i.d, i64 3
  store i8 %i.l, ptr %i.f, align 1
  %i.n = getelementptr i8, ptr %i.d, i64 4
  store i8 -1, ptr %i.m, align 1
  %i.o = getelementptr i8, ptr %i.d, i64 6
  store i16 0, ptr %i.n, align 2
  %i.p = getelementptr i8, ptr %i.d, i64 8
  store i16 0, ptr %i.o, align 2
  %i.q = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.r = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, i64 1, ptr elementtype(i64) %i.q) #6, !srcloc !10
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.r)
  store i64 %i.s, ptr %i.p, align 8
  %i.t = tail call i32 @gss_krb5_aead_encrypt(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #5 ; 2 uses
  %.not32 = icmp eq i32 %i.t, 0
  br i1 %.not32, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = tail call i64 @ktime_get_real_seconds() #5
  %i.v = getelementptr i8, ptr %0, i64 96
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp slt i64 %i.w, %i.u
  %i.y = select i1 %i.x, i32 786432, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.y, %bb.c ], [ 851968, %bb.a ], [ %i.t, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_extend_head(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @gss_krb5_aead_encrypt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @gss_krb5_unwrap_v2(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !annotation !11
  %i.d = load ptr, ptr %3, align 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e     ; 10 uses
  %i.g = load i16, ptr %i.f, align 2
  %.not = icmp eq i16 %i.g, 1029
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.f, i64 2
  %i.i = load i8, ptr %i.h, align 2               ; 3 uses
  %i.j = load i32, ptr %0, align 8
  %.not55.not = icmp eq i32 %i.j, 0
  %i.k = and i8 %i.i, 1
  %.not56 = icmp eq i8 %i.k, 0
  %not..not56 = trunc i8 %i.i to i1
  %or.cond67 = select i1 %.not55.not, i1 %not..not56, i1 %.not56
  br i1 %or.cond67, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i8 %i.i, 2
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.f, i64 3
  %i.o = load i8, ptr %i.n, align 1
  %.not59 = icmp eq i8 %i.o, -1
  br i1 %.not59, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.f, i64 4
  %i.q = load i16, ptr %i.p, align 2
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = getelementptr i8, ptr %i.f, i64 6
  %i.t = load i16, ptr %i.s, align 2              ; 2 uses
  %.not60 = icmp eq i16 %i.t, 0
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = add i32 %1, 16
  tail call fastcc void @rotate_left(i32 noundef %i.w, ptr noundef %3, i32 noundef %i.v) #7, !srcloc !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = call i32 @gss_krb5_aead_decrypt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5 ; 2 uses
  %.not61 = icmp eq i32 %i.x, 0
  br i1 %.not61, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.y = add i32 %2, -16
  %i.z = load i32, ptr %i.b, align 4
  %i.aa = sub i32 %i.y, %i.z
  %i.ab = call i32 @read_bytes_from_xdr_buf(ptr noundef %3, i32 noundef %i.aa, ptr noundef nonnull %i.c, i32 noundef 16) #5
  %.not62 = icmp eq i32 %i.ab, 0
  br i1 %.not62, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.f, align 1
  %i.ad = load i32, ptr %i.c, align 16
  %i.ae = xor i32 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %i.f, i64 4
  %i.ag = getelementptr i8, ptr %i.c, i64 4
  %i.ah = load i16, ptr %i.af, align 1
  %i.ai = load i16, ptr %i.ag, align 4
  %i.aj = zext i16 %i.ah to i32
  %i.ak = zext i16 %i.ai to i32
  %i.al = xor i32 %i.aj, %i.ak
  %i.am = or i32 %i.ae, %i.al
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not63 = icmp eq i32 %i.ao, 0
  br i1 %.not63, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.f, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load i64, ptr %i.ap, align 1
  %i.as = load i64, ptr %i.aq, align 1
  %i.at = icmp ne i64 %i.ar, %i.as
  %i.au = zext i1 %i.at to i32
  %.not65 = icmp eq i32 %i.au, 0
  br i1 %.not65, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.av = call i64 @ktime_get_real_seconds() #5
  %i.aw = getelementptr i8, ptr %0, i64 96
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp sgt i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr i8, ptr %3, i64 8         ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = call i32 @llvm.umin.i32(i32 %2, i32 %i.bb) ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp ult i64 %i.ba, %i.bd
  br i1 %i.be, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  call void asm sideeffect "999: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 999b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 999) #6, !srcloc !14
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 225, i32 0, i64 16) #6, !srcloc !15
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bg = add i32 %i.bc, -16
  %i.bh = add i32 %1, %i.bf
  %i.bi = sub i32 %i.bg, %i.bh
  %i.bj = getelementptr i8, ptr %i.f, i64 16
  %i.bk = zext i32 %i.bf to i64
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk
  %i.bm = zext i32 %i.bi to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.f, ptr align 1 %i.bl, i64 %i.bm, i1 false)
  %i.bn = add i32 %i.bf, 16                       ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load i64, ptr %i.az, align 8
  %i.bq = sub i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.az, align 8
  %i.br = sub i32 %2, %i.bn
  %i.bs = getelementptr i8, ptr %3, i64 64
  store i32 %i.br, ptr %i.bs, align 8
  %i.bt = zext i16 %i.r to i32                    ; 2 uses
  %i.bu = add nuw nsw i32 %i.bt, 16
  %i.bv = load i32, ptr %i.b, align 4
  %i.bw = add i32 %i.bv, %i.bu
  call void @xdr_buf_trim(ptr noundef %3, i32 noundef %i.bw) #5
  %i.bx = load i32, ptr %i.a, align 4
  %i.by = add i32 %i.bx, 19
  %i.bz = lshr i32 %i.by, 2                       ; 2 uses
  store i32 %i.bz, ptr %5, align 4
  %i.ca = load i32, ptr %i.b, align 4
  %i.cb = add nuw nsw i32 %i.bt, 19
  %i.cc = add i32 %i.cb, %i.ca
  %i.cd = lshr i32 %i.cc, 2
  %i.ce = add nuw nsw i32 %i.cd, %i.bz
  store i32 %i.ce, ptr %4, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.i, %bb.j, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b, %bb.a, %bb.n
  %.0 = phi i32 [ 589824, %bb.a ], [ 393216, %bb.b ], [ 589824, %bb.c ], [ 589824, %bb.d ], [ %i.x, %bb.g ], [ 851968, %bb.h ], [ 851968, %bb.i ], [ 0, %bb.n ], [ 786432, %bb.k ], [ 851968, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @rotate_left(i32 noundef %0, ptr noundef %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %3 = alloca %struct.xdr_buf, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false), !annotation !11
  %i.c = getelementptr i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sub i32 %i.d, %0
  %i.f = call i32 @xdr_buf_subsegment(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %0, i32 noundef %i.e) #5 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = urem i32 %2, %i.h                        ; 3 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_rotate_left.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %rotate_buf_a_little.exit.i
  %.015.i = phi i32 [ %i.aa, %rotate_buf_a_little.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = sub nuw i32 %i.i, %.015.i
  %i.k = call i32 @llvm.umin.i32(i32 %i.j, i32 32) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !annotation !11
  %i.l = call i32 @read_bytes_from_xdr_buf(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.k) #5 ; 0 uses
  %i.m = load i32, ptr %i.g, align 8              ; 3 uses
  %i.n = icmp ult i32 %i.k, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %rotate_buf_a_little.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %i.o = phi i32 [ %i.w, %.lr.ph.i.i ], [ %i.m, %.lr.ph.i ]
  %.028.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.p = add i32 %.028.i.i, %i.k                  ; 2 uses
  %i.q = sub nuw i32 %i.o, %i.p
  %i.r = call i32 @llvm.umin.i32(i32 %i.q, i32 32) ; 2 uses
  %i.s = call i32 @read_bytes_from_xdr_buf(ptr noundef nonnull %3, i32 noundef %i.p, ptr noundef nonnull %i.b, i32 noundef %i.r) #5 ; 0 uses
  %i.t = call i32 @write_bytes_to_xdr_buf(ptr noundef nonnull %3, i32 noundef %.028.i.i, ptr noundef nonnull %i.b, i32 noundef %i.r) #5 ; 0 uses
  %i.u = add i32 %.028.i.i, 32                    ; 2 uses
  %i.v = add i32 %i.u, %i.k
  %i.w = load i32, ptr %i.g, align 8              ; 3 uses
  %i.x = icmp ult i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %rotate_buf_a_little.exit.i, !llvm.loop !16

rotate_buf_a_little.exit.i:                       ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.lcssa.i.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.w, %.lr.ph.i.i ]
  %i.y = sub i32 %.lcssa.i.i, %i.k
  %i.z = call i32 @write_bytes_to_xdr_buf(ptr noundef nonnull %3, i32 noundef %i.y, ptr noundef nonnull %i.a, i32 noundef %i.k) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.aa = add i32 %i.k, %.015.i                   ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %i.i
  br i1 %i.ab, label %.lr.ph.i, label %_rotate_left.exit, !llvm.loop !18

_rotate_left.exit:                                ; preds = %rotate_buf_a_little.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
end_hunk_0
