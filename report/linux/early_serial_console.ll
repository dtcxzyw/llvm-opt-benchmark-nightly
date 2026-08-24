Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/early_serial_console?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_io_ops = type { ptr, ptr, ptr }

@early_serial_base = hidden local_unnamed_addr global i32 0, section ".data", align 4
@.str = private unnamed_addr constant [12 x i8] c"earlyprintk\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1
@parse_earlyprintk.bases = internal unnamed_addr constant [2 x i32] [i32 1016, i32 760], align 4
@pio_ops = external hidden local_unnamed_addr global %struct.port_io_ops, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"uart8250,io,\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"uart,io,\00", align 1

; Function Attrs: noredzone nounwind
define hidden void @console_init() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 11 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.e = call i32 @cmdline_find_option(ptr noundef nonnull @.str, ptr noundef nonnull %i.c, i32 noundef 32) #4
  %i.f = icmp sgt i32 %i.e, 0
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sink.sroa.gep5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.f, label %bb.b, label %parse_earlyprintk.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.g = call i32 @strncmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1, i64 noundef 6) #4
  %.not.i = icmp eq i32 %i.g, 0                   ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 6, i32 0 ; 2 uses
  %spec.select32.i = select i1 %.not.i, i32 1016, i32 0
  %i.h = zext nneg i32 %spec.select.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = load i8, ptr %i.i, align 2
  %i.k = icmp eq i8 %i.j, 44                      ; 2 uses
  %i.l = zext i1 %i.k to i32
  %.122.i = or disjoint i32 %spec.select.i, %i.l  ; 3 uses
  %i.m = and i1 %.not.i, %i.k
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 3 uses
  %i.o = call i32 @strncmp(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.2, i64 noundef 2) #4
  %.not29.i = icmp eq i32 %i.o, 0
  br i1 %.not29.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = call i64 @simple_strtoull(ptr noundef nonnull %i.n, ptr noundef nonnull %i.d, i32 noundef 16) #4
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.n, %i.s
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.c to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.y = zext nneg i32 %.122.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.aa = call i32 @strncmp(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.3, i64 noundef 4) #4
  %.not30.i = icmp eq i32 %i.aa, 0
  br i1 %.not30.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = add nuw nsw i32 %.122.i, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 49
  %spec.select33.i = zext i1 %i.ae to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @parse_earlyprintk.bases, i64 %spec.select33.i
  %i.ag = load i32, ptr %i.af, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.223.i = phi i32 [ %.122.i, %bb.g ], [ %i.ab, %bb.h ], [ %i.x, %bb.f ], [ 7, %bb.e ], [ 7, %bb.d ] ; 2 uses
  %.1.i = phi i32 [ %spec.select32.i, %bb.g ], [ %i.ag, %bb.h ], [ %i.q, %bb.f ], [ 1016, %bb.e ], [ 1016, %bb.d ] ; 3 uses
  %i.ah = sext i32 %.223.i to i64
  %i.ai = getelementptr inbounds i8, ptr %i.c, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 44
  %i.al = zext i1 %i.ak to i32
  %spec.select34.i = add nsw i32 %.223.i, %i.al
  %i.am = sext i32 %spec.select34.i to i64
  %i.an = getelementptr inbounds i8, ptr %i.c, i64 %i.am ; 2 uses
  %i.ao = call i64 @simple_strtoull(ptr noundef nonnull %i.an, ptr noundef nonnull %i.d, i32 noundef 0) #4
  %i.ap = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  %.not31.i = icmp eq i32 %.1.i, 0
  br i1 %.not31.i, label %parse_earlyprintk.exit, label %parse_earlyprintk.exit.thread

parse_earlyprintk.exit.thread:                    ; preds = %bb.i
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp eq ptr %i.an, %i.ap
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.as
  %.024.i = select i1 %or.cond.i, i32 9600, i32 %i.aq
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.au = trunc i32 %.1.i to i16                  ; 5 uses
  %i.av = add i16 %i.au, 3                        ; 4 uses
  call void %i.at(i8 noundef zeroext 3, i16 noundef zeroext %i.av) #4, !inline_history !5
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.ax = add i16 %i.au, 1                        ; 2 uses
  call void %i.aw(i8 noundef zeroext 0, i16 noundef zeroext %i.ax) #4, !inline_history !5
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.az = add i16 %i.au, 2
  call void %i.ay(i8 noundef zeroext 0, i16 noundef zeroext %i.az) #4, !inline_history !5
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.bb = add i16 %i.au, 4
  call void %i.ba(i8 noundef zeroext 3, i16 noundef zeroext %i.bb) #4, !inline_history !5
  %i.bc = sdiv i32 115200, %.024.i                ; 2 uses
  %i.bd = load ptr, ptr @pio_ops, align 8
  %i.be = call zeroext i8 %i.bd(i16 noundef zeroext %i.av) #4, !inline_history !5 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.bg = or i8 %i.be, -128
  call void %i.bf(i8 noundef zeroext %i.bg, i16 noundef zeroext %i.av) #4, !inline_history !5
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.bi = trunc i32 %i.bc to i8
  call void %i.bh(i8 noundef zeroext %i.bi, i16 noundef zeroext %i.au) #4, !inline_history !5
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.bk = lshr i32 %i.bc, 8
  %i.bl = trunc i32 %i.bk to i8
  call void %i.bj(i8 noundef zeroext %i.bl, i16 noundef zeroext %i.ax) #4, !inline_history !5
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.bn = and i8 %i.be, 127
  call void %i.bm(i8 noundef zeroext %i.bn, i16 noundef zeroext %i.av) #4, !inline_history !5
  store i32 %.1.i, ptr @early_serial_base, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  br label %bb.s

parse_earlyprintk.exit:                           ; preds = %bb.a, %bb.i
  %.pr = load i32, ptr @early_serial_base, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %bb.j, label %bb.s

bb.j:                                             ; preds = %parse_earlyprintk.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.bo = call i32 @cmdline_find_option(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 64) #4
  %i.bp = icmp slt i32 %i.bo, 1
  br i1 %i.bp, label %parse_console_uart8250.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.a, ptr %i.b, align 8
  %i.bq = call i32 @strncmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i64 noundef 12) #4
  %.not.i1 = icmp eq i32 %i.bq, 0
  br i1 %.not.i1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = call i32 @strncmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, i64 noundef 8) #4
  %.not7.i = icmp eq i32 %i.br, 0
  br i1 %.not7.i, label %bb.m, label %parse_console_uart8250.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.k ], [ %.sink.sroa.gep5, %bb.l ]
  %i.bs = call i64 @simple_strtoull(ptr noundef nonnull %.sink.sroa.phi, ptr noundef nonnull %i.b, i32 noundef 0) #4 ; 3 uses
  %.0.i = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bt = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not8.i = icmp eq ptr %i.bt, null
  br i1 %.not8.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 44
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bx = call i64 @simple_strtoull(ptr noundef nonnull %i.bw, ptr noundef null, i32 noundef 0) #4
  %i.by = trunc i64 %i.bx to i32                  ; 2 uses
  %.not9.i = icmp eq i32 %i.by, 0
  %spec.store.select.i = select i1 %.not9.i, i32 9600, i32 %i.by
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bz = load ptr, ptr @pio_ops, align 8
  %i.ca = trunc i64 %i.bs to i16                  ; 3 uses
  %i.cb = add i16 %i.ca, 3                        ; 3 uses
  %i.cc = call zeroext i8 %i.bz(i16 noundef zeroext %i.cb) #4, !inline_history !6 ; 2 uses
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.ce = or i8 %i.cc, -128
  call void %i.cd(i8 noundef zeroext %i.ce, i16 noundef zeroext %i.cb) #4, !inline_history !6
  %i.cf = load ptr, ptr @pio_ops, align 8
  %i.cg = call zeroext i8 %i.cf(i16 noundef zeroext %i.ca) #4, !inline_history !6
  %i.ch = load ptr, ptr @pio_ops, align 8
  %i.ci = add i16 %i.ca, 1
  %i.cj = call zeroext i8 %i.ch(i16 noundef zeroext %i.ci) #4, !inline_history !6
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  call void %i.ck(i8 noundef zeroext %i.cc, i16 noundef zeroext %i.cb) #4, !inline_history !6
  %i.cl = zext i8 %i.cj to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = zext i8 %i.cg to i32
  %i.co = or disjoint i32 %i.cm, %i.cn
  %i.cp = udiv i32 115200, %i.co
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.05.i = phi i32 [ %spec.store.select.i, %bb.o ], [ %i.cp, %bb.p ]
  %.not10.i = icmp eq i32 %.0.i, 0
  br i1 %.not10.i, label %parse_console_uart8250.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.cr = trunc i64 %i.bs to i16                  ; 5 uses
  %i.cs = add i16 %i.cr, 3                        ; 4 uses
  call void %i.cq(i8 noundef zeroext 3, i16 noundef zeroext %i.cs) #4, !inline_history !7
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.cu = add i16 %i.cr, 1                        ; 2 uses
  call void %i.ct(i8 noundef zeroext 0, i16 noundef zeroext %i.cu) #4, !inline_history !7
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.cw = add i16 %i.cr, 2
  call void %i.cv(i8 noundef zeroext 0, i16 noundef zeroext %i.cw) #4, !inline_history !7
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.cy = add i16 %i.cr, 4
  call void %i.cx(i8 noundef zeroext 3, i16 noundef zeroext %i.cy) #4, !inline_history !7
  %i.cz = sdiv i32 115200, %.05.i                 ; 2 uses
  %i.da = load ptr, ptr @pio_ops, align 8
  %i.db = call zeroext i8 %i.da(i16 noundef zeroext %i.cs) #4, !inline_history !7 ; 2 uses
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.dd = or i8 %i.db, -128
  call void %i.dc(i8 noundef zeroext %i.dd, i16 noundef zeroext %i.cs) #4, !inline_history !7
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.df = trunc i32 %i.cz to i8
  call void %i.de(i8 noundef zeroext %i.df, i16 noundef zeroext %i.cr) #4, !inline_history !7
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.dh = lshr i32 %i.cz, 8
  %i.di = trunc i32 %i.dh to i8
  call void %i.dg(i8 noundef zeroext %i.di, i16 noundef zeroext %i.cu) #4, !inline_history !7
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pio_ops, i64 8), align 8
  %i.dk = and i8 %i.db, 127
  call void %i.dj(i8 noundef zeroext %i.dk, i16 noundef zeroext %i.cs) #4, !inline_history !7
  store i32 %.0.i, ptr @early_serial_base, align 4
  br label %parse_console_uart8250.exit

parse_console_uart8250.exit:                      ; preds = %bb.j, %bb.l, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.s

bb.s:                                             ; preds = %parse_earlyprintk.exit.thread, %parse_console_uart8250.exit, %parse_earlyprintk.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone
declare hidden i32 @cmdline_find_option(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin noredzone nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, !"Code Model", i32 1}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = distinct !{null, null}
!6 = distinct !{null, null}
!7 = distinct !{null, null}
end_hunk_0
