Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx_dpdma?download=true
inline.NumInlined: 89
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AddressSpace = type { %struct.rcu_head, ptr, ptr, ptr, i32, i32, ptr, %union.anon.2, %union.anon.3, i64, i64, %struct.QemuMutex, %struct.anon.4 }
%struct.rcu_head = type { ptr, ptr }
%union.anon.2 = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%union.anon.3 = type { %struct.QTailQLink }
%struct.QemuMutex = type { %union.pthread_mutex_t, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon.4 = type { ptr }
%struct.VMStateInfo = type { ptr, ptr, ptr, ptr, ptr }
%struct.DPDMADescriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"channel <= 5\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"../hw/dma/xlnx_dpdma.c\00", align 1
@__PRETTY_FUNCTION__.xlnx_dpdma_start_operation = private unnamed_addr constant [68 x i8] c"size_t xlnx_dpdma_start_operation(XlnxDPDMAState *, uint8_t, _Bool)\00", align 1
@address_space_memory = external global %struct.AddressSpace, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"DPDMA client not attached to valid DPDMA instance\0A\00", align 1
@__PRETTY_FUNCTION__.xlnx_dpdma_set_host_data_location = private unnamed_addr constant [74 x i8] c"void xlnx_dpdma_set_host_data_location(XlnxDPDMAState *, uint8_t, void *)\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"xlnx.dpdma\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"sys-bus-device\00", align 1
@xlnx_dpdma_info = internal constant { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.7, ptr @.str.8, i64 5248, i64 0, ptr @xlnx_dpdma_init, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @xlnx_dpdma_class_init, ptr null, ptr null, ptr null }, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/sysbus.h\00", align 1
@__func__.SYS_BUS_DEVICE = private unnamed_addr constant [15 x i8] c"SYS_BUS_DEVICE\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/qemu/qemu/include/hw/dma/xlnx_dpdma.h\00", align 1
@__func__.XLNX_DPDMA = private unnamed_addr constant [11 x i8] c"XLNX_DPDMA\00", align 1
@dma_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, { i32, i32, i8, [3 x i8] }, [4 x i8] } { ptr @xlnx_dpdma_read, ptr @xlnx_dpdma_write, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 4, i8 0, [7 x i8] zeroinitializer, ptr null }, { i32, i32, i8, [3 x i8] } { i32 4, i32 4, i8 0, [3 x i8] zeroinitializer }, [4 x i8] zeroinitializer }, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"offset <= (0xFFC >> 2)\00", align 1
@__PRETTY_FUNCTION__.xlnx_dpdma_read = private unnamed_addr constant [55 x i8] c"uint64_t xlnx_dpdma_read(void *, hwaddr, unsigned int)\00", align 1
@__PRETTY_FUNCTION__.xlnx_dpdma_write = private unnamed_addr constant [62 x i8] c"void xlnx_dpdma_write(void *, hwaddr, uint64_t, unsigned int)\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/qdev.h\00", align 1
@__func__.DEVICE_CLASS = private unnamed_addr constant [13 x i8] c"DEVICE_CLASS\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@vmstate_info_uint32 = external constant %struct.VMStateInfo, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"operation_finished\00", align 1
@vmstate_info_bool = external constant %struct.VMStateInfo, align 8
@.compoundliteral = internal constant [3 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.16, i64 1088, i64 4, i64 0, i64 0, i32 1024, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint32, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.17, i64 5232, i64 1, i64 0, i64 0, i32 6, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_bool, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_xlnx_dpdma = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.7, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_xlnx_dpdma_register_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xlnx_dpdma_start_operation(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.DPDMADescriptor, align 4    ; 4 uses
  %4 = alloca %struct.DPDMADescriptor, align 4    ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !9
  %i.a = zext i8 %1 to i32                        ; 8 uses
  %i.b = icmp ult i8 %1, 6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 685, ptr noundef nonnull @__PRETTY_FUNCTION__.xlnx_dpdma_start_operation) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1348       ; 3 uses
  %.val = load i32, ptr %i.c, align 4
  %i.d = shl nuw nsw i32 1, %i.a                  ; 2 uses
  %i.e = and i32 %.val, %i.d
  %.not149 = icmp eq i32 %i.e, 0
  br i1 %.not149, label %.loopexit159, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i8 %1 to i64                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %.idx.i = shl nuw nsw i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 3
  %or.cond.not = icmp eq i32 %i.j, 1
  br i1 %or.cond.not, label %.preheader158, label %.loopexit159

.preheader158:                                    ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5232
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f ; 4 uses
  %i.m = shl nuw nsw i32 64, %i.a                 ; 2 uses
  %i.n = xor i32 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 10 uses
  %i.p = shl nuw nsw i32 %i.a, 8                  ; 10 uses
  %i.q = add nuw nsw i32 %i.p, 520
  %i.r = lshr exact i32 %i.q, 2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.s ; 2 uses
  %i.u = add nuw nsw i32 %i.p, 524
  %i.v = lshr exact i32 %i.u, 2
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.w ; 2 uses
  %i.y = add nuw nsw i32 %i.p, 512
  %i.z = lshr exact i32 %i.y, 2
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aa
  %i.ac = add nuw nsw i32 %i.p, 516
  %i.ad = lshr exact i32 %i.ac, 2
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ai = add nuw nsw i32 %i.p, 528
  %i.aj = lshr exact i32 %i.ai, 2
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = add nuw nsw i32 %i.p, 532
  %i.ao = lshr exact i32 %i.an, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.as = add nuw nsw i32 %i.p, 544
  %i.at = lshr exact i32 %i.as, 2
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = add nuw nsw i32 %i.p, 548
  %i.ay = lshr exact i32 %i.ax, 2
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bc = add nuw nsw i32 %i.p, 552
  %i.bd = lshr exact i32 %i.bc, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.be
  %i.bg = add nuw nsw i32 %i.p, 540
  %i.bh = lshr exact i32 %i.bg, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5184
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.f ; 2 uses
  %i.bs = shl nuw nsw i32 4096, %i.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader158, %bb.ae
  %.0108 = phi i64 [ %.6, %bb.ae ], [ 0, %.preheader158 ] ; 4 uses
  %i.by = load i8, ptr %i.l, align 1, !range !10, !noundef !11
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = load i32, ptr %i.c, align 4             ; 2 uses
  %i.cb = and i32 %i.ca, %i.m
  %.not150 = icmp eq i32 %i.cb, 0
  %i.cc = and i32 %i.ca, %i.n
  store i32 %i.cc, ptr %i.c, align 4
  br i1 %.not150, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cd = load i32, ptr %i.ab, align 4
  %i.ce = shl i32 %i.cd, 16
  %i.cf = load i32, ptr %i.af, align 4
  %i.cg = add i32 %i.ce, %i.cf
  %i.ch = zext i32 %i.cg to i64
  store i8 0, ptr %i.l, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ci = load i32, ptr %i.t, align 4
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw i64 %i.cj, 32
  %i.cl = load i32, ptr %i.x, align 4
  %i.cm = zext i32 %i.cl to i64
  %i.cn = or disjoint i64 %i.ck, %i.cm
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0107 = phi i64 [ %i.ch, %bb.g ], [ %i.cn, %bb.h ] ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !12
  fence seq_cst
  %i.co = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %.0107, i64 4294967296, ptr noundef nonnull %4, i64 noundef range(i64 0, 262144) 64, i1 noundef zeroext false) #6
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %xlnx_dpdma_update_desc_info.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = shl nuw nsw i32 2, %i.a
  %i.cq = load i32, ptr %i.bv, align 4
  %i.cr = or i32 %i.cq, %i.cp                     ; 2 uses
  store i32 %i.cr, ptr %i.bv, align 4
  %i.cs = load i32, ptr %i.bt, align 4
  %i.ct = load i32, ptr %i.bu, align 8
  %i.cu = xor i32 %i.ct, -1
  %i.cv = and i32 %i.cs, %i.cu
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %bb.k, label %xlnx_dpdma_update_irq.exit

bb.k:                                             ; preds = %bb.j
  %i.cw = load i32, ptr %i.bw, align 8
  %i.cx = xor i32 %i.cw, -1
  %i.cy = and i32 %i.cr, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  br label %xlnx_dpdma_update_irq.exit

xlnx_dpdma_update_irq.exit:                       ; preds = %bb.j, %bb.k
  %i.db = phi i32 [ 1, %bb.j ], [ %i.da, %bb.k ]
  %i.dc = load ptr, ptr %i.bx, align 8
  call void @qemu_set_irq(ptr noundef %i.dc, i32 noundef %i.db) #6
  br label %.loopexit159.sink.split

xlnx_dpdma_update_desc_info.exit:                 ; preds = %bb.i
  %i.dd = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.de = and i32 %i.dd, 65535
  store i32 %i.de, ptr %i.t, align 4
  %i.df = load i32, ptr %i.ah, align 4            ; 2 uses
  store i32 %i.df, ptr %i.x, align 4
  %i.dg = lshr i32 %i.dd, 16                      ; 2 uses
  store i32 %i.dg, ptr %i.al, align 4
  %i.dh = load i32, ptr %i.am, align 4            ; 3 uses
  store i32 %i.dh, ptr %i.aq, align 4
  %i.di = load i32, ptr %i.ar, align 4            ; 5 uses
  %i.dj = call i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 14)
  store i32 %i.dj, ptr %i.av, align 4
  %i.dk = load i32, ptr %i.aw, align 4            ; 4 uses
  store i32 %i.dk, ptr %i.ba, align 4
  %i.dl = load i32, ptr %i.bb, align 4            ; 2 uses
  store i32 %i.dl, ptr %i.bf, align 4
  %i.dm = load i32, ptr %4, align 4               ; 15 uses
  %i.dn = shl i32 %i.dm, 13
  %i.do = and i32 %i.dn, 2088960                  ; 2 uses
  %i.dp = shl i32 %i.dm, 4
  %i.dq = and i32 %i.dp, 4096
  %i.dr = shl i32 %i.dm, 2
  %i.ds = and i32 %i.dr, 2048
  %i.dt = or disjoint i32 %i.dq, %i.ds
  %i.du = or disjoint i32 %i.dt, %i.do            ; 3 uses
  %i.dv = and i32 %i.dm, 768
  %.not151 = icmp eq i32 %i.dv, 0
  %spec.select156 = select i1 %.not151, i32 %i.do, i32 %i.du
  store i32 %spec.select156, ptr %i.bj, align 4
  %i.dw = load i32, ptr %i.bk, align 4            ; 3 uses
  %.not52.i = icmp slt i32 %i.dw, 0               ; 2 uses
  %i.dx = and i32 %i.dm, 1024                     ; 2 uses
  %i.dy = and i32 %i.dm, 3935232
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = or i1 %i.dz, %.not52.i
  br i1 %i.ea, label %bb.l, label %bb.m

bb.l:                                             ; preds = %xlnx_dpdma_update_desc_info.exit
  %i.eb = or disjoint i32 %i.du, 1024
  %i.ec = select i1 %.not52.i, i32 %i.eb, i32 %i.du
  %i.ed = lshr exact i32 %i.dx, 1
  %i.ee = lshr i32 %i.dm, 13                      ; 2 uses
  %i.ef = and i32 %i.ee, 256
  %i.eg = lshr i32 %i.dm, 12
  %i.eh = and i32 %i.eg, 128
  %i.ei = lshr i32 %i.dm, 14
  %i.ej = and i32 %i.ei, 64
  %i.ek = and i32 %i.ee, 32
  %i.el = lshr i32 %i.dm, 7
  %i.em = and i32 %i.el, 16
  %i.en = or disjoint i32 %i.ef, %i.ed
  %spec.select = or disjoint i32 %i.en, %i.eh
  %spec.select144 = or disjoint i32 %spec.select, %i.ej
  %spec.select145 = or disjoint i32 %spec.select144, %i.ek
  %spec.select146 = or i32 %spec.select145, %i.em
  %spec.select147 = or i32 %spec.select146, %i.ec
  store i32 %spec.select147, ptr %i.bj, align 4
  br label %bb.m

bb.m:                                             ; preds = %xlnx_dpdma_update_desc_info.exit, %bb.l
  %i.eo = and i32 %i.dm, 255
  %i.ep = icmp eq i32 %i.eo, 165
  br i1 %i.ep, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eq = shl nuw nsw i32 128, %i.a
  %i.er = load i32, ptr %i.bv, align 4
  %i.es = or i32 %i.er, %i.eq                     ; 2 uses
  store i32 %i.es, ptr %i.bv, align 4
  %i.et = load i32, ptr %i.bt, align 4
  %i.eu = load i32, ptr %i.bu, align 8
  %i.ev = xor i32 %i.eu, -1
  %i.ew = and i32 %i.et, %i.ev
  %.not.i134 = icmp eq i32 %i.ew, 0
  br i1 %.not.i134, label %bb.o, label %xlnx_dpdma_update_irq.exit135

bb.o:                                             ; preds = %bb.n
  %i.ex = load i32, ptr %i.bw, align 8
  %i.ey = xor i32 %i.ex, -1
  %i.ez = and i32 %i.es, %i.ey
  %i.fa = icmp ne i32 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  br label %xlnx_dpdma_update_irq.exit135

xlnx_dpdma_update_irq.exit135:                    ; preds = %bb.n, %bb.o
  %i.fc = phi i32 [ 1, %bb.n ], [ %i.fb, %bb.o ]
  %i.fd = load ptr, ptr %i.bx, align 8
  call void @qemu_set_irq(ptr noundef %i.fd, i32 noundef %i.fc) #6
  br label %.loopexit159.sink.split

bb.p:                                             ; preds = %bb.m
  %i.fe = and i32 %i.dm, 1048576
  %.not153 = icmp eq i32 %i.fe, 0
  br i1 %.not153, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ff = load i32, ptr %i.bl, align 4
  %i.fg = load <4 x i32>, ptr %i.bm, align 4
  %i.fh = load i32, ptr %i.bn, align 4
  %5 = load i32, ptr %i.bo, align 4
  %6 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fg)
  %op.rdx = add i32 %6, %i.df
  %op.rdx194 = add i32 %i.dd, %i.dh
  %op.rdx195 = add i32 %i.di, %i.dk
  %op.rdx196 = add i32 %i.dl, %i.dm
  %op.rdx.a = add i32 %i.dw, %i.ff
  %op.rdx194.a = add i32 %i.fh, %5
  %op.rdx195.a = add i32 %op.rdx, %op.rdx194
  %op.rdx196.a = add i32 %op.rdx195, %op.rdx196
  %op.rdx197 = add i32 %op.rdx.a, %op.rdx194.a
  %op.rdx198 = add i32 %op.rdx195.a, %op.rdx196.a
  %op.rdx199 = add i32 %op.rdx198, %op.rdx197
  %i.fi = load i32, ptr %i.bp, align 4
  %i.fj = icmp eq i32 %op.rdx199, %i.fi
  br i1 %i.fj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fk = shl nuw nsw i32 8192, %i.a
  %i.fl = load i32, ptr %i.bv, align 4
  %i.fm = or i32 %i.fl, %i.fk
  store i32 %i.fm, ptr %i.bv, align 4
  call fastcc void @xlnx_dpdma_update_irq(ptr noundef nonnull %0)
  br label %.loopexit159.sink.split

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.fn = icmp sgt i32 %i.dw, -1
  %i.fo = icmp ne i32 %i.dx, 0
  %or.cond148 = or i1 %i.fo, %i.fn
  br i1 %or.cond148, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fp = shl nuw nsw i32 33554432, %i.a
  %i.fq = load i32, ptr %i.bv, align 4
  %i.fr = or i32 %i.fq, %i.fp
  store i32 %i.fr, ptr %i.bv, align 4
  call fastcc void @xlnx_dpdma_update_irq(ptr noundef nonnull %0)
  br label %.loopexit159.sink.split

bb.u:                                             ; preds = %bb.s
  %i.fs = and i32 %i.dm, 2621440
  %i.ft = icmp ne i32 %i.fs, 0                    ; 2 uses
  %i.fu = zext i1 %i.ft to i8
  store i8 %i.fu, ptr %i.l, align 1
  %i.fv = load ptr, ptr %i.br, align 8
  %.not117 = icmp eq ptr %i.fv, null
  br i1 %.not117, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fw = and i32 %i.dm, 262144
  %i.fx = icmp ne i32 %i.fw, 0
  %.not118169 = icmp eq i32 %i.dk, 0
  %or.cond = select i1 %i.fx, i1 true, i1 %.not118169
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.fy = lshr i32 %i.di, 14
  %i.fz = and i32 %i.fy, 262128
  %i.ga = and i32 %i.di, 262143
  %i.gb = zext i32 %i.dk to i64
  %.sink15.i = zext i32 %i.dh to i64
  %i.gc = zext nneg i32 %i.dg to i64
  %i.gd = shl nuw nsw i64 %i.gc, 32
  %i.ge = or disjoint i64 %i.gd, %.sink15.i
  %i.gf = zext nneg i32 %i.ga to i64              ; 3 uses
  %i.gg = zext nneg i32 %i.fz to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.z
  %.1172 = phi i64 [ %.0108, %.lr.ph ], [ %i.gx, %bb.z ] ; 3 uses
  %.0113171 = phi i64 [ %i.gb, %.lr.ph ], [ %i.gy, %bb.z ]
  %storemerge170 = phi i64 [ %i.ge, %.lr.ph ], [ %i.gz, %bb.z ] ; 2 uses
  %i.gh = load ptr, ptr %i.br, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.1172
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !12
  fence seq_cst
  %i.gj = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %storemerge170, i64 4294967296, ptr noundef %i.gi, i64 noundef range(i64 0, 262144) %i.gf, i1 noundef zeroext false) #6
  %.not119 = icmp eq i32 %i.gj, 0
  br i1 %.not119, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gk = load i32, ptr %i.bt, align 4
  %i.gl = or i32 %i.gk, %i.bs                     ; 2 uses
  store i32 %i.gl, ptr %i.bt, align 4
  %i.gm = load i32, ptr %i.bu, align 8
  %i.gn = xor i32 %i.gm, -1
  %i.go = and i32 %i.gl, %i.gn
  %.not.i136 = icmp eq i32 %i.go, 0
  br i1 %.not.i136, label %bb.y, label %xlnx_dpdma_update_irq.exit137

bb.y:                                             ; preds = %bb.x
  %i.gp = load i32, ptr %i.bv, align 4
  %i.gq = load i32, ptr %i.bw, align 8
  %i.gr = xor i32 %i.gq, -1
  %i.gs = and i32 %i.gp, %i.gr
  %i.gt = icmp ne i32 %i.gs, 0
  %i.gu = zext i1 %i.gt to i32
  br label %xlnx_dpdma_update_irq.exit137

xlnx_dpdma_update_irq.exit137:                    ; preds = %bb.x, %bb.y
  %i.gv = phi i32 [ 1, %bb.x ], [ %i.gu, %bb.y ]
  %i.gw = load ptr, ptr %i.bx, align 8
  call void @qemu_set_irq(ptr noundef %i.gw, i32 noundef %i.gv) #6
  br label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.gx = add i64 %.1172, %i.gf                   ; 2 uses
  %i.gy = sub i64 %.0113171, %i.gf                ; 2 uses
  %i.gz = add i64 %storemerge170, %i.gg
  %.not118 = icmp eq i64 %i.gy, 0
  br i1 %.not118, label %.loopexit, label %bb.w, !llvm.loop !7

.loopexit:                                        ; preds = %bb.z, %bb.v, %xlnx_dpdma_update_irq.exit137, %bb.u
  %.6 = phi i64 [ %.0108, %bb.u ], [ %.1172, %xlnx_dpdma_update_irq.exit137 ], [ %.0108, %bb.v ], [ %i.gx, %bb.z ] ; 2 uses
  %.val130 = load i32, ptr %4, align 4            ; 2 uses
  %i.ha = and i32 %.val130, 512
  %.not154 = icmp eq i32 %i.ha, 0
  br i1 %.not154, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.hb = load i32, ptr %i.bk, align 4
  %i.hc = or i32 %i.hb, -2147483648
  store i32 %i.hc, ptr %i.bk, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !12
  fence seq_cst
  %i.hd = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %.0107, i64 4294967296, ptr noundef nonnull %3, i64 noundef range(i64 0, 262144) 64, i1 noundef zeroext true) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %.val131.pre = load i32, ptr %4, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit
  %.val131 = phi i32 [ %.val131.pre, %bb.aa ], [ %.val130, %.loopexit ]
  %i.he = and i32 %.val131, 256
  %.not155 = icmp eq i32 %i.he, 0
  br i1 %.not155, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hf = load i32, ptr %i.bt, align 4
  %i.hg = or i32 %i.hf, %i.d                      ; 2 uses
  store i32 %i.hg, ptr %i.bt, align 4
  %i.hh = load i32, ptr %i.bu, align 8
  %i.hi = xor i32 %i.hh, -1
  %i.hj = and i32 %i.hg, %i.hi
  %.not.i140 = icmp eq i32 %i.hj, 0
  br i1 %.not.i140, label %bb.ad, label %xlnx_dpdma_update_irq.exit141

bb.ad:                                            ; preds = %bb.ac
  %i.hk = load i32, ptr %i.bv, align 4
  %i.hl = load i32, ptr %i.bw, align 8
  %i.hm = xor i32 %i.hl, -1
  %i.hn = and i32 %i.hk, %i.hm
  %i.ho = icmp ne i32 %i.hn, 0
  %i.hp = zext i1 %i.ho to i32
  br label %xlnx_dpdma_update_irq.exit141

xlnx_dpdma_update_irq.exit141:                    ; preds = %bb.ac, %bb.ad
  %i.hq = phi i32 [ 1, %bb.ac ], [ %i.hp, %bb.ad ]
  %i.hr = load ptr, ptr %i.bx, align 8
  call void @qemu_set_irq(ptr noundef %i.hr, i32 noundef %i.hq) #6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %xlnx_dpdma_update_irq.exit141
  %.demorgan = or i1 %2, %i.ft
  br i1 %.demorgan, label %.loopexit159, label %bb.e, !llvm.loop !8

.loopexit159.sink.split:                          ; preds = %bb.t, %bb.r, %xlnx_dpdma_update_irq.exit135, %xlnx_dpdma_update_irq.exit
  store i8 1, ptr %i.l, align 1
  br label %.loopexit159

.loopexit159:                                     ; preds = %bb.ae, %.loopexit159.sink.split, %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.d ], [ %.0108, %.loopexit159.sink.split ], [ 0, %bb.c ], [ %.6, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xlnx_dpdma_update_irq(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.d = load i32, ptr %i.c, align 8
  %i.e = xor i32 %i.d, -1
  %i.f = and i32 %i.b, %i.e
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.j = load i32, ptr %i.i, align 8
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.h, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ 1, %bb.a ], [ %i.n, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5240
  %i.q = load ptr, ptr %i.p, align 8
end_hunk_0
begin_hunk_1_@xlnx_dpdma_write:bb.a
    i64 65, label %bb.h
    i64 128, label %bb.i
    i64 192, label %bb.i
    i64 256, label %bb.i
    i64 320, label %bb.i
    i64 384, label %bb.i
    i64 448, label %bb.i
    i64 134, label %bb.j
    i64 198, label %bb.k
    i64 262, label %bb.l
    i64 326, label %bb.m
    i64 390, label %bb.n
    i64 454, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1092 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = trunc i64 %2 to i32
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %i.d, %i.f
  store i32 %i.g, ptr %i.c, align 4
  tail call fastcc void @xlnx_dpdma_update_irq(ptr noundef %i.a)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1096 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = trunc i64 %2 to i32
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.i, %i.k
  store i32 %i.l, ptr %i.h, align 8
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1096 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = trunc i64 %2 to i32
  %i.p = or i32 %i.n, %i.o
  store i32 %i.p, ptr %i.m, align 8
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1108 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = trunc i64 %2 to i32
  %i.t = xor i32 %i.s, -1
  %i.u = and i32 %i.r, %i.t
  store i32 %i.u, ptr %i.q, align 4
  tail call fastcc void @xlnx_dpdma_update_irq(ptr noundef %i.a)
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = trunc i64 %2 to i32
  %i.y = xor i32 %i.x, -1
  %i.z = and i32 %i.w, %i.y
  store i32 %i.z, ptr %i.v, align 8
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = trunc i64 %2 to i32
  %i.ad = or i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.aa, align 8
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1348 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = trunc i64 %2 to i32
  %i.ah = and i32 %i.ag, 4095
  %i.ai = or i32 %i.af, %i.ah
  store i32 %i.ai, ptr %i.ae, align 4
  br label %bb.s

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.aj = trunc i64 %2 to i32
  %i.ak = and i32 %i.aj, 65535
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.b
  store i32 %i.ak, ptr %i.am, align 4
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1348 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, -2
  store i32 %i.ap, ptr %i.an, align 4
  %i.aq = trunc i64 %2 to i32
  %i.ar = and i32 %i.aq, 1073741823
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1624
  store i32 %i.ar, ptr %i.as, align 4
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1348 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, -3
  store i32 %i.av, ptr %i.at, align 4
  %i.aw = trunc i64 %2 to i32
  %i.ax = and i32 %i.aw, 1073741823
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1880
  store i32 %i.ax, ptr %i.ay, align 4
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1348 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, -5
  store i32 %i.bb, ptr %i.az, align 4
  %i.bc = trunc i64 %2 to i32
  %i.bd = and i32 %i.bc, 1073741823
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 2136
  store i32 %i.bd, ptr %i.be, align 4
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 1348 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, -9
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = trunc i64 %2 to i32
  %i.bj = and i32 %i.bi, 1073741823
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 2392
  store i32 %i.bj, ptr %i.bk, align 4
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1348 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, -17
  store i32 %i.bn, ptr %i.bl, align 4
  %i.bo = trunc i64 %2 to i32
  %i.bp = and i32 %i.bo, 1073741823
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 2648
  store i32 %i.bp, ptr %i.bq, align 4
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1348 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, -33
  store i32 %i.bt, ptr %i.br, align 4
  %i.bu = trunc i64 %2 to i32
  %i.bv = and i32 %i.bu, 1073741823
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 2904
  store i32 %i.bv, ptr %i.bw, align 4
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  %i.bx = icmp ult i64 %1, 4096
  br i1 %i.bx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 548, ptr noundef nonnull @__PRETTY_FUNCTION__.xlnx_dpdma_write) #7
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.by = trunc i64 %2 to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.b
  store i32 %i.by, ptr %i.ca, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_dpdma_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i32 noundef 47, ptr noundef nonnull @__func__.XLNX_DPDMA) #6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.b, i8 noundef 0, i64 noundef 4096, i1 noundef false) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store i32 134217727, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1364
  store i32 65535, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1388
  store i32 65535, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.h, i8 1, i64 6, i1 false)
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !13}
!8 = distinct !{!8, !13}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{i64 2152200193}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
