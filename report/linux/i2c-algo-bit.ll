Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i2c-algo-bit?download=true
inline.NumInlined: 29
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_i2c_bit_algo: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad i2c_bit_algo ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_i2c_bit_add_bus: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad i2c_bit_add_bus ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_i2c_bit_add_numbered_bus: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad i2c_bit_add_numbered_bus ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.i2c_algorithm = type { %union.anon.0, %union.anon.1, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }

@__param_str_bit_test = internal constant [22 x i8] c"i2c_algo_bit.bit_test\00", align 16
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@bit_test = internal global i32 0, align 4
@__param_bit_test = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_bit_test, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @bit_test } }, section "__param", align 8
@__UNIQUE_ID_modinfo_611 = internal constant [35 x i8] c"i2c_algo_bit.parmtype=bit_test:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_612 = internal constant [76 x i8] c"i2c_algo_bit.parm=bit_test:lines testing - 0 off; 1 report; 2 fail if stuck\00", section ".modinfo", align 1
@i2c_bit_algo = dso_local constant %struct.i2c_algorithm { %union.anon.0 { ptr @bit_xfer }, %union.anon.1 { ptr @bit_xfer_atomic }, ptr null, ptr null, ptr @bit_func }, align 8
@__UNIQUE_ID_addressable_i2c_bit_algo_613 = internal global ptr @i2c_bit_algo, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_i2c_bit_add_bus_614 = internal global ptr @i2c_bit_add_bus, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_i2c_bit_add_numbered_bus_615 = internal global ptr @i2c_bit_add_numbered_bus, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_616 = internal constant [60 x i8] c"i2c_algo_bit.author=Simon G. Vogl <simon@tk.uni-linz.ac.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_617 = internal constant [55 x i8] c"i2c_algo_bit.description=I2C-Bus bit-banging algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_618 = internal constant [49 x i8] c"i2c_algo_bit.file=drivers/i2c/algos/i2c-algo-bit\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_619 = internal constant [25 x i8] c"i2c_algo_bit.license=GPL\00", section ".modinfo", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [31 x i8] c"died at extended address code\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"died at 2nd address code\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"died at repeated address code\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"readbytes: invalid block length (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"readbytes: ack/nak timeout\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"sendbytes: NAK bailout.\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"sendbytes: error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"not flagged for atomic transfers\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Not I2C compliant: can't read SDA\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Not I2C compliant: can't read SCL\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Bus may be unreliable\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"\016%s: SDA is write-only, testing not possible\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\016%s: SCL is write-only, testing not possible\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"\014%s: bus seems to be busy (scl=%d, sda=%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"\014%s: SDA stuck high!\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"\014%s: SCL unexpected low while pulling SDA low!\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\014%s: SDA stuck low!\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\014%s: SCL unexpected low while pulling SDA high!\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\014%s: SCL stuck high!\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"\014%s: SDA unexpected low while pulling SCL low!\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\014%s: SCL stuck low!\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"\014%s: SDA unexpected low while pulling SCL high!\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"\016%s: Test OK\0A\00", align 1
@i2c_bit_quirk_no_clk_stretch = internal constant { i64, i32, i16, i16, i16, i16, [4 x i8] } { i64 16, i32 0, i16 0, i16 0, i16 0, i16 0, [4 x i8] zeroinitializer }, align 8
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_addressable_i2c_bit_add_bus_614, ptr @__UNIQUE_ID_addressable_i2c_bit_add_numbered_bus_615, ptr @__UNIQUE_ID_addressable_i2c_bit_algo_613, ptr @__UNIQUE_ID_modinfo_611, ptr @__UNIQUE_ID_modinfo_612, ptr @__UNIQUE_ID_modinfo_616, ptr @__UNIQUE_ID_modinfo_617, ptr @__UNIQUE_ID_modinfo_618, ptr @__UNIQUE_ID_modinfo_619, ptr @__param_bit_test], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bit_xfer(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 12 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %udelay.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef %0) #4    ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.ah, label %udelay.exit.i

udelay.exit.i:                                    ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.b, align 8
  tail call void %i.h(ptr noundef %i.i, i32 noundef 0) #4, !inline_history !0
  %i.j = getelementptr i8, ptr %i.b, i64 56       ; 4 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64
  tail call void @__udelay(i64 noundef range(i64 -2147483648, 2147483648) %i.l) #4
  %i.m = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.b, align 8
  tail call void %i.n(ptr noundef %i.o, i32 noundef 0) #4, !inline_history !1
  %i.p = load i32, ptr %i.j, align 8
  %i.q = sdiv i32 %i.p, 2
  %i.r = sext i32 %i.q to i64
  tail call void @__udelay(i64 noundef range(i64 -2147483648, 2147483648) %i.r) #4
  %i.s = icmp sgt i32 %2, 0
  br i1 %i.s, label %.lr.ph, label %readbytes.exit.thread.thread

.lr.ph:                                           ; preds = %udelay.exit.i
  %i.t = getelementptr i8, ptr %0, i64 108
  %i.u = getelementptr i8, ptr %0, i64 112        ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %i.v = getelementptr [16 x i8], ptr %1, i64 %indvars.iv ; 7 uses
  %i.w = getelementptr i8, ptr %i.v, i64 2        ; 3 uses
  %i.x = load i16, ptr %i.w, align 2              ; 2 uses
  %i.y = and i16 %i.x, 4096
  %i.z = and i16 %i.x, 16384
  %.not53 = icmp eq i16 %i.z, 0
  br i1 %.not53, label %bb.d, label %bit_doAddress.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not54 = icmp eq i64 %indvars.iv, 0
  br i1 %.not54, label %i2c_start.exit59, label %bb.e

bb.e:                                             ; preds = %bb.d
  %3 = getelementptr [16 x i8], ptr %1, i64 %indvars.iv
  %i.aa = getelementptr i8, ptr %3, i64 -14
  %i.ab = load i16, ptr %i.aa, align 2
  %.not55 = icmp sgt i16 %i.ab, -1
  br i1 %.not55, label %bb.f, label %udelay.exit.i58

udelay.exit.i58:                                  ; preds = %bb.e
  tail call fastcc void @i2c_stop(ptr noundef %i.b) #5, !srcloc !25
  %i.ac = load ptr, ptr %i.g, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  tail call void %i.ac(ptr noundef %i.ad, i32 noundef 0) #4, !inline_history !0
  %i.ae = load i32, ptr %i.j, align 8
  %i.af = sext i32 %i.ae to i64
  tail call void @__udelay(i64 noundef range(i64 -2147483648, 2147483648) %i.af) #4
  %i.ag = load ptr, ptr %i.m, align 8
  %i.ah = load ptr, ptr %i.b, align 8
  tail call void %i.ag(ptr noundef %i.ah, i32 noundef 0) #4, !inline_history !1
  %i.ai = load i32, ptr %i.j, align 8
  %i.aj = sdiv i32 %i.ai, 2
  %i.ak = sext i32 %i.aj to i64
  tail call void @__udelay(i64 noundef range(i64 -2147483648, 2147483648) %i.ak) #4
  br label %i2c_start.exit59

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @i2c_repstart(ptr noundef %i.b) #5, !srcloc !26
  br label %i2c_start.exit59

i2c_start.exit59:                                 ; preds = %udelay.exit.i58, %bb.f, %bb.d
  %i.al = load i16, ptr %i.w, align 2             ; 4 uses
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = and i16 %i.al, 4096                     ; 3 uses
  %i.ao = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq i16 %i.an, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %i2c_start.exit59
  %i.ap = load i32, ptr %i.t, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %i2c_start.exit59
  %i.aq = phi i32 [ %i.ap, %bb.g ], [ 0, %i2c_start.exit59 ] ; 3 uses
  %i.ar = and i32 %i.am, 16
  %.not43.i = icmp eq i32 %i.ar, 0
  %.val46.i = load i16, ptr %i.v, align 8         ; 2 uses
  br i1 %.not43.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = lshr i16 %.val46.i, 7
  %i.at = trunc i16 %i.as to i8
  %i.au = and i8 %i.at, 6                         ; 2 uses
  %i.av = or disjoint i8 %i.au, -16
  %i.aw = tail call fastcc i32 @try_address(ptr noundef %0, i8 noundef zeroext %i.av, i32 noundef %i.aq) #5, !srcloc !27
  %i.ax = icmp eq i32 %i.aw, 1
  %i.ay = icmp ne i16 %i.an, 0                    ; 3 uses
  %or.cond.i = or i1 %i.ay, %i.ax
  br i1 %or.cond.i, label %bb.j, label %bit_doAddress.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.az = load i16, ptr %i.v, align 8
  %i.ba = trunc i16 %i.az to i8
  %.val.i = load ptr, ptr %i.a, align 8
  %i.bb = tail call fastcc i32 @i2c_outb(ptr %.val.i, i8 noundef zeroext %i.ba) #5
  %i.bc = icmp eq i32 %i.bb, 1
  %or.cond3.i = or i1 %i.ay, %i.bc
  br i1 %or.cond3.i, label %bb.k, label %bit_doAddress.exit.sink.split

bb.k:                                             ; preds = %bb.j
  %i.bd = and i32 %i.am, 1
  %.not45.i = icmp eq i32 %i.bd, 0
  br i1 %.not45.i, label %bit_doAddress.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @i2c_repstart(ptr noundef %i.ao) #5, !srcloc !28
  %i.be = or disjoint i8 %i.au, -15
  %i.bf = tail call fastcc i32 @try_address(ptr noundef %0, i8 noundef zeroext %i.be, i32 noundef %i.aq) #5, !srcloc !29
  %i.bg = icmp eq i32 %i.bf, 1
  %or.cond5.i = or i1 %i.ay, %i.bg
  br i1 %or.cond5.i, label %bit_doAddress.exit.thread, label %bit_doAddress.exit.sink.split

bb.m:                                             ; preds = %bb.h
  %i.bh = trunc i16 %.val46.i to i8
  %i.bi = shl i8 %i.bh, 1
  %i.bj = trunc i16 %i.al to i8
  %i.bk = and i8 %i.bj, 1
  %i.bl = or disjoint i8 %i.bi, %i.bk
  %i.bm = lshr i16 %i.al, 13
  %i.bn = trunc nuw nsw i16 %i.bm to i8
  %i.bo = and i8 %i.bn, 1
  %spec.select.i = xor i8 %i.bl, %i.bo
  %i.bp = tail call fastcc i32 @try_address(ptr noundef %0, i8 noundef zeroext %spec.select.i, i32 noundef %i.aq) #5, !srcloc !30
  %i.bq = icmp eq i32 %i.bp, 1
  %i.br = icmp ne i16 %i.an, 0
  %or.cond7.i = or i1 %i.br, %i.bq
  br i1 %or.cond7.i, label %bit_doAddress.exit.thread, label %bit_doAddress.exit

bit_doAddress.exit.sink.split:                    ; preds = %bb.l, %bb.j, %bb.i
  %.str.sink = phi ptr [ @.str.1, %bb.j ], [ @.str, %bb.i ], [ @.str.2, %bb.l ]
  %.042.i.ph = phi i32 [ -6, %bb.j ], [ -6, %bb.i ], [ -5, %bb.l ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.u, ptr noundef nonnull %.str.sink) #6
  br label %bit_doAddress.exit

bit_doAddress.exit:                               ; preds = %bit_doAddress.exit.sink.split, %bb.m
  %.042.i = phi i32 [ -6, %bb.m ], [ %.042.i.ph, %bit_doAddress.exit.sink.split ]
  %.not79 = icmp eq i16 %i.y, 0
  br i1 %.not79, label %readbytes.exit.thread.thread, label %bit_doAddress.exit.thread

bit_doAddress.exit.thread:                        ; preds = %bb.m, %bb.l, %bb.k, %bit_doAddress.exit, %bb.c
  %i.bs = load i16, ptr %i.w, align 2
  %.fr.i = freeze i16 %i.bs                       ; 3 uses
  %i.bt = and i16 %.fr.i, 1
  %.not56 = icmp eq i16 %i.bt, 0
  br i1 %.not56, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bit_doAddress.exit.thread
  %i.bu = getelementptr i8, ptr %i.v, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %i.v, i64 4       ; 4 uses
  %i.bx = load i16, ptr %i.bw, align 4            ; 2 uses
  %i.by = zext i16 %i.bx to i32
  %i.bz = zext i16 %.fr.i to i32                  ; 2 uses
  %i.ca = load ptr, ptr %i.a, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not.i60 = icmp eq ptr %i.cc, null
  br i1 %.not.i60, label %readbytes.exit.thread.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %.not51.i = icmp eq i16 %i.bx, 0
  br i1 %.not51.i, label %readbytes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cd = and i32 %i.bz, 1024
  %.not37.i = icmp eq i32 %i.cd, 0
  %i.ce = and i32 %i.bz, 2048
  %.not38.i = icmp eq i32 %i.ce, 0                ; 2 uses
  br label %sdahi.exit.i.i

sdahi.exit.i.i:                                   ; preds = %bb.aa, %.lr.ph.i
  %.048.i = phi i32 [ %i.by, %.lr.ph.i ], [ %.1.i, %bb.aa ]
  %.03247.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.ea, %bb.aa ] ; 2 uses
  %.03346.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dz, %bb.aa ] ; 3 uses
  %.val.i61 = load ptr, ptr %i.a, align 8         ; 13 uses
  %i.cf = getelementptr i8, ptr %.val.i61, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %.val.i61, align 8
  tail call void %i.cg(ptr noundef %i.ch, i32 noundef 1) #4, !inline_history !18
  %i.ci = getelementptr i8, ptr %.val.i61, i64 56 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = add i32 %i.cj, 1
  %i.cl = sdiv i32 %i.ck, 2
  %i.cm = sext i32 %i.cl to i64
  tail call void @__udelay(i64 noundef range(i64 -2147483648, 2147483648) %i.cm) #4
  %i.cn = getelementptr i8, ptr %.val.i61, i64 16 ; 2 uses
  %i.co = getelementptr i8, ptr %.val.i61, i64 32 ; 3 uses
  %i.cp = getelementptr i8, ptr %.val.i61, i64 60
  %i.cq = getelementptr i8, ptr %.val.i61, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.i.i.i, %sdahi.exit.i.i
  %.04.i.i = phi i8 [ 0, %sdahi.exit.i.i ], [ %spec.select.i.i, %.loopexit.i.i.i ]
  %.0153.i.i = phi i32 [ 0, %sdahi.exit.i.i ], [ %i.dx, %.loopexit.i.i.i ] ; 2 uses
  %i.cr = load ptr, ptr %i.cn, align 8
  %i.cs = load ptr, ptr %.val.i61, align 8
  tail call void %i.cr(ptr noundef %i.cs, i32 noundef 1) #4, !inline_history !19
  %i.ct = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = load volatile i64, ptr @jiffies, align 64
  %i.cv = load ptr, ptr %.val.i61, align 8
  %i.cw = tail call i32 %i.ct(ptr noundef %i.cv) #4, !inline_history !19
  %.not1012.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not1012.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %bb.r
  %i.cx = load i32, ptr %i.cp, align 4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = add i64 %i.cu, %i.cy
  %i.da = load volatile i64, ptr @jiffies, align 64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.dd = load ptr, ptr %i.co, align 8
  %i.de = load ptr, ptr %.val.i61, align 8
  %i.df = tail call i32 %i.dd(ptr noundef %i.de) #4, !inline_history !19
  %.not11.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not11.i.i.i, label %readbytes.exit, label %.loopexit.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !16
  %i.dg = load ptr, ptr %i.co, align 8
  %i.dh = load ptr, ptr %.val.i61, align 8
  %i.di = tail call i32 %i.dg(ptr noundef %i.dh) #4, !inline_history !19
  %.not10.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !2

.loopexit.i.i.i:                                  ; preds = %bb.r, %bb.o, %bb.p, %bb.q
  %i.dj = load i32, ptr %i.ci, align 8
  %i.dk = sext i32 %i.dj to i64
end_hunk_0
