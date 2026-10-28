Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-knxip_decrypt?download=true
inline.NumInlined: 27
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Keyring\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Created\00", align 1
@xmlFree = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Backbone\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"GroupAddresses\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Devices\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@knx_keyring_mca_keys = hidden local_unnamed_addr global ptr null, align 8
@knx_keyring_ga_keys = hidden local_unnamed_addr global ptr null, align 8
@knx_keyring_ga_senders = hidden local_unnamed_addr global ptr null, align 8
@knx_keyring_ia_keys = hidden local_unnamed_addr global ptr null, align 8
@knx_keyring_ia_seqs = hidden local_unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"epan/dissectors/packet-knxip_decrypt.c\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"nonce_length <= 16\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"MulticastAddress\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"MCA %u.%u.%u.%u key\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Senders\00", align 1
@read_knx_keyring_xml_group_element.delim = internal constant [3 x i8] c" ,\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%u/%u/%u\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"GA %d/%d/%d key\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"GA %d/%d/%d sender %d.%d.%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%u.%u.%u\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"IndividualAddress\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ToolKey\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"SequenceNumber\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"IA %d.%d.%d key\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"IA %u.%u.%u SeqNr %lu\0A\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @knx_ccm_calc_cbc_mac(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 18 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef align 1 dereferenceable(16) %6, i64 noundef 16, i1 noundef false) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8
  %i.f = call i32 @gcry_cipher_open(ptr noundef nonnull %i.c, i32 noundef 7, i32 noundef 3, i32 noundef 0)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %encrypt_block.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call i32 @gcry_cipher_setkey(ptr noundef %i.g, ptr noundef %1, i64 noundef 16)
  %.not6.i = icmp eq i32 %i.h, 0
  %i.i = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %.not6.i, label %encrypt_block.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @gcry_cipher_close(ptr noundef %i.i)
  br label %encrypt_block.exit.thread

encrypt_block.exit.thread:                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.loopexit.sink.split

encrypt_block.exit:                               ; preds = %bb.b
  %i.j = call i32 @gcry_cipher_encrypt(ptr noundef %i.i, ptr noundef %0, i64 noundef 16, ptr noundef nonnull %i.d, i64 noundef 16)
  %.not7.i = icmp eq i32 %i.j, 0
  %i.k = load ptr, ptr %i.c, align 8
  call void @gcry_cipher_close(ptr noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br i1 %.not7.i, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %encrypt_block.exit
  %i.l = lshr i32 %3, 8
  %i.m = load i8, ptr %0, align 1
  %i.n = trunc i32 %i.l to i8
  %i.o = xor i8 %i.m, %i.n
  store i8 %i.o, ptr %i.d, align 16
  %i.p = getelementptr i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = trunc i32 %3 to i8
  %i.s = xor i8 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.s, ptr %i.t, align 1
  %i.u = sub i64 %i.e, %i.a                       ; 2 uses
  %i.v = add i64 %i.u, -1
  %diff.check108 = icmp ult i64 %i.v, 15
  %i.w = add i64 %i.u, -1
  %diff.check93 = icmp ult i64 %i.w, 15
  br label %bb.e

bb.e:                                             ; preds = %encrypt_block.exit45, %bb.d
  %.039 = phi i32 [ %3, %bb.d ], [ %.140.lcssa, %encrypt_block.exit45 ] ; 7 uses
  %.037 = phi ptr [ %4, %bb.d ], [ %.138.lcssa, %encrypt_block.exit45 ] ; 8 uses
  %.035 = phi i32 [ %5, %bb.d ], [ %.136.lcssa, %encrypt_block.exit45 ] ; 8 uses
  %.033 = phi ptr [ %2, %bb.d ], [ %.134.lcssa, %encrypt_block.exit45 ] ; 11 uses
  %.0 = phi i8 [ 2, %bb.d ], [ 0, %encrypt_block.exit45 ] ; 2 uses
  %.033106 = ptrtoaddr ptr %.033 to i64
  %.03792 = ptrtoaddr ptr %.037 to i64
  %i.x = or i32 %.035, %.039
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.loopexit, label %.preheader49

.preheader49:                                     ; preds = %bb.e
  %.not66 = icmp eq i32 %.039, 0
  br i1 %.not66, label %.preheader48, label %iter.check121

iter.check121:                                    ; preds = %.preheader49
  %i.y = zext nneg i8 %.0 to i64                  ; 13 uses
  %i.z = xor i64 %i.y, 15
  %i.aa = add i32 %.039, -1
  %i.ab = zext i32 %i.aa to i64
  %umin110 = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ab) ; 3 uses
  %i.ac = add nuw nsw i64 %umin110, 1             ; 4 uses
  %min.iters.check111 = icmp samesign ult i64 %umin110, 3
  br i1 %min.iters.check111, label %.lr.ph.preheader, label %vector.memcheck105

vector.memcheck105:                               ; preds = %iter.check121
  %i.ad = or disjoint i64 %i.e, %i.y
  %i.ae = sub i64 %.033106, %i.ad
  %diff.check107 = icmp ugt i64 %i.ae, -16
  %conflict.rdx109 = or i1 %diff.check107, %diff.check108
  br i1 %conflict.rdx109, label %.lr.ph.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %vector.memcheck105
  %min.iters.check113.not = icmp eq i64 %umin110, 15
  br i1 %min.iters.check113.not, label %vector.ph114, label %vec.epilog.ph125

vector.ph114:                                     ; preds = %vector.main.loop.iter.check112
  %i.af = or disjoint i64 %i.ac, %i.y
  %i.ag = getelementptr i8, ptr %.033, i64 %i.ac
  %i.ah = add i32 %.039, -16
  %wide.load117 = load <16 x i8>, ptr %.033, align 1
  %i.ai = getelementptr i8, ptr %0, i64 %i.y
  %wide.load118 = load <16 x i8>, ptr %i.ai, align 1
  %i.aj = xor <16 x i8> %wide.load118, %wide.load117
  %i.ak = getelementptr i8, ptr %i.d, i64 %i.y
  store <16 x i8> %i.aj, ptr %i.ak, align 2
  br label %.preheader48.loopexit

vec.epilog.ph125:                                 ; preds = %vector.main.loop.iter.check112
  %n.vec127 = and i64 %i.ac, 252                  ; 7 uses
  %i.al = or disjoint i64 %n.vec127, %i.y         ; 2 uses
  %i.am = getelementptr i8, ptr %.033, i64 %n.vec127 ; 2 uses
  %i.an = trunc nuw nsw i64 %n.vec127 to i32
  %i.ao = sub i32 %.039, %i.an                    ; 2 uses
  %wide.load131 = load <4 x i8>, ptr %.033, align 1
  %i.ap = getelementptr i8, ptr %0, i64 %i.y
  %wide.load132 = load <4 x i8>, ptr %i.ap, align 1
  %i.aq = xor <4 x i8> %wide.load132, %wide.load131
  %i.ar = getelementptr i8, ptr %i.d, i64 %i.y
  store <4 x i8> %i.aq, ptr %i.ar, align 2
  %i.as = icmp eq i64 %n.vec127, 4
  br i1 %i.as, label %vec.epilog.middle.block134, label %vec.epilog.vector.body128.1

vec.epilog.vector.body128.1:                      ; preds = %vec.epilog.ph125
  %i.at = or disjoint i64 %i.y, 4                 ; 2 uses
  %next.gep130.1 = getelementptr i8, ptr %.033, i64 4
  %wide.load131.1 = load <4 x i8>, ptr %next.gep130.1, align 1
  %i.au = getelementptr i8, ptr %0, i64 %i.at
  %wide.load132.1 = load <4 x i8>, ptr %i.au, align 1
  %i.av = xor <4 x i8> %wide.load132.1, %wide.load131.1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.at
  store <4 x i8> %i.av, ptr %i.aw, align 2
  %i.ax = icmp eq i64 %n.vec127, 8
  br i1 %i.ax, label %vec.epilog.middle.block134, label %vec.epilog.vector.body128.2

vec.epilog.vector.body128.2:                      ; preds = %vec.epilog.vector.body128.1
  %i.ay = or disjoint i64 %i.y, 8                 ; 2 uses
  %next.gep130.2 = getelementptr i8, ptr %.033, i64 8
  %wide.load131.2 = load <4 x i8>, ptr %next.gep130.2, align 1
  %i.az = getelementptr i8, ptr %0, i64 %i.ay
  %wide.load132.2 = load <4 x i8>, ptr %i.az, align 1
  %i.ba = xor <4 x i8> %wide.load132.2, %wide.load131.2
  %i.bb = getelementptr i8, ptr %i.d, i64 %i.ay
  store <4 x i8> %i.ba, ptr %i.bb, align 2
  %i.bc = icmp eq i64 %n.vec127, 12
  br i1 %i.bc, label %vec.epilog.middle.block134, label %vec.epilog.vector.body128.3

vec.epilog.vector.body128.3:                      ; preds = %vec.epilog.vector.body128.2
  %i.bd = or disjoint i64 %i.y, 12                ; 2 uses
  %next.gep130.3 = getelementptr i8, ptr %.033, i64 12
  %wide.load131.3 = load <4 x i8>, ptr %next.gep130.3, align 1
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %wide.load132.3 = load <4 x i8>, ptr %i.be, align 1
  %i.bf = xor <4 x i8> %wide.load132.3, %wide.load131.3
  %i.bg = getelementptr i8, ptr %i.d, i64 %i.bd
  store <4 x i8> %i.bf, ptr %i.bg, align 2
  br label %vec.epilog.middle.block134

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body128.3, %vec.epilog.vector.body128.2, %vec.epilog.vector.body128.1, %vec.epilog.ph125
  %cmp.n135 = icmp eq i64 %i.ac, %n.vec127
  br i1 %cmp.n135, label %.preheader48.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check121, %vector.memcheck105, %vec.epilog.middle.block134
  %indvars.iv.ph = phi i64 [ %i.y, %vector.memcheck105 ], [ %i.y, %iter.check121 ], [ %i.al, %vec.epilog.middle.block134 ]
  %.13453.ph = phi ptr [ %.033, %vector.memcheck105 ], [ %.033, %iter.check121 ], [ %i.am, %vec.epilog.middle.block134 ]
  %.14052.ph = phi i32 [ %.039, %vector.memcheck105 ], [ %.039, %iter.check121 ], [ %i.ao, %vec.epilog.middle.block134 ]
  br label %.lr.ph

.preheader48.loopexit:                            ; preds = %.lr.ph, %vector.ph114, %vec.epilog.middle.block134
  %.lcssa87 = phi ptr [ %i.am, %vec.epilog.middle.block134 ], [ %i.ag, %vector.ph114 ], [ %i.ch, %.lr.ph ]
  %.lcssa = phi i32 [ %i.ao, %vec.epilog.middle.block134 ], [ %i.ah, %vector.ph114 ], [ %i.cn, %.lr.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.al, %vec.epilog.middle.block134 ], [ %i.af, %vector.ph114 ], [ %indvars.iv.next, %.lr.ph ]
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.lcssa to i8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.loopexit, %.preheader49
  %.140.lcssa = phi i32 [ 0, %.preheader49 ], [ %.lcssa, %.preheader48.loopexit ]
  %.134.lcssa = phi ptr [ %.033, %.preheader49 ], [ %.lcssa87, %.preheader48.loopexit ]
  %.1.lcssa = phi i8 [ %.0, %.preheader49 ], [ %i.bh, %.preheader48.loopexit ] ; 3 uses
  %i.bi = icmp ne i32 %.035, 0
  %i.bj = icmp samesign ult i8 %.1.lcssa, 16
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %iter.check, label %.preheader

iter.check:                                       ; preds = %.preheader48
  %i.bl = zext nneg i8 %.1.lcssa to i64           ; 9 uses
  %i.bm = sub nuw nsw i64 15, %i.bl
  %i.bn = add i32 %.035, -1
  %i.bo = zext i32 %i.bn to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bo) ; 3 uses
  %i.bp = add nuw nsw i64 %umin, 1                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bq = or disjoint i64 %i.e, %i.bl
  %i.br = sub i64 %.03792, %i.bq
  %diff.check = icmp ugt i64 %i.br, -16
  %conflict.rdx = or i1 %diff.check, %diff.check93
  br i1 %conflict.rdx, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check94.not = icmp eq i64 %umin, 15
  br i1 %min.iters.check94.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %i.bs = getelementptr i8, ptr %.037, i64 %i.bp
  %i.bt = add i32 %.035, -16
  %i.bu = or disjoint i64 %i.bp, %i.bl
  %wide.load = load <16 x i8>, ptr %.037, align 1
  %i.bv = getelementptr i8, ptr %0, i64 %i.bl
  %wide.load95 = load <16 x i8>, ptr %i.bv, align 1
  %i.bw = xor <16 x i8> %wide.load95, %wide.load
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bl
  store <16 x i8> %i.bw, ptr %i.bx, align 1
  br label %.preheader.loopexit

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec96 = and i64 %i.bp, 28                    ; 5 uses
  %i.by = add nuw nsw i64 %n.vec96, %i.bl         ; 2 uses
  %i.bz = trunc nuw nsw i64 %n.vec96 to i32
  %i.ca = sub i32 %.035, %i.bz                    ; 2 uses
  %i.cb = getelementptr i8, ptr %.037, i64 %n.vec96 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 3 uses
  %i.cc = add nuw i64 %index97, %i.bl             ; 2 uses
  %next.gep98 = getelementptr i8, ptr %.037, i64 %index97
  %wide.load99.a = load <4 x i8>, ptr %next.gep98, align 1
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc
  %wide.load100.a = load <4 x i8>, ptr %i.cd, align 1
  %i.ce = xor <4 x i8> %wide.load100.a, %wide.load99.a
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.cc
  store <4 x i8> %i.ce, ptr %i.cf, align 1
  %index.next101 = add nuw i64 %index97, 4        ; 2 uses
  %i.cg = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.bp, %n.vec96
  br i1 %cmp.n102, label %.preheader.loopexit, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv75.ph = phi i64 [ %i.bl, %vector.memcheck ], [ %i.bl, %iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.13658.ph = phi i32 [ %.035, %vector.memcheck ], [ %.035, %iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.13857.ph = phi ptr [ %.037, %vector.memcheck ], [ %.037, %iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %.13453 = phi ptr [ %i.ch, %.lr.ph ], [ %.13453.ph, %.lr.ph.preheader ] ; 2 uses
  %.14052 = phi i32 [ %i.cn, %.lr.ph ], [ %.14052.ph, %.lr.ph.preheader ]
  %i.ch = getelementptr i8, ptr %.13453, i64 1    ; 2 uses
  %i.ci = load i8, ptr %.13453, align 1
  %i.cj = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = xor i8 %i.ck, %i.ci
  %i.cm = getelementptr i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = add i32 %.14052, -1                     ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = icmp samesign ult i64 %indvars.iv, 15
  %i.cq = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %i.cq, label %.lr.ph, label %.preheader48.loopexit, !llvm.loop !10

.preheader.loopexit:                              ; preds = %.lr.ph60, %vector.body, %vec.epilog.middle.block
  %.lcssa89 = phi ptr [ %i.cb, %vec.epilog.middle.block ], [ %i.bs, %vector.body ], [ %i.cv, %.lr.ph60 ]
  %.lcssa88 = phi i32 [ %i.ca, %vec.epilog.middle.block ], [ %i.bt, %vector.body ], [ %i.db, %.lr.ph60 ]
  %indvars.iv.next76.lcssa = phi i64 [ %i.by, %vec.epilog.middle.block ], [ %i.bu, %vector.body ], [ %indvars.iv.next76, %.lr.ph60 ]
  %i.cr = trunc nuw nsw i64 %indvars.iv.next76.lcssa to i8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader48
  %.138.lcssa = phi ptr [ %.037, %.preheader48 ], [ %.lcssa89, %.preheader.loopexit ]
  %.136.lcssa = phi i32 [ %.035, %.preheader48 ], [ %.lcssa88, %.preheader.loopexit ]
  %.2.lcssa = phi i8 [ %.1.lcssa, %.preheader48 ], [ %i.cr, %.preheader.loopexit ] ; 3 uses
  %i.cs = icmp samesign ult i8 %.2.lcssa, 16
  br i1 %i.cs, label %.lr.ph65.preheader, label %._crit_edge

.lr.ph65.preheader:                               ; preds = %.preheader
  %i.ct = zext nneg i8 %.2.lcssa to i64           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.ct
  %scevgep78 = getelementptr i8, ptr %0, i64 %i.ct
  %narrow = sub nuw nsw i8 16, %.2.lcssa
  %i.cu = zext nneg i8 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %scevgep78, i64 %i.cu, i1 false)
  br label %._crit_edge

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.lr.ph60 ], [ %indvars.iv75.ph, %.lr.ph60.preheader ] ; 4 uses
  %.13658 = phi i32 [ %i.db, %.lr.ph60 ], [ %.13658.ph, %.lr.ph60.preheader ]
  %.13857 = phi ptr [ %i.cv, %.lr.ph60 ], [ %.13857.ph, %.lr.ph60.preheader ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.13857, i64 1    ; 2 uses
  %i.cw = load i8, ptr %.13857, align 1
  %i.cx = getelementptr i8, ptr %0, i64 %indvars.iv75
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = xor i8 %i.cy, %i.cw
  %i.da = getelementptr i8, ptr %i.d, i64 %indvars.iv75
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = add i32 %.13658, -1                     ; 3 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = icmp samesign ult i64 %indvars.iv75, 15
  %i.de = and i1 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph60, label %.preheader.loopexit, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph65.preheader, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  %i.df = call i32 @gcry_cipher_open(ptr noundef nonnull %i.b, i32 noundef 7, i32 noundef 3, i32 noundef 0)
  %.not.i41 = icmp eq i32 %i.df, 0
  br i1 %.not.i41, label %bb.f, label %encrypt_block.exit45.thread

bb.f:                                             ; preds = %._crit_edge
  %i.dg = load ptr, ptr %i.b, align 8
  %i.dh = call i32 @gcry_cipher_setkey(ptr noundef %i.dg, ptr noundef %1, i64 noundef 16)
  %.not6.i43 = icmp eq i32 %i.dh, 0
  %i.di = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %.not6.i43, label %encrypt_block.exit45, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @gcry_cipher_close(ptr noundef %i.di)
  br label %encrypt_block.exit45.thread

encrypt_block.exit45.thread:                      ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit.sink.split

encrypt_block.exit45:                             ; preds = %bb.f
  %i.dj = call i32 @gcry_cipher_encrypt(ptr noundef %i.di, ptr noundef %0, i64 noundef 16, ptr noundef nonnull %i.d, i64 noundef 16)
  %.not7.i44 = icmp eq i32 %i.dj, 0
  %i.dk = load ptr, ptr %i.b, align 8
  call void @gcry_cipher_close(ptr noundef %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not7.i44, label %bb.e, label %.loopexit.sink.split, !llvm.loop !12

.loopexit.sink.split:                             ; preds = %encrypt_block.exit45, %encrypt_block.exit45.thread, %encrypt_block.exit, %encrypt_block.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(16) %0, i8 noundef 0, i64 noundef 16, i1 noundef false) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @knxip_ccm_calc_cbc_mac(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp ult i8 %7, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 68, ptr noundef @.str.12) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %7, 0
  br i1 %.not.i, label %build_b0.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = zext nneg i8 %7 to i64                   ; 2 uses
  %i.d = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef readonly %6, i64 noundef range(i64 1, 256) %i.c, i64 noundef 16) #12, !alias.scope !16 ; 0 uses
  br label %build_b0.exit

build_b0.exit:                                    ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.c, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 %.pre-phi.i
  %i.f = sub nuw nsw i64 16, %.pre-phi.i
  %i.g = sub nuw nsw i64 16, %.pre-phi.i
  %i.h = call ptr @__memset_chk(ptr noundef %i.e, i32 noundef 0, i64 noundef range(i64 0, 17) %i.f, i64 noundef %i.g) #12 ; 0 uses
  %i.i = lshr i32 %5, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.j, ptr %i.k, align 2
  %i.l = trunc i32 %5 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.l, ptr %i.m, align 1
  call void @knx_ccm_calc_cbc_mac(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @knx_ccm_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i8 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 9 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = alloca [16 x i8], align 16               ; 14 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = icmp sgt i32 %4, -1
  br i1 %i.j, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %4, 0                        ; 2 uses
  %i.l = icmp ne ptr %3, null
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = zext i8 %6 to i32
  %i.n = add nuw i32 %4, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = tail call noalias ptr @wmem_alloc(ptr noundef %0, i64 noundef %i.o) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.p, %bb.d ], [ %1, %bb.c ]   ; 13 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef align 1 dereferenceable(16) %7, i64 noundef 16, i1 noundef false) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8
  %i.s = call i32 @gcry_cipher_open(ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef 3, i32 noundef 0)
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %encrypt_block.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = call i32 @gcry_cipher_setkey(ptr noundef %i.t, ptr noundef %2, i64 noundef 16)
  %.not6.i = icmp eq i32 %i.u, 0
  %i.v = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %.not6.i, label %encrypt_block.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @gcry_cipher_close(ptr noundef %i.v)
  br label %encrypt_block.exit.thread

encrypt_block.exit.thread:                        ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.h

encrypt_block.exit:                               ; preds = %bb.f
  %i.w = call i32 @gcry_cipher_encrypt(ptr noundef %i.v, ptr noundef nonnull %i.h, i64 noundef 16, ptr noundef nonnull %i.e, i64 noundef 16)
  %.not7.i = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br i1 %.not7.i, label %.preheader70, label %bb.h

.preheader70:                                     ; preds = %encrypt_block.exit
  %i.y = icmp ugt i8 %8, 15
  %.not120 = or i1 %i.y, %i.k
  br i1 %.not120, label %.preheader68, label %iter.check

iter.check:                                       ; preds = %.preheader70
  %i.z = zext nneg i8 %8 to i64                   ; 5 uses
  %i.aa = sub nuw nsw i64 15, %i.z
  %i.ab = add nsw i32 %4, -1
  %i.ac = zext i32 %i.ab to i64
  %umin137 = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ac) ; 3 uses
  %i.ad = add nuw nsw i64 %umin137, 1             ; 4 uses
  %min.iters.check = icmp samesign ult i64 %umin137, 3
  %i.ae = sub i64 %i.b, %i.r
  %diff.check = icmp ugt i64 %i.ae, -16
  %or.cond220 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond220, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check138.not = icmp eq i64 %umin137, 15
  br i1 %min.iters.check138.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %i.af = add nsw i32 %4, -16
  %i.ag = getelementptr i8, ptr %3, i64 %i.ad
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.ad
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.z
  %wide.load = load <16 x i8>, ptr %i.ai, align 1
  %wide.load140 = load <16 x i8>, ptr %3, align 1
  %i.aj = xor <16 x i8> %wide.load140, %wide.load
  store <16 x i8> %i.aj, ptr %i.q, align 1
  br label %.preheader68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec141 = and i64 %i.ad, 28                   ; 6 uses
  %i.ak = add nuw nsw i64 %n.vec141, %i.z
  %i.al = getelementptr i8, ptr %i.q, i64 %n.vec141 ; 2 uses
  %i.am = getelementptr i8, ptr %3, i64 %n.vec141 ; 2 uses
  %i.an = trunc nuw nsw i64 %n.vec141 to i32
  %i.ao = sub nsw i32 %4, %i.an                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 4 uses
  %next.gep143 = getelementptr i8, ptr %i.q, i64 %index142
  %next.gep144 = getelementptr i8, ptr %3, i64 %index142
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index142
  %wide.load145.a = load <4 x i8>, ptr %gep, align 1
  %wide.load146.a = load <4 x i8>, ptr %next.gep144, align 1
  %i.ap = xor <4 x i8> %wide.load146.a, %wide.load145.a
  store <4 x i8> %i.ap, ptr %next.gep143, align 1
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.ad, %n.vec141
  br i1 %cmp.n148, label %.preheader68, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.z, %iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.04177.ph = phi ptr [ %i.q, %iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.04676.ph = phi ptr [ %3, %iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.05175.ph = phi i32 [ %4, %iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.h:                                             ; preds = %encrypt_block.exit.thread, %encrypt_block.exit
  br i1 %.not, label %.loopexit.sink.split, label %.loopexit

.preheader68:                                     ; preds = %.lr.ph, %vector.body, %vec.epilog.middle.block, %.preheader70
  %.051.lcssa = phi i32 [ %4, %.preheader70 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.af, %vector.body ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.046.lcssa = phi ptr [ %3, %.preheader70 ], [ %i.am, %vec.epilog.middle.block ], [ %i.ag, %vector.body ], [ %i.ax, %.lr.ph ]
  %.041.lcssa = phi ptr [ %i.q, %.preheader70 ], [ %i.al, %vec.epilog.middle.block ], [ %i.ah, %vector.body ], [ %i.ba, %.lr.ph ] ; 2 uses
  %.not5785 = icmp eq i32 %.051.lcssa, 0
  br i1 %.not5785, label %._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %.preheader68
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 15 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %.04177 = phi ptr [ %i.ba, %.lr.ph ], [ %.04177.ph, %.lr.ph.preheader ] ; 2 uses
  %.04676 = phi ptr [ %i.ax, %.lr.ph ], [ %.04676.ph, %.lr.ph.preheader ] ; 2 uses
  %.05175 = phi i32 [ %i.bb, %.lr.ph ], [ %.05175.ph, %.lr.ph.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.av = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %.04676, i64 1    ; 2 uses
  %i.ay = load i8, ptr %.04676, align 1
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr i8, ptr %.04177, i64 1    ; 2 uses
  store i8 %i.az, ptr %.04177, align 1
  %i.bb = add nsw i32 %.05175, -1                 ; 3 uses
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = icmp samesign ult i64 %indvars.iv, 15
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph, label %.preheader68, !llvm.loop !18

.loopexit67:                                      ; preds = %.preheader, %middle.block170
  %.lcssa130 = phi ptr [ %i.bs, %middle.block170 ], [ %i.ci, %.preheader ]
  %.lcssa129 = phi ptr [ %i.br, %middle.block170 ], [ %i.cl, %.preheader ] ; 2 uses
  %.lcssa = phi i32 [ %i.cf, %middle.block170 ], [ %i.cm, %.preheader ] ; 2 uses
  %.not57 = icmp eq i32 %.lcssa, 0
  br i1 %.not57, label %._crit_edge, label %bb.i, !llvm.loop !19

bb.i:                                             ; preds = %.lr.ph89, %.loopexit67
  %.14288 = phi ptr [ %.041.lcssa, %.lr.ph89 ], [ %.lcssa129, %.loopexit67 ] ; 8 uses
  %.14787 = phi ptr [ %.046.lcssa, %.lr.ph89 ], [ %.lcssa130, %.loopexit67 ] ; 8 uses
  %.15286 = phi i32 [ %.051.lcssa, %.lr.ph89 ], [ %.lcssa, %.loopexit67 ] ; 5 uses
  %.14288153 = ptrtoaddr ptr %.14288 to i64       ; 2 uses
  %.14787155 = ptrtoaddr ptr %.14787 to i64
  %i.bf = load i8, ptr %i.ar, align 1
  %i.bg = add i8 %i.bf, 1
  store i8 %i.bg, ptr %i.ar, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8
  %i.bh = call i32 @gcry_cipher_open(ptr noundef nonnull %i.c, i32 noundef 7, i32 noundef 3, i32 noundef 0)
  %.not.i60 = icmp eq i32 %i.bh, 0
  br i1 %.not.i60, label %bb.j, label %encrypt_block.exit64.thread

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr %i.c, align 8
  %i.bj = call i32 @gcry_cipher_setkey(ptr noundef %i.bi, ptr noundef %2, i64 noundef 16)
  %.not6.i62 = icmp eq i32 %i.bj, 0
  %i.bk = load ptr, ptr %i.c, align 8             ; 2 uses
  br i1 %.not6.i62, label %encrypt_block.exit64, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @gcry_cipher_close(ptr noundef %i.bk)
  br label %encrypt_block.exit64.thread

encrypt_block.exit64.thread:                      ; preds = %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.loopexit69

encrypt_block.exit64:                             ; preds = %bb.j
  %i.bl = call i32 @gcry_cipher_encrypt(ptr noundef %i.bk, ptr noundef nonnull %i.f, i64 noundef 16, ptr noundef nonnull %i.e, i64 noundef 16)
  %.not7.i63 = icmp eq i32 %i.bl, 0
  %i.bm = load ptr, ptr %i.c, align 8
  call void @gcry_cipher_close(ptr noundef %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br i1 %.not7.i63, label %.preheader.preheader, label %.loopexit69

.preheader.preheader:                             ; preds = %encrypt_block.exit64
  %i.bn = add i32 %.15286, -1
  %umin = call i32 @llvm.umin.i32(i32 %i.bn, i32 15)
  %i.bo = add nuw nsw i32 %umin, 1
  %wide.trip.count = zext nneg i32 %i.bo to i64   ; 3 uses
  %min.iters.check157 = icmp ult i32 %.15286, 8
  br i1 %min.iters.check157, label %.preheader.preheader221, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.preheader.preheader
  %i.bp = sub i64 %i.g, %.14288153
  %diff.check154 = icmp ugt i64 %i.bp, -8
  %i.bq = sub i64 %.14787155, %.14288153
  %diff.check156 = icmp ugt i64 %i.bq, -8
  %conflict.rdx = or i1 %diff.check154, %diff.check156
  br i1 %conflict.rdx, label %.preheader.preheader221, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck152
  %n.vec159 = and i64 %wide.trip.count, 24        ; 5 uses
  %i.br = getelementptr i8, ptr %.14288, i64 %n.vec159 ; 2 uses
  %i.bs = getelementptr i8, ptr %.14787, i64 %n.vec159 ; 2 uses
  %i.bt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.15286, i64 0 ; 2 uses
  %wide.load165 = load <4 x i8>, ptr %i.f, align 16
  %wide.load166 = load <4 x i8>, ptr %i.as, align 4
  %i.bu = getelementptr i8, ptr %.14787, i64 4
  %wide.load167 = load <4 x i8>, ptr %.14787, align 1
  %wide.load168 = load <4 x i8>, ptr %i.bu, align 1
  %i.bv = xor <4 x i8> %wide.load167, %wide.load165
  %i.bw = xor <4 x i8> %wide.load168, %wide.load166
  %i.bx = getelementptr i8, ptr %.14288, i64 4
  store <4 x i8> %i.bv, ptr %.14288, align 1
  store <4 x i8> %i.bw, ptr %i.bx, align 1
  %i.by = add <4 x i32> %i.bt, splat (i32 -1)
  %i.bz = icmp eq i64 %n.vec159, 8
  br i1 %i.bz, label %middle.block170, label %vector.body160.1

vector.body160.1:                                 ; preds = %vector.ph158
  %next.gep163.1 = getelementptr i8, ptr %.14288, i64 8
  %next.gep164.1 = getelementptr i8, ptr %.14787, i64 8
  %wide.load165.1 = load <4 x i8>, ptr %i.at, align 8
  %wide.load166.1 = load <4 x i8>, ptr %i.au, align 4
  %i.ca = getelementptr i8, ptr %.14787, i64 12
  %wide.load167.1 = load <4 x i8>, ptr %next.gep164.1, align 1
  %wide.load168.1 = load <4 x i8>, ptr %i.ca, align 1
  %i.cb = xor <4 x i8> %wide.load167.1, %wide.load165.1
  %i.cc = xor <4 x i8> %wide.load168.1, %wide.load166.1
  %i.cd = getelementptr i8, ptr %.14288, i64 12
  store <4 x i8> %i.cb, ptr %next.gep163.1, align 1
  store <4 x i8> %i.cc, ptr %i.cd, align 1
  %i.ce = add <4 x i32> %i.bt, splat (i32 -2)
  br label %middle.block170

middle.block170:                                  ; preds = %vector.body160.1, %vector.ph158
  %.lcssa223 = phi <4 x i32> [ %i.by, %vector.ph158 ], [ %i.ce, %vector.body160.1 ]
  %.lcssa222 = phi <4 x i32> [ splat (i32 -1), %vector.ph158 ], [ splat (i32 -2), %vector.body160.1 ]
  %bin.rdx = add <4 x i32> %.lcssa222, %.lcssa223
  %i.cf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n171 = icmp eq i64 %n.vec159, %wide.trip.count
  br i1 %cmp.n171, label %.loopexit67, label %.preheader.preheader221

.preheader.preheader221:                          ; preds = %vector.memcheck152, %.preheader.preheader, %middle.block170
  %indvars.iv108.ph = phi i64 [ 0, %vector.memcheck152 ], [ 0, %.preheader.preheader ], [ %n.vec159, %middle.block170 ]
  %.24383.ph = phi ptr [ %.14288, %vector.memcheck152 ], [ %.14288, %.preheader.preheader ], [ %i.br, %middle.block170 ]
  %.24882.ph = phi ptr [ %.14787, %vector.memcheck152 ], [ %.14787, %.preheader.preheader ], [ %i.bs, %middle.block170 ]
  %.25381.ph = phi i32 [ %.15286, %vector.memcheck152 ], [ %.15286, %.preheader.preheader ], [ %i.cf, %middle.block170 ]
  br label %.preheader

.loopexit69:                                      ; preds = %encrypt_block.exit64, %encrypt_block.exit64.thread
  br i1 %.not, label %.loopexit.sink.split, label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader221, %.preheader
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %.preheader ], [ %indvars.iv108.ph, %.preheader.preheader221 ] ; 2 uses
  %.24383 = phi ptr [ %i.cl, %.preheader ], [ %.24383.ph, %.preheader.preheader221 ] ; 2 uses
  %.24882 = phi ptr [ %i.ci, %.preheader ], [ %.24882.ph, %.preheader.preheader221 ] ; 2 uses
  %.25381 = phi i32 [ %i.cm, %.preheader ], [ %.25381.ph, %.preheader.preheader221 ]
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.f, i64 %indvars.iv108
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr i8, ptr %.24882, i64 1    ; 2 uses
  %i.cj = load i8, ptr %.24882, align 1
  %i.ck = xor i8 %i.cj, %i.ch
  %i.cl = getelementptr i8, ptr %.24383, i64 1    ; 2 uses
  store i8 %i.ck, ptr %.24383, align 1
  %i.cm = add nsw i32 %.25381, -1                 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit67, label %.preheader, !llvm.loop !20

._crit_edge:                                      ; preds = %.loopexit67, %.preheader68
  %.142.lcssa = phi ptr [ %.041.lcssa, %.preheader68 ], [ %.lcssa129, %.loopexit67 ] ; 7 uses
  %.142.lcssa180 = ptrtoaddr ptr %.142.lcssa to i64 ; 2 uses
  %.not58 = icmp eq ptr %5, null
  %.not5991 = icmp eq i8 %6, 0
  %or.cond98 = or i1 %.not58, %.not5991
  br i1 %or.cond98, label %.loopexit, label %iter.check200

iter.check200:                                    ; preds = %._crit_edge
  %spec.store.select = call i8 @llvm.umin.i8(i8 %6, i8 16) ; 5 uses
  %i.cn = add nsw i8 %spec.store.select, -1       ; 3 uses
  %i.co = zext i8 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.co, 1                ; 5 uses
  %min.iters.check182 = icmp ult i8 %i.cn, 3
  br i1 %min.iters.check182, label %.lr.ph97.preheader, label %vector.memcheck183

vector.memcheck183:                               ; preds = %iter.check200
  %i.cq = sub i64 %i.i, %.142.lcssa180
  %diff.check184 = icmp ugt i64 %i.cq, -16
  %i.cr = sub i64 %i.a, %.142.lcssa180
  %diff.check185 = icmp ugt i64 %i.cr, -16
  %conflict.rdx186 = or i1 %diff.check184, %diff.check185
  br i1 %conflict.rdx186, label %.lr.ph97.preheader, label %vector.main.loop.iter.check187

vector.main.loop.iter.check187:                   ; preds = %vector.memcheck183
  %min.iters.check188 = icmp ult i8 %i.cn, 15
  br i1 %min.iters.check188, label %vec.epilog.ph204, label %vector.ph189

vector.ph189:                                     ; preds = %vector.main.loop.iter.check187
  %i.cs = and i64 %i.cp, 12
  %n.vec190 = and i64 %i.cp, 496                  ; 6 uses
  %i.ct = getelementptr i8, ptr %.142.lcssa, i64 %n.vec190
  %i.cu = trunc i64 %n.vec190 to i8
  %i.cv = sub i8 %spec.store.select, %i.cu
  %i.cw = getelementptr i8, ptr %5, i64 %n.vec190
  %wide.load195 = load <16 x i8>, ptr %i.h, align 16
  %wide.load196 = load <16 x i8>, ptr %5, align 1
  %i.cx = xor <16 x i8> %wide.load196, %wide.load195
  store <16 x i8> %i.cx, ptr %.142.lcssa, align 1
  %cmp.n199 = icmp eq i64 %i.cp, %n.vec190
  br i1 %cmp.n199, label %.loopexit, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %vector.ph189
  %min.epilog.iters.check203 = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check203, label %.lr.ph97.preheader, label %vec.epilog.ph204, !prof !24

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check201
  %vec.epilog.resume.val205 = phi i64 [ %n.vec190, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check187 ]
  %n.vec206 = and i64 %i.cp, 508                  ; 6 uses
  %i.cy = getelementptr i8, ptr %.142.lcssa, i64 %n.vec206
  %i.cz = trunc i64 %n.vec206 to i8
  %i.da = sub i8 %spec.store.select, %i.cz
  %i.db = getelementptr i8, ptr %5, i64 %n.vec206
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph204
  %index208 = phi i64 [ %vec.epilog.resume.val205, %vec.epilog.ph204 ], [ %index.next213, %vec.epilog.vector.body207 ] ; 4 uses
  %next.gep209 = getelementptr i8, ptr %.142.lcssa, i64 %index208
  %next.gep210 = getelementptr i8, ptr %5, i64 %index208
  %i.dc = getelementptr i8, ptr %i.h, i64 %index208
  %wide.load211 = load <4 x i8>, ptr %i.dc, align 4
  %wide.load212 = load <4 x i8>, ptr %next.gep210, align 1
  %i.dd = xor <4 x i8> %wide.load212, %wide.load211
  store <4 x i8> %i.dd, ptr %next.gep209, align 1
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.de, label %vec.epilog.middle.block214, label %vec.epilog.vector.body207, !llvm.loop !21

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body207
  %cmp.n215 = icmp eq i64 %i.cp, %n.vec206
  br i1 %cmp.n215, label %.loopexit, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %iter.check200, %vector.memcheck183, %vec.epilog.iter.check201, %vec.epilog.middle.block214
  %indvars.iv111.ph = phi i64 [ 0, %iter.check200 ], [ 0, %vector.memcheck183 ], [ %n.vec190, %vec.epilog.iter.check201 ], [ %n.vec206, %vec.epilog.middle.block214 ] ; 2 uses
  %.394.ph = phi ptr [ %.142.lcssa, %iter.check200 ], [ %.142.lcssa, %vector.memcheck183 ], [ %i.ct, %vec.epilog.iter.check201 ], [ %i.cy, %vec.epilog.middle.block214 ] ; 2 uses
  %.04993.ph = phi i8 [ %spec.store.select, %iter.check200 ], [ %spec.store.select, %vector.memcheck183 ], [ %i.cv, %vec.epilog.iter.check201 ], [ %i.da, %vec.epilog.middle.block214 ] ; 4 uses
  %.05092.ph = phi ptr [ %5, %iter.check200 ], [ %5, %vector.memcheck183 ], [ %i.cw, %vec.epilog.iter.check201 ], [ %i.db, %vec.epilog.middle.block214 ] ; 2 uses
  %i.df = add nsw i8 %.04993.ph, -1
  %xtraiter = and i8 %.04993.ph, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph97.prol.loopexit, label %.lr.ph97.prol

.lr.ph97.prol:                                    ; preds = %.lr.ph97.preheader, %.lr.ph97.prol
  %indvars.iv111.prol = phi i64 [ %indvars.iv.next112.prol, %.lr.ph97.prol ], [ %indvars.iv111.ph, %.lr.ph97.preheader ] ; 2 uses
  %.394.prol = phi ptr [ %i.dl, %.lr.ph97.prol ], [ %.394.ph, %.lr.ph97.preheader ] ; 2 uses
  %.04993.prol = phi i8 [ %i.dm, %.lr.ph97.prol ], [ %.04993.ph, %.lr.ph97.preheader ]
  %.05092.prol = phi ptr [ %i.di, %.lr.ph97.prol ], [ %.05092.ph, %.lr.ph97.preheader ] ; 2 uses
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph97.prol ], [ 0, %.lr.ph97.preheader ]
  %indvars.iv.next112.prol = add nuw nsw i64 %indvars.iv111.prol, 1 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.h, i64 %indvars.iv111.prol
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr i8, ptr %.05092.prol, i64 1 ; 2 uses
  %i.dj = load i8, ptr %.05092.prol, align 1
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr i8, ptr %.394.prol, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.394.prol, align 1
  %i.dm = add nsw i8 %.04993.prol, -1             ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph97.prol.loopexit, label %.lr.ph97.prol, !llvm.loop !22

.lr.ph97.prol.loopexit:                           ; preds = %.lr.ph97.prol, %.lr.ph97.preheader
  %indvars.iv111.unr = phi i64 [ %indvars.iv111.ph, %.lr.ph97.preheader ], [ %indvars.iv.next112.prol, %.lr.ph97.prol ]
  %.394.unr = phi ptr [ %.394.ph, %.lr.ph97.preheader ], [ %i.dl, %.lr.ph97.prol ]
  %.04993.unr = phi i8 [ %.04993.ph, %.lr.ph97.preheader ], [ %i.dm, %.lr.ph97.prol ]
  %.05092.unr = phi ptr [ %.05092.ph, %.lr.ph97.preheader ], [ %i.di, %.lr.ph97.prol ]
  %i.dn = icmp ult i8 %i.df, 3
  br i1 %i.dn, label %.loopexit, label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.prol.loopexit, %.lr.ph97
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.3, %.lr.ph97 ], [ %indvars.iv111.unr, %.lr.ph97.prol.loopexit ] ; 5 uses
  %.394 = phi ptr [ %i.eo, %.lr.ph97 ], [ %.394.unr, %.lr.ph97.prol.loopexit ] ; 5 uses
  %.04993 = phi i8 [ %i.ep, %.lr.ph97 ], [ %.04993.unr, %.lr.ph97.prol.loopexit ]
  %.05092 = phi ptr [ %i.el, %.lr.ph97 ], [ %.05092.unr, %.lr.ph97.prol.loopexit ] ; 5 uses
  %i.do = getelementptr i8, ptr %i.h, i64 %indvars.iv111
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = getelementptr i8, ptr %.05092, i64 1
  %i.dr = load i8, ptr %.05092, align 1
  %i.ds = xor i8 %i.dr, %i.dp
  %i.dt = getelementptr i8, ptr %.394, i64 1
  store i8 %i.ds, ptr %.394, align 1
  %i.du = getelementptr i8, ptr %i.h, i64 %indvars.iv111
  %i.dv = getelementptr i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = getelementptr i8, ptr %.05092, i64 2
  %i.dy = load i8, ptr %i.dq, align 1
  %i.dz = xor i8 %i.dy, %i.dw
  %i.ea = getelementptr i8, ptr %.394, i64 2
  store i8 %i.dz, ptr %i.dt, align 1
  %i.eb = getelementptr i8, ptr %i.h, i64 %indvars.iv111
  %i.ec = getelementptr i8, ptr %i.eb, i64 2
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = getelementptr i8, ptr %.05092, i64 3
  %i.ef = load i8, ptr %i.dx, align 1
  %i.eg = xor i8 %i.ef, %i.ed
  %i.eh = getelementptr i8, ptr %.394, i64 3
  store i8 %i.eg, ptr %i.ea, align 1
  %indvars.iv.next112.3 = add nuw nsw i64 %indvars.iv111, 4
  %i.ei = getelementptr i8, ptr %i.h, i64 %indvars.iv111
  %i.ej = getelementptr i8, ptr %i.ei, i64 3
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = getelementptr i8, ptr %.05092, i64 4
  %i.em = load i8, ptr %i.ee, align 1
  %i.en = xor i8 %i.em, %i.ek
  %i.eo = getelementptr i8, ptr %.394, i64 4
  store i8 %i.en, ptr %i.eh, align 1
  %i.ep = add nsw i8 %.04993, -4                  ; 2 uses
  %.not59.3 = icmp eq i8 %i.ep, 0
  br i1 %.not59.3, label %.loopexit, label %.lr.ph97, !llvm.loop !23

.loopexit.sink.split:                             ; preds = %.loopexit69, %bb.h
  call void @wmem_free(ptr noundef %0, ptr noundef %i.q)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph97.prol.loopexit, %.lr.ph97, %vector.ph189, %vec.epilog.middle.block214, %.loopexit.sink.split, %._crit_edge, %.loopexit69, %bb.h
  %.044 = phi ptr [ null, %bb.h ], [ null, %.loopexit69 ], [ %i.q, %._crit_edge ], [ null, %.loopexit.sink.split ], [ %i.q, %vector.ph189 ], [ %i.q, %vec.epilog.middle.block214 ], [ %i.q, %.lr.ph97 ], [ %i.q, %.lr.ph97.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %.loopexit
  %.145 = phi ptr [ %.044, %.loopexit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.145
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @knxip_ccm_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(none) %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp ult i8 %7, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 68, ptr noundef @.str.12) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i8 %7, 0
  br i1 %.not.i.i, label %build_ctr0.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = zext nneg i8 %7 to i64                   ; 2 uses
  %i.d = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef readonly %6, i64 noundef range(i64 1, 256) %i.c, i64 noundef 16) #12, !alias.scope !29 ; 0 uses
  br label %build_ctr0.exit

build_ctr0.exit:                                  ; preds = %bb.c, %bb.d
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 %.pre-phi.i.i
  %i.f = sub nuw nsw i64 16, %.pre-phi.i.i
  %i.g = sub nuw nsw i64 16, %.pre-phi.i.i
  %i.h = call ptr @__memset_chk(ptr noundef %i.e, i32 noundef 0, i64 noundef range(i64 0, 17) %i.f, i64 noundef %i.g) #12 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 -1, ptr %i.i, align 2
  %i.j = call ptr @knx_ccm_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext 16, ptr noundef nonnull %i.a, i8 noundef zeroext 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.j
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @knxip_ccm_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp ult i8 %6, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 68, ptr noundef @.str.12) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i8 %6, 0
  br i1 %.not.i.i, label %build_ctr0.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = zext nneg i8 %6 to i64                   ; 2 uses
  %i.d = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef readonly %5, i64 noundef range(i64 1, 256) %i.c, i64 noundef 16) #12, !alias.scope !33 ; 0 uses
  br label %build_ctr0.exit

build_ctr0.exit:                                  ; preds = %bb.c, %bb.d
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.e = add i32 %4, -16                          ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %.pre-phi.i.i
  %i.g = sub nuw nsw i64 16, %.pre-phi.i.i
  %i.h = sub nuw nsw i64 16, %.pre-phi.i.i
  %i.i = call ptr @__memset_chk(ptr noundef %i.f, i32 noundef 0, i64 noundef range(i64 0, 17) %i.g, i64 noundef %i.h) #12 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 -1, ptr %i.j, align 2
  %i.k = sext i32 %i.e to i64
  %i.l = getelementptr i8, ptr %3, i64 %i.k
  %i.m = call ptr @knx_ccm_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.e, ptr noundef %i.l, i8 noundef zeroext 16, ptr noundef nonnull %i.a, i8 noundef zeroext 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.m
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @read_knx_keyring_xml_file(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca [25 x i8], align 16               ; 7 uses
  %i.d = alloca [3 x i32], align 4                ; 8 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca [25 x i8], align 16               ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = load ptr, ptr @knx_keyring_mca_keys, align 8 ; 2 uses
  %.not21.i = icmp eq ptr %i.i, null
  br i1 %.not21.i, label %.preheader20.i, label %.lr.ph.i

.preheader20.i:                                   ; preds = %.lr.ph.i, %bb.a
  %i.j = load ptr, ptr @knx_keyring_ga_keys, align 8 ; 2 uses
  %.not1422.i = icmp eq ptr %i.j, null
  br i1 %.not1422.i, label %.preheader19.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.k = phi ptr [ %i.n, %.lr.ph.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %i.l, ptr @knx_keyring_mca_keys, align 8
  %i.m = tail call ptr @wmem_epan_scope()
  tail call void @wmem_free(ptr noundef %i.m, ptr noundef nonnull %i.k)
  %i.n = load ptr, ptr @knx_keyring_mca_keys, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.preheader20.i, label %.lr.ph.i, !llvm.loop !34

.preheader19.i:                                   ; preds = %.lr.ph23.i, %.preheader20.i
  %i.o = load ptr, ptr @knx_keyring_ga_senders, align 8 ; 2 uses
  %.not1524.i = icmp eq ptr %i.o, null
  br i1 %.not1524.i, label %.preheader18.i, label %.lr.ph25.i

.lr.ph23.i:                                       ; preds = %.preheader20.i, %.lr.ph23.i
  %i.p = phi ptr [ %i.s, %.lr.ph23.i ], [ %i.j, %.preheader20.i ] ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr @knx_keyring_ga_keys, align 8
  %i.r = tail call ptr @wmem_epan_scope()
  tail call void @wmem_free(ptr noundef %i.r, ptr noundef nonnull %i.p)
  %i.s = load ptr, ptr @knx_keyring_ga_keys, align 8 ; 2 uses
  %.not14.i = icmp eq ptr %i.s, null
  br i1 %.not14.i, label %.preheader19.i, label %.lr.ph23.i, !llvm.loop !35

.preheader18.i:                                   ; preds = %.lr.ph25.i, %.preheader19.i
  %i.t = load ptr, ptr @knx_keyring_ia_keys, align 8 ; 2 uses
  %.not1626.i = icmp eq ptr %i.t, null
  br i1 %.not1626.i, label %.preheader.i, label %.lr.ph27.i

.lr.ph25.i:                                       ; preds = %.preheader19.i, %.lr.ph25.i
  %i.u = phi ptr [ %i.x, %.lr.ph25.i ], [ %i.o, %.preheader19.i ] ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr @knx_keyring_ga_senders, align 8
  %i.w = tail call ptr @wmem_epan_scope()
  tail call void @wmem_free(ptr noundef %i.w, ptr noundef nonnull %i.u)
  %i.x = load ptr, ptr @knx_keyring_ga_senders, align 8 ; 2 uses
  %.not15.i = icmp eq ptr %i.x, null
  br i1 %.not15.i, label %.preheader18.i, label %.lr.ph25.i, !llvm.loop !36

.preheader.i:                                     ; preds = %.lr.ph27.i, %.preheader18.i
  %i.y = load ptr, ptr @knx_keyring_ia_seqs, align 8 ; 2 uses
  %.not1728.i = icmp eq ptr %i.y, null
  br i1 %.not1728.i, label %clear_keyring_data.exit, label %.lr.ph29.i

.lr.ph27.i:                                       ; preds = %.preheader18.i, %.lr.ph27.i
  %i.z = phi ptr [ %i.ac, %.lr.ph27.i ], [ %i.t, %.preheader18.i ] ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr @knx_keyring_ia_keys, align 8
  %i.ab = tail call ptr @wmem_epan_scope()
  tail call void @wmem_free(ptr noundef %i.ab, ptr noundef nonnull %i.z)
  %i.ac = load ptr, ptr @knx_keyring_ia_keys, align 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %.preheader.i, label %.lr.ph27.i, !llvm.loop !37

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %i.ad = phi ptr [ %i.ag, %.lr.ph29.i ], [ %i.y, %.preheader.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  store ptr %i.ae, ptr @knx_keyring_ia_seqs, align 8
  %i.af = tail call ptr @wmem_epan_scope()
  tail call void @wmem_free(ptr noundef %i.af, ptr noundef nonnull %i.ad)
  %i.ag = load ptr, ptr @knx_keyring_ia_seqs, align 8 ; 2 uses
  %.not17.i = icmp eq ptr %i.ag, null
  br i1 %.not17.i, label %clear_keyring_data.exit, label %.lr.ph29.i, !llvm.loop !38

clear_keyring_data.exit:                          ; preds = %.lr.ph29.i, %.preheader.i
  %i.ah = tail call ptr @xmlReadFile(ptr noundef %0, ptr noundef null, i32 noundef 0) ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.bu, label %bb.b

bb.b:                                             ; preds = %clear_keyring_data.exit
  %i.aj = tail call ptr @xmlDocGetRootElement(ptr noundef nonnull %i.ah) ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @xmlFreeDoc(ptr noundef nonnull %i.ah)
  br label %bb.bu

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 @xmlStrcmp(ptr noundef %i.am, ptr noundef @.str)
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %i.aj, i64 24
  %.071119 = load ptr, ptr %i.ap, align 8         ; 2 uses
  %.not120 = icmp eq ptr %.071119, null
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.071121 = phi ptr [ %.071, %bb.g ], [ %.071119, %bb.e ] ; 4 uses
  %i.aq = getelementptr i8, ptr %.071121, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.at = getelementptr i8, ptr %.071121, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 @xmlStrcmp(ptr noundef %i.au, ptr noundef @.str)
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ax = getelementptr i8, ptr %.071121, i64 48
  %.071 = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not = icmp eq ptr %.071, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.g, %bb.e
  tail call void @xmlFreeDoc(ptr noundef nonnull %i.ah)
  br label %bb.bu

.loopexit:                                        ; preds = %bb.f, %bb.d
  %.1.ph = phi ptr [ %i.aj, %bb.d ], [ %.071121, %bb.f ] ; 3 uses
  %.not78 = icmp eq ptr %2, null
  br i1 %.not78, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ay = load i8, ptr %2, align 1
  switch i8 %i.ay, label %.tail.thread [
    i8 0, label %bb.j
    i8 45, label %.tail
  ]

.tail:                                            ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %.tail.thread

bb.i:                                             ; preds = %.tail
  %i.bc = load ptr, ptr @stdout, align 8
  br label %bb.j

.tail.thread:                                     ; preds = %bb.h, %.tail
  %i.bd = tail call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef @.str.2)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.tail.thread, %.loopexit
  %i.be = phi ptr [ null, %.loopexit ], [ null, %bb.h ], [ %i.bc, %bb.i ], [ %i.bd, %.tail.thread ] ; 11 uses
  %i.bf = getelementptr i8, ptr %.1.ph, i64 88
  %.070122 = load ptr, ptr %i.bf, align 8         ; 2 uses
  %.not80123 = icmp eq ptr %.070122, null
  br i1 %.not80123, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.j
  %i.bg = getelementptr i8, ptr %.1.ph, i64 64
  br label %bb.k

._crit_edge127:                                   ; preds = %bb.n, %bb.j
  %i.bh = getelementptr i8, ptr %.1.ph, i64 24
  %.069143 = load ptr, ptr %i.bh, align 8         ; 2 uses
  %.not81144 = icmp eq ptr %.069143, null
  br i1 %.not81144, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %._crit_edge127
  %.not23.i.i = icmp eq ptr %i.be, null           ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph126, %bb.n
  %.070124 = phi ptr [ %.070122, %.lr.ph126 ], [ %.070, %bb.n ] ; 3 uses
  %i.bk = getelementptr i8, ptr %.070124, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i32 @xmlStrcmp(ptr noundef %i.bl, ptr noundef @.str.3)
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.bg, align 8
  %i.bp = getelementptr i8, ptr %.070124, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call ptr @xmlNodeListGetString(ptr noundef %i.bo, ptr noundef %i.bq, i32 noundef 1) ; 2 uses
  %.not87 = icmp eq ptr %i.br, null
  br i1 %.not87, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr @xmlFree, align 8
  tail call void %i.bs(ptr noundef nonnull %i.br)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.bt = getelementptr i8, ptr %.070124, i64 48
  %.070 = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not80 = icmp eq ptr %.070, null
  br i1 %.not80, label %._crit_edge127, label %bb.k, !llvm.loop !40

._crit_edge149:                                   ; preds = %.thread111, %._crit_edge127
  %.not82 = icmp eq ptr %i.be, null
  %i.bu = load ptr, ptr @stdout, align 8
  %.not83 = icmp eq ptr %i.be, %i.bu
  %or.cond = select i1 %.not82, i1 true, i1 %.not83
  br i1 %or.cond, label %bb.bt, label %bb.bs

bb.o:                                             ; preds = %.lr.ph148, %.thread111
  %.069145 = phi ptr [ %.069143, %.lr.ph148 ], [ %.069, %.thread111 ] ; 8 uses
  %i.bv = getelementptr i8, ptr %.069145, i64 8   ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.p, label %.thread111

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr i8, ptr %.069145, i64 16  ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i32 @xmlStrcmp(ptr noundef %i.bz, ptr noundef @.str.4)
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i32 0, ptr %i.h, align 4
  %i.cc = getelementptr i8, ptr %.069145, i64 88
  %.02.i = load ptr, ptr %i.cc, align 8           ; 2 uses
  %.not3.i = icmp eq ptr %.02.i, null
  br i1 %.not3.i, label %read_knx_keyring_xml_backbone_element.exit, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %bb.q
  %i.cd = getelementptr i8, ptr %.069145, i64 64  ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.ac, %.lr.ph.i88
  %i.ce = phi i32 [ 0, %.lr.ph.i88 ], [ %i.fb, %bb.ac ] ; 9 uses
  %i.cf = phi i8 [ 0, %.lr.ph.i88 ], [ %i.fc, %bb.ac ] ; 7 uses
  %i.cg = phi i8 [ 0, %.lr.ph.i88 ], [ %i.fd, %bb.ac ] ; 7 uses
  %i.ch = phi i8 [ 0, %.lr.ph.i88 ], [ %i.fe, %bb.ac ] ; 7 uses
  %i.ci = phi i8 [ 0, %.lr.ph.i88 ], [ %i.ff, %bb.ac ] ; 7 uses
  %.05.i = phi ptr [ %.02.i, %.lr.ph.i88 ], [ %.0.i, %bb.ac ] ; 4 uses
  %.0194.i = phi i1 [ false, %.lr.ph.i88 ], [ %.2.i, %bb.ac ] ; 3 uses
  %i.cj = getelementptr i8, ptr %.05.i, i64 16    ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call i32 @xmlStrcmp(ptr noundef %i.ck, ptr noundef @.str.13)
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.cd, align 8
  %i.co = getelementptr i8, ptr %.05.i, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call ptr @xmlNodeListGetString(ptr noundef %i.cn, ptr noundef %i.cp, i32 noundef 1) ; 3 uses
  %.not23.i = icmp eq ptr %i.cq, null
  br i1 %.not23.i, label %bb.ac, label %read_ip_addr.exit.i

read_ip_addr.exit.i:                              ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4
  %i.cr = call zeroext i1 @ws_inet_pton4(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.g)
  %i.cs = load i32, ptr %i.g, align 4
  %storemerge.i = select i1 %i.cr, i32 %i.cs, i32 0 ; 6 uses
  store i32 %storemerge.i, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %i.ct = load ptr, ptr @xmlFree, align 8
  call void %i.ct(ptr noundef nonnull %i.cq), !inline_history !41
  %i.cu = trunc i32 %storemerge.i to i8
  %i.cv = lshr i32 %storemerge.i, 8
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = lshr i32 %storemerge.i, 16
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = lshr i32 %storemerge.i, 24
  %i.da = trunc nuw i32 %i.cz to i8
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.db = load ptr, ptr %i.cj, align 8
  %i.dc = call i32 @xmlStrcmp(ptr noundef %i.db, ptr noundef @.str.14)
  %i.dd = icmp eq i32 %i.dc, 0
  %or.cond.i = select i1 %i.dd, i1 %.0194.i, i1 false
  br i1 %or.cond.i, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.de = load ptr, ptr %i.cd, align 8
  %i.df = getelementptr i8, ptr %.05.i, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call ptr @xmlNodeListGetString(ptr noundef %i.de, ptr noundef %i.dg, i32 noundef 1) ; 4 uses
  %.not22.i = icmp eq ptr %i.dh, null
  br i1 %.not22.i, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dh) #15
  %i.dj = and i64 %i.di, 4294967295
  %i.dk = icmp eq i64 %i.dj, 24
  br i1 %i.dk, label %bb.w, label %add_mca_key.exit.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.dl = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.f, i64 noundef 25, i32 noundef 2, i64 noundef 25, ptr noundef @.str.16, ptr noundef nonnull %i.dh) ; 0 uses
  %i.dm = call ptr @g_base64_decode_inplace(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.dn = load ptr, ptr @knx_keyring_mca_keys, align 8 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.dn, null
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.y
  %i.do = phi ptr [ %i.eb, %bb.y ], [ %i.dn, %bb.w ] ; 4 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 1
  %i.dr = load i32, ptr %i.h, align 4
  %i.ds = icmp ne i32 %i.dq, %i.dr
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.dv = getelementptr i8, ptr %i.do, i64 12
  %i.dw = load i128, ptr %i.dv, align 1
  %i.dx = load i128, ptr %i.f, align 16
  %i.dy = icmp ne i128 %i.dw, %i.dx
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i
  %i.eb = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !42

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.w
  %.024.lcssa.i.i = phi ptr [ @knx_keyring_mca_keys, %bb.w ], [ %i.do, %bb.y ]
  br i1 %.not23.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ec = zext i8 %i.ci to i32
  %i.ed = zext i8 %i.ch to i32
  %i.ee = zext i8 %i.cg to i32
  %i.ef = zext i8 %i.cf to i32
  %i.eg = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.be, i32 noundef 2, ptr noundef @.str.15, i32 noundef %i.ec, i32 noundef %i.ed, i32 noundef %i.ee, i32 noundef %i.ef) ; 0 uses
  call fastcc void @fprintf_hex(ptr noundef %i.be, ptr noundef nonnull %i.f)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i
  %i.eh = call ptr @wmem_epan_scope()
  %i.ei = call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.eh, i64 noundef 32) #14 ; 5 uses
  %.not29.i.i = icmp eq ptr %i.ei, null
  br i1 %.not29.i.i, label %.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr %i.ei, align 8
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  store i32 %i.ce, ptr %i.ej, align 8
  %i.ek = getelementptr i8, ptr %i.ei, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.ek, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 noundef 16, i1 noundef false) #12
  store ptr %i.ei, ptr %.024.lcssa.i.i, align 8
  %i.el = trunc i32 %i.ce to i8
  %i.em = lshr i32 %i.ce, 8
  %i.en = trunc i32 %i.em to i8
  %i.eo = lshr i32 %i.ce, 16
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = lshr i32 %i.ce, 24
  %i.er = trunc nuw i32 %i.eq to i8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.x, %bb.ab, %bb.aa
  %i.es = phi i8 [ %i.cf, %bb.aa ], [ %i.er, %bb.ab ], [ %i.cf, %bb.x ]
  %i.et = phi i8 [ %i.cg, %bb.aa ], [ %i.ep, %bb.ab ], [ %i.cg, %bb.x ]
  %i.eu = phi i8 [ %i.ch, %bb.aa ], [ %i.en, %bb.ab ], [ %i.ch, %bb.x ]
  %i.ev = phi i8 [ %i.ci, %bb.aa ], [ %i.el, %bb.ab ], [ %i.ci, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %add_mca_key.exit.i

add_mca_key.exit.i:                               ; preds = %.loopexit.i.i, %bb.v
  %i.ew = phi i8 [ %i.cf, %bb.v ], [ %i.es, %.loopexit.i.i ]
  %i.ex = phi i8 [ %i.cg, %bb.v ], [ %i.et, %.loopexit.i.i ]
  %i.ey = phi i8 [ %i.ch, %bb.v ], [ %i.eu, %.loopexit.i.i ]
  %i.ez = phi i8 [ %i.ci, %bb.v ], [ %i.ev, %.loopexit.i.i ]
  %i.fa = load ptr, ptr @xmlFree, align 8
  call void %i.fa(ptr noundef nonnull %i.dh), !inline_history !41
  br label %bb.ac

bb.ac:                                            ; preds = %add_mca_key.exit.i, %bb.u, %bb.t, %read_ip_addr.exit.i, %bb.s
  %i.fb = phi i32 [ %i.ce, %bb.t ], [ %i.ce, %bb.s ], [ %storemerge.i, %read_ip_addr.exit.i ], [ %i.ce, %add_mca_key.exit.i ], [ %i.ce, %bb.u ]
  %i.fc = phi i8 [ %i.cf, %bb.t ], [ %i.cf, %bb.s ], [ %i.da, %read_ip_addr.exit.i ], [ %i.ew, %add_mca_key.exit.i ], [ %i.cf, %bb.u ]
  %i.fd = phi i8 [ %i.cg, %bb.t ], [ %i.cg, %bb.s ], [ %i.cy, %read_ip_addr.exit.i ], [ %i.ex, %add_mca_key.exit.i ], [ %i.cg, %bb.u ]
  %i.fe = phi i8 [ %i.ch, %bb.t ], [ %i.ch, %bb.s ], [ %i.cw, %read_ip_addr.exit.i ], [ %i.ey, %add_mca_key.exit.i ], [ %i.ch, %bb.u ]
  %i.ff = phi i8 [ %i.ci, %bb.t ], [ %i.ci, %bb.s ], [ %i.cu, %read_ip_addr.exit.i ], [ %i.ez, %add_mca_key.exit.i ], [ %i.ci, %bb.u ]
  %.2.i = phi i1 [ %.0194.i, %bb.t ], [ %.0194.i, %bb.s ], [ true, %read_ip_addr.exit.i ], [ true, %add_mca_key.exit.i ], [ true, %bb.u ]
  %i.fg = getelementptr i8, ptr %.05.i, i64 48
  %.0.i = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not.i89 = icmp eq ptr %.0.i, null
  br i1 %.not.i89, label %read_knx_keyring_xml_backbone_element.exit, label %bb.r, !llvm.loop !43

read_knx_keyring_xml_backbone_element.exit:       ; preds = %bb.ac, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %.thread111

bb.ad:                                            ; preds = %bb.p
  %.pr = load i32, ptr %i.bv, align 8
  %i.fh = icmp eq i32 %.pr, 1
  br i1 %i.fh, label %bb.ae, label %.thread111

bb.ae:                                            ; preds = %bb.ad
  %i.fi = load ptr, ptr %i.by, align 8
  %i.fj = call i32 @xmlStrcmp(ptr noundef %i.fi, ptr noundef @.str.5)
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fl = getelementptr i8, ptr %.069145, i64 24
  %.068138 = load ptr, ptr %i.fl, align 8         ; 2 uses
  %.not86139 = icmp eq ptr %.068138, null
  br i1 %.not86139, label %.thread111, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.af, %bb.ai
  %.068140 = phi ptr [ %.068, %bb.ai ], [ %.068138, %bb.af ] ; 4 uses
  %i.fm = getelementptr i8, ptr %.068140, i64 8
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = icmp eq i32 %i.fn, 1
  br i1 %i.fo, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph142
  %i.fp = getelementptr i8, ptr %.068140, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = call i32 @xmlStrcmp(ptr noundef %i.fq, ptr noundef @.str.6)
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @read_knx_keyring_xml_group_element(ptr noundef %.068140, ptr noundef %i.be)
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph142, %bb.ag, %bb.ah
  %i.ft = getelementptr i8, ptr %.068140, i64 48
  %.068 = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not86 = icmp eq ptr %.068, null
  br i1 %.not86, label %.thread111, label %.lr.ph142, !llvm.loop !44

bb.aj:                                            ; preds = %bb.ae
  %.pr106 = load i32, ptr %i.bv, align 8
  %i.fu = icmp eq i32 %.pr106, 1
  br i1 %i.fu, label %bb.ak, label %.thread111

bb.ak:                                            ; preds = %bb.aj
  %i.fv = load ptr, ptr %i.by, align 8
  %i.fw = call i32 @xmlStrcmp(ptr noundef %i.fv, ptr noundef @.str.7)
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.al, label %.thread108

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr i8, ptr %.069145, i64 24
  %.067133 = load ptr, ptr %i.fy, align 8         ; 2 uses
  %.not85134 = icmp eq ptr %.067133, null
  br i1 %.not85134, label %.thread111, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.al, %bb.ao
  %.067135 = phi ptr [ %.067, %bb.ao ], [ %.067133, %bb.al ] ; 4 uses
  %i.fz = getelementptr i8, ptr %.067135, i64 8
  %i.ga = load i32, ptr %i.fz, align 8
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.lr.ph137
  %i.gc = getelementptr i8, ptr %.067135, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call i32 @xmlStrcmp(ptr noundef %i.gd, ptr noundef @.str.6)
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call fastcc void @read_knx_keyring_xml_group_element(ptr noundef %.067135, ptr noundef %i.be)
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph137, %bb.am, %bb.an
  %i.gg = getelementptr i8, ptr %.067135, i64 48
  %.067 = load ptr, ptr %i.gg, align 8            ; 2 uses
  %.not85 = icmp eq ptr %.067, null
  br i1 %.not85, label %.thread111, label %.lr.ph137, !llvm.loop !45

.thread108:                                       ; preds = %bb.ak
  %.pr110.pr = load i32, ptr %i.bv, align 8
  %i.gh = icmp eq i32 %.pr110.pr, 1
  br i1 %i.gh, label %bb.ap, label %.thread111

bb.ap:                                            ; preds = %.thread108
  %i.gi = load ptr, ptr %i.by, align 8
  %i.gj = call i32 @xmlStrcmp(ptr noundef %i.gi, ptr noundef @.str.8)
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.aq, label %.thread111

bb.aq:                                            ; preds = %bb.ap
  %i.gl = getelementptr i8, ptr %.069145, i64 24
  %.0128 = load ptr, ptr %i.gl, align 8           ; 2 uses
  %.not84129 = icmp eq ptr %.0128, null
  br i1 %.not84129, label %.thread111, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.aq, %read_knx_keyring_xml_device_element.exit
  %.0130 = phi ptr [ %.0, %read_knx_keyring_xml_device_element.exit ], [ %.0128, %bb.aq ] ; 5 uses
  %i.gm = getelementptr i8, ptr %.0130, i64 8
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = icmp eq i32 %i.gn, 1
  br i1 %i.go, label %bb.ar, label %read_knx_keyring_xml_device_element.exit

bb.ar:                                            ; preds = %.lr.ph132
  %i.gp = getelementptr i8, ptr %.0130, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = call i32 @xmlStrcmp(ptr noundef %i.gq, ptr noundef @.str.9)
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.as, label %read_knx_keyring_xml_device_element.exit

bb.as:                                            ; preds = %bb.ar
  %i.gt = getelementptr i8, ptr %.0130, i64 88
  %.03.i = load ptr, ptr %i.gt, align 8           ; 2 uses
  %.not4.i = icmp eq ptr %.03.i, null
  br i1 %.not4.i, label %read_knx_keyring_xml_device_element.exit, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.as
  %i.gu = getelementptr i8, ptr %.0130, i64 64    ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.br, %.lr.ph.i90
  %.08.i = phi ptr [ %.03.i, %.lr.ph.i90 ], [ %.0.i93, %bb.br ] ; 5 uses
  %.0296.i = phi i16 [ 0, %.lr.ph.i90 ], [ %.2.i92, %bb.br ] ; 16 uses
  %.0305.i = phi i8 [ 0, %.lr.ph.i90 ], [ %.232.i, %bb.br ] ; 4 uses
  %i.gv = getelementptr i8, ptr %.08.i, i64 16    ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call i32 @xmlStrcmp(ptr noundef %i.gw, ptr noundef @.str.24)
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.gz = load ptr, ptr %i.gu, align 8
  %i.ha = getelementptr i8, ptr %.08.i, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = call ptr @xmlNodeListGetString(ptr noundef %i.gz, ptr noundef %i.hb, i32 noundef 1) ; 3 uses
  %.not38.i = icmp eq ptr %i.hc, null
  br i1 %.not38.i, label %bb.br, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.hd = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull readonly %i.hc, ptr noundef @.str.23, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj) #12
  switch i32 %i.hd, label %read_ia.exit.i [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
    i32 3, label %bb.ay
  ]

bb.aw:                                            ; preds = %bb.av
  %i.he = load i32, ptr %i.d, align 4
  br label %read_ia.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.hf = load i32, ptr %i.d, align 4
  %i.hg = shl i32 %i.hf, 8
  %i.hh = load i32, ptr %i.bi, align 4
  %i.hi = or i32 %i.hg, %i.hh
  br label %read_ia.exit.i

bb.ay:                                            ; preds = %bb.av
  %i.hj = load i32, ptr %i.d, align 4
  %i.hk = shl i32 %i.hj, 12
  %i.hl = load i32, ptr %i.bi, align 4
  %i.hm = shl i32 %i.hl, 8
  %i.hn = or i32 %i.hm, %i.hk
  %i.ho = load i32, ptr %i.bj, align 4
  %i.hp = or i32 %i.hn, %i.ho
  br label %read_ia.exit.i

read_ia.exit.i:                                   ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.hq = phi i32 [ %i.he, %bb.aw ], [ %i.hi, %bb.ax ], [ %i.hp, %bb.ay ], [ 0, %bb.av ]
  %i.hr = trunc i32 %i.hq to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.sink.split.i

bb.az:                                            ; preds = %bb.at
  %i.hs = load ptr, ptr %i.gv, align 8
  %i.ht = call i32 @xmlStrcmp(ptr noundef %i.hs, ptr noundef @.str.25)
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.ba, label %bb.bj

bb.ba:                                            ; preds = %bb.az
  %i.hv = trunc nuw i8 %.0305.i to i1
  br i1 %i.hv, label %bb.bb, label %bb.br

bb.bb:                                            ; preds = %bb.ba
  %i.hw = load ptr, ptr %i.gu, align 8
  %i.hx = getelementptr i8, ptr %.08.i, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = call ptr @xmlNodeListGetString(ptr noundef %i.hw, ptr noundef %i.hy, i32 noundef 1) ; 5 uses
  %.not37.i = icmp eq ptr %i.hz, null
  br i1 %.not37.i, label %bb.br, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ia = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hz) #15
  %i.ib = and i64 %i.ia, 4294967295
  %i.ic = icmp eq i64 %i.ib, 24
  br i1 %i.ic, label %bb.bd, label %.sink.split.i

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.id = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.c, i64 noundef 25, i32 noundef 2, i64 noundef 25, ptr noundef @.str.16, ptr noundef nonnull %i.hz) ; 0 uses
  %i.ie = call ptr @g_base64_decode_inplace(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.if = load ptr, ptr @knx_keyring_ia_keys, align 8 ; 2 uses
  %.not2.i.i95 = icmp eq ptr %i.if, null
  br i1 %.not2.i.i95, label %._crit_edge.i.i98, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %bb.bd, %bb.bf
  %i.ig = phi ptr [ %i.iq, %bb.bf ], [ %i.if, %bb.bd ] ; 4 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  %i.ii = load i16, ptr %i.ih, align 8
  %i.ij = icmp eq i16 %i.ii, %.0296.i
  br i1 %i.ij, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i96
  %i.ik = getelementptr i8, ptr %i.ig, i64 10
  %i.il = load i128, ptr %i.ik, align 1
  %i.im = load i128, ptr %i.c, align 16
  %i.in = icmp ne i128 %i.il, %i.im
  %i.io = zext i1 %i.in to i32
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %.loopexit.i.i100, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i.i96
  %i.iq = load ptr, ptr %i.ig, align 8            ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i97, label %._crit_edge.i.i98, label %.lr.ph.i.i96, !llvm.loop !46

._crit_edge.i.i98:                                ; preds = %bb.bf, %bb.bd
  %.023.lcssa.i.i = phi ptr [ @knx_keyring_ia_keys, %bb.bd ], [ %i.ig, %bb.bf ]
  br i1 %.not23.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i.i98
  %i.ir = zext i16 %.0296.i to i32                ; 3 uses
  %i.is = lshr i32 %i.ir, 12
  %i.it = lshr i32 %i.ir, 8
  %i.iu = and i32 %i.it, 15
  %i.iv = and i32 %i.ir, 255
  %i.iw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.be, i32 noundef 2, ptr noundef @.str.27, i32 noundef %i.is, i32 noundef %i.iu, i32 noundef %i.iv) ; 0 uses
  call fastcc void @fprintf_hex(ptr noundef %i.be, ptr noundef nonnull %i.c)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i.i98
  %i.ix = call ptr @wmem_epan_scope()
  %i.iy = call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.ix, i64 noundef 32) #14 ; 5 uses
  %.not28.i.i99 = icmp eq ptr %i.iy, null
  br i1 %.not28.i.i99, label %.loopexit.i.i100, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr null, ptr %i.iy, align 8
  %i.iz = getelementptr i8, ptr %i.iy, i64 8
  store i16 %.0296.i, ptr %i.iz, align 8
  %i.ja = getelementptr i8, ptr %i.iy, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(16) %i.ja, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 noundef 16, i1 noundef false) #12
  store ptr %i.iy, ptr %.023.lcssa.i.i, align 8
  br label %.loopexit.i.i100

.loopexit.i.i100:                                 ; preds = %bb.be, %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.sink.split.i

bb.bj:                                            ; preds = %bb.az
  %i.jb = load ptr, ptr %i.gv, align 8
  %i.jc = call i32 @xmlStrcmp(ptr noundef %i.jb, ptr noundef @.str.26)
  %i.jd = icmp eq i32 %i.jc, 0
  %i.je = trunc nuw i8 %.0305.i to i1
  %or.cond.i91 = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %or.cond.i91, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.jf = load ptr, ptr %i.gu, align 8
  %i.jg = getelementptr i8, ptr %.08.i, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = call ptr @xmlNodeListGetString(ptr noundef %i.jf, ptr noundef %i.jh, i32 noundef 1) ; 5 uses
  %.not36.i = icmp eq ptr %i.ji, null
  br i1 %.not36.i, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.jj = call zeroext i1 @ws_strtou64(ptr noundef nonnull %i.ji, ptr noundef null, ptr noundef nonnull %i.a)
  %i.jk = load i64, ptr %i.a, align 8
  %i.jl = select i1 %i.jj, i64 %i.jk, i64 0       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.jm = load ptr, ptr @knx_keyring_ia_seqs, align 8 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.jm, null
  br i1 %.not26.i.i, label %._crit_edge.i41.i, label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %bb.bl, %bb.bn
  %i.jn = phi ptr [ %i.ju, %bb.bn ], [ %i.jm, %bb.bl ] ; 4 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 8
  %i.jp = load i16, ptr %i.jo, align 8
  %i.jq = icmp eq i16 %i.jp, %.0296.i
  br i1 %i.jq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i39.i
  %i.jr = getelementptr i8, ptr %i.jn, i64 16
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = icmp eq i64 %i.js, %i.jl
  br i1 %i.jt, label %.sink.split.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i39.i
  %i.ju = load ptr, ptr %i.jn, align 8            ; 2 uses
  %.not.i40.i = icmp eq ptr %i.ju, null
  br i1 %.not.i40.i, label %._crit_edge.i41.i, label %.lr.ph.i39.i, !llvm.loop !47

._crit_edge.i41.i:                                ; preds = %bb.bn, %bb.bl
  %.0.lcssa.i.i = phi ptr [ @knx_keyring_ia_seqs, %bb.bl ], [ %i.jn, %bb.bn ]
  br i1 %.not23.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.i41.i
  %i.jv = zext i16 %.0296.i to i32                ; 3 uses
  %i.jw = lshr i32 %i.jv, 12
  %i.jx = lshr i32 %i.jv, 8
  %i.jy = and i32 %i.jx, 15
  %i.jz = and i32 %i.jv, 255
  %i.ka = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.be, i32 noundef 2, ptr noundef @.str.28, i32 noundef %i.jw, i32 noundef %i.jy, i32 noundef %i.jz, i64 noundef %i.jl) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge.i41.i
  %i.kb = call ptr @wmem_epan_scope()
  %i.kc = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.kb, i64 noundef 24) #14 ; 5 uses
  %.not24.i.i = icmp eq ptr %i.kc, null
  br i1 %.not24.i.i, label %.sink.split.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store ptr null, ptr %i.kc, align 8
  %i.kd = getelementptr i8, ptr %i.kc, i64 8
  store i16 %.0296.i, ptr %i.kd, align 8
  %i.ke = getelementptr i8, ptr %i.kc, i64 16
  store i64 %i.jl, ptr %i.ke, align 8
  store ptr %i.kc, ptr %.0.lcssa.i.i, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bm, %bb.bq, %bb.bp, %.loopexit.i.i100, %bb.bc, %read_ia.exit.i
  %.sink.i = phi ptr [ %i.hz, %.loopexit.i.i100 ], [ %i.hc, %read_ia.exit.i ], [ %i.hz, %bb.bc ], [ %i.ji, %bb.bq ], [ %i.ji, %bb.bp ], [ %i.ji, %bb.bm ]
  %.2.ph.i = phi i16 [ %.0296.i, %.loopexit.i.i100 ], [ %i.hr, %read_ia.exit.i ], [ %.0296.i, %bb.bc ], [ %.0296.i, %bb.bq ], [ %.0296.i, %bb.bp ], [ %.0296.i, %bb.bm ]
  %i.kf = load ptr, ptr @xmlFree, align 8
  call void %i.kf(ptr noundef nonnull %.sink.i), !inline_history !48
  br label %bb.br

bb.br:                                            ; preds = %.sink.split.i, %bb.bk, %bb.bj, %bb.bb, %bb.ba, %bb.au
  %.232.i = phi i8 [ %.0305.i, %bb.bj ], [ %.0305.i, %bb.au ], [ 0, %bb.ba ], [ 1, %bb.bb ], [ 1, %bb.bk ], [ 1, %.sink.split.i ]
  %.2.i92 = phi i16 [ %.0296.i, %bb.bj ], [ %.0296.i, %bb.au ], [ %.0296.i, %bb.ba ], [ %.0296.i, %bb.bb ], [ %.0296.i, %bb.bk ], [ %.2.ph.i, %.sink.split.i ]
  %i.kg = getelementptr i8, ptr %.08.i, i64 48
  %.0.i93 = load ptr, ptr %i.kg, align 8          ; 2 uses
  %.not.i94 = icmp eq ptr %.0.i93, null
  br i1 %.not.i94, label %read_knx_keyring_xml_device_element.exit, label %bb.at, !llvm.loop !49

read_knx_keyring_xml_device_element.exit:         ; preds = %bb.br, %bb.as, %.lr.ph132, %bb.ar
  %i.kh = getelementptr i8, ptr %.0130, i64 48
  %.0 = load ptr, ptr %i.kh, align 8              ; 2 uses
  %.not84 = icmp eq ptr %.0, null
  br i1 %.not84, label %.thread111, label %.lr.ph132, !llvm.loop !50

.thread111:                                       ; preds = %read_knx_keyring_xml_device_element.exit, %bb.ao, %bb.ai, %bb.aq, %bb.al, %bb.af, %bb.ad, %bb.o, %bb.aj, %read_knx_keyring_xml_backbone_element.exit, %bb.ap, %.thread108
  %i.ki = getelementptr i8, ptr %.069145, i64 48
  %.069 = load ptr, ptr %i.ki, align 8            ; 2 uses
  %.not81 = icmp eq ptr %.069, null
  br i1 %.not81, label %._crit_edge149, label %bb.o, !llvm.loop !51

bb.bs:                                            ; preds = %._crit_edge149
  %i.kj = call i32 @fclose(ptr noundef nonnull %i.be) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %._crit_edge149
  call void @xmlFreeDoc(ptr noundef nonnull %i.ah)
  br label %bb.bu

bb.bu:                                            ; preds = %clear_keyring_data.exit, %bb.bt, %._crit_edge, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @xmlReadFile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @xmlDocGetRootElement(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @xmlFreeDoc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @xmlStrcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @xmlNodeListGetString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @read_knx_keyring_xml_group_element(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca [25 x i8], align 16               ; 7 uses
  %i.d = alloca [3 x i32], align 4                ; 8 uses
  %i.e = getelementptr i8, ptr %0, i64 88
  %.0315 = load ptr, ptr %i.e, align 8            ; 2 uses
  %.not6 = icmp eq ptr %.0315, null
  br i1 %.not6, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %1, null                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.b

._crit_edge13:                                    ; preds = %bb.ac, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph12, %bb.ac
  %.03110 = phi ptr [ %.0315, %.lr.ph12 ], [ %.031, %bb.ac ] ; 5 uses
  %.0309 = phi i8 [ 0, %.lr.ph12 ], [ %.2, %bb.ac ] ; 4 uses
  %.0327 = phi i16 [ 0, %.lr.ph12 ], [ %.234, %bb.ac ] ; 14 uses
  %i.k = getelementptr i8, ptr %.03110, i64 16    ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i32 @xmlStrcmp(ptr noundef %i.l, ptr noundef @.str.18)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr i8, ptr %.03110, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call ptr @xmlNodeListGetString(ptr noundef %i.o, ptr noundef %i.q, i32 noundef 1) ; 3 uses
  %.not39 = icmp eq ptr %i.r, null
  br i1 %.not39, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.s = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull readonly %i.r, ptr noundef @.str.20, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #12
  switch i32 %i.s, label %read_ga.exit [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.d, align 4
  br label %read_ga.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.d, align 4
  %i.v = shl i32 %i.u, 11
  %i.w = load i32, ptr %i.i, align 4
  %i.x = or i32 %i.v, %i.w
  br label %read_ga.exit

bb.g:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.d, align 4
  %i.z = shl i32 %i.y, 11
  %i.aa = load i32, ptr %i.i, align 4
  %i.ab = shl i32 %i.aa, 8
  %i.ac = or i32 %i.ab, %i.z
  %i.ad = load i32, ptr %i.j, align 4
  %i.ae = or i32 %i.ac, %i.ad
  br label %read_ga.exit

read_ga.exit:                                     ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.af = phi i32 [ %i.t, %bb.e ], [ %i.x, %bb.f ], [ %i.ae, %bb.g ], [ 0, %bb.d ]
  %i.ag = trunc i32 %i.af to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.k, align 8
  %i.ai = call i32 @xmlStrcmp(ptr noundef %i.ah, ptr noundef @.str.14)
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ak = trunc nuw i8 %.0309 to i1
  br i1 %i.ak, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = getelementptr i8, ptr %.03110, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call ptr @xmlNodeListGetString(ptr noundef %i.al, ptr noundef %i.an, i32 noundef 1) ; 4 uses
  %i.ap = call i64 @strlen(ptr noundef %i.ao) #15
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 24
  br i1 %i.ar, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.as = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.c, i64 noundef 25, i32 noundef 2, i64 noundef 25, ptr noundef @.str.16, ptr noundef %i.ao) ; 0 uses
  %i.at = call ptr @g_base64_decode_inplace(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.au = load ptr, ptr @knx_keyring_ga_keys, align 8 ; 2 uses
  %.not2.i = icmp eq ptr %i.au, null
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %i.av = phi ptr [ %i.bf, %bb.m ], [ %i.au, %bb.k ] ; 4 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load i16, ptr %i.aw, align 8
  %i.ay = icmp eq i16 %i.ax, %.0327
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr i8, ptr %i.av, i64 10
  %i.ba = load i128, ptr %i.az, align 1
  %i.bb = load i128, ptr %i.c, align 16
  %i.bc = icmp ne i128 %i.ba, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bf = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %.023.lcssa.i = phi ptr [ @knx_keyring_ga_keys, %bb.k ], [ %i.av, %bb.m ]
  br i1 %.not25.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.bg = zext i16 %.0327 to i32                  ; 3 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = lshr i32 %i.bg, 8
  %i.bj = and i32 %i.bi, 7
  %i.bk = and i32 %i.bg, 255
  %i.bl = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %1, i32 noundef 2, ptr noundef @.str.21, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bk) ; 0 uses
  call fastcc void @fprintf_hex(ptr noundef %1, ptr noundef nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %i.bm = call ptr @wmem_epan_scope()
  %i.bn = call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.bm, i64 noundef 32) #14 ; 5 uses
  %.not28.i = icmp eq ptr %i.bn, null
  br i1 %.not28.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  store i16 %.0327, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(16) %i.bp, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 noundef 16, i1 noundef false) #12
  store ptr %i.bn, ptr %.023.lcssa.i, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.l, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.sink.split

bb.q:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.k, align 8
  %i.br = call i32 @xmlStrcmp(ptr noundef %i.bq, ptr noundef @.str.19)
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = trunc nuw i8 %.0309 to i1
  %or.cond = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.f, align 8
  %i.bv = getelementptr i8, ptr %.03110, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call ptr @xmlNodeListGetString(ptr noundef %i.bu, ptr noundef %i.bw, i32 noundef 1) ; 4 uses
  %.not37 = icmp eq ptr %i.bx, null
  br i1 %.not37, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = call ptr @strtok(ptr noundef nonnull %i.bx, ptr noundef @read_knx_keyring_xml_group_element.delim) #12 ; 2 uses
  %.not383 = icmp eq ptr %i.by, null
  br i1 %.not383, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.bz = zext i16 %.0327 to i32                  ; 3 uses
  %i.ca = lshr i32 %i.bz, 11
  %i.cb = lshr i32 %i.bz, 8
  %i.cc = and i32 %i.cb, 7
  %i.cd = and i32 %i.bz, 255
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %add_ga_sender.exit
  %.04 = phi ptr [ %i.by, %.lr.ph ], [ %i.dm, %add_ga_sender.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ce = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull readonly %.04, ptr noundef @.str.23, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #12
  switch i32 %i.ce, label %read_ia.exit.i [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.cf = load i32, ptr %i.a, align 4
  br label %read_ia.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cg = load i32, ptr %i.a, align 4
  %i.ch = shl i32 %i.cg, 8
  %i.ci = load i32, ptr %i.g, align 4
  %i.cj = or i32 %i.ch, %i.ci
  br label %read_ia.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ck = load i32, ptr %i.a, align 4
  %i.cl = shl i32 %i.ck, 12
  %i.cm = load i32, ptr %i.g, align 4
  %i.cn = shl i32 %i.cm, 8
  %i.co = or i32 %i.cn, %i.cl
  %i.cp = load i32, ptr %i.h, align 4
  %i.cq = or i32 %i.co, %i.cp
  br label %read_ia.exit.i

read_ia.exit.i:                                   ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.cr = phi i32 [ %i.cf, %bb.u ], [ %i.cj, %bb.v ], [ %i.cq, %bb.w ], [ 0, %bb.t ] ; 4 uses
  %i.cs = trunc i32 %i.cr to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ct = load ptr, ptr @knx_keyring_ga_senders, align 8 ; 2 uses
  %.not28.i40 = icmp eq ptr %i.ct, null
  br i1 %.not28.i40, label %._crit_edge.i43, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %read_ia.exit.i, %bb.y
  %i.cu = phi ptr [ %i.db, %bb.y ], [ %i.ct, %read_ia.exit.i ] ; 4 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = load i16, ptr %i.cv, align 8
  %i.cx = icmp eq i16 %i.cw, %.0327
  br i1 %i.cx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i41
  %i.cy = getelementptr i8, ptr %i.cu, i64 10
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = icmp eq i16 %i.cz, %i.cs
  br i1 %i.da, label %add_ga_sender.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i41
  %i.db = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not.i42 = icmp eq ptr %i.db, null
  br i1 %.not.i42, label %._crit_edge.i43, label %.lr.ph.i41, !llvm.loop !53

._crit_edge.i43:                                  ; preds = %bb.y, %read_ia.exit.i
  %.0.lcssa.i = phi ptr [ @knx_keyring_ga_senders, %read_ia.exit.i ], [ %i.cu, %bb.y ]
  br i1 %.not25.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i43
  %i.dc = lshr i32 %i.cr, 12
  %i.dd = and i32 %i.dc, 15
  %i.de = lshr i32 %i.cr, 8
  %i.df = and i32 %i.de, 15
  %i.dg = and i32 %i.cr, 255
  %i.dh = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %1, i32 noundef 2, ptr noundef @.str.22, i32 noundef %i.ca, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.dd, i32 noundef %i.df, i32 noundef %i.dg) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i43
  %i.di = call ptr @wmem_epan_scope()
  %i.dj = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.di, i64 noundef 16) #14 ; 5 uses
  %.not26.i = icmp eq ptr %i.dj, null
  br i1 %.not26.i, label %add_ga_sender.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store i16 %.0327, ptr %i.dk, align 8
  %i.dl = getelementptr i8, ptr %i.dj, i64 10
  store i16 %i.cs, ptr %i.dl, align 2
  store ptr %i.dj, ptr %.0.lcssa.i, align 8
  br label %add_ga_sender.exit

add_ga_sender.exit:                               ; preds = %bb.x, %bb.aa, %bb.ab
  %i.dm = call ptr @strtok(ptr noundef null, ptr noundef @read_knx_keyring_xml_group_element.delim) #12 ; 2 uses
  %.not38 = icmp eq ptr %i.dm, null
  br i1 %.not38, label %.sink.split, label %bb.t, !llvm.loop !54

.sink.split:                                      ; preds = %add_ga_sender.exit, %bb.s, %.loopexit.i, %bb.j, %read_ga.exit
  %.sink = phi ptr [ %i.ao, %.loopexit.i ], [ %i.r, %read_ga.exit ], [ %i.ao, %bb.j ], [ %i.bx, %bb.s ], [ %i.bx, %add_ga_sender.exit ]
  %.234.ph = phi i16 [ %.0327, %.loopexit.i ], [ %i.ag, %read_ga.exit ], [ %.0327, %bb.j ], [ %.0327, %bb.s ], [ %.0327, %add_ga_sender.exit ]
  %i.dn = load ptr, ptr @xmlFree, align 8
  call void %i.dn(ptr noundef %.sink)
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.r, %bb.c, %bb.q, %bb.i
  %.234 = phi i16 [ %.0327, %bb.q ], [ %.0327, %bb.r ], [ %.0327, %bb.i ], [ %.0327, %bb.c ], [ %.234.ph, %.sink.split ]
  %.2 = phi i8 [ %.0309, %bb.q ], [ 1, %bb.r ], [ 0, %bb.i ], [ %.0309, %bb.c ], [ 1, %.sink.split ]
  %i.do = getelementptr i8, ptr %.03110, i64 48
  %.031 = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not = icmp eq ptr %.031, null
  br i1 %.not, label %._crit_edge13, label %bb.b, !llvm.loop !55
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_inet_pton4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @fprintf_hex(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1
  %i.b = load i8, ptr %1, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.c) ; 0 uses
  %i.e = getelementptr i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.a, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.g) ; 0 uses
  %i.i = getelementptr i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.e, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.k) ; 0 uses
  %i.m = getelementptr i8, ptr %1, i64 4
  %i.n = load i8, ptr %i.i, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.o) ; 0 uses
  %i.q = getelementptr i8, ptr %1, i64 5
  %i.r = load i8, ptr %i.m, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.s) ; 0 uses
  %i.u = getelementptr i8, ptr %1, i64 6
  %i.v = load i8, ptr %i.q, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.w) ; 0 uses
  %i.y = getelementptr i8, ptr %1, i64 7
  %i.z = load i8, ptr %i.u, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.aa) ; 0 uses
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load i8, ptr %i.y, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.ae) ; 0 uses
  %i.ag = getelementptr i8, ptr %1, i64 9
  %i.ah = load i8, ptr %i.ac, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.ai) ; 0 uses
  %i.ak = getelementptr i8, ptr %1, i64 10
  %i.al = load i8, ptr %i.ag, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.am) ; 0 uses
  %i.ao = getelementptr i8, ptr %1, i64 11
  %i.ap = load i8, ptr %i.ak, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.aq) ; 0 uses
  %i.as = getelementptr i8, ptr %1, i64 12
  %i.at = load i8, ptr %i.ao, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.au) ; 0 uses
  %i.aw = getelementptr i8, ptr %1, i64 13
  %i.ax = load i8, ptr %i.as, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.ay) ; 0 uses
  %i.ba = getelementptr i8, ptr %1, i64 14
  %i.bb = load i8, ptr %i.aw, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.bc) ; 0 uses
  %i.be = getelementptr i8, ptr %1, i64 15
  %i.bf = load i8, ptr %i.ba, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.bg) ; 0 uses
  %i.bi = load i8, ptr %i.be, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %0, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.bj) ; 0 uses
  %i.bl = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %0) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare ptr @g_base64_decode_inplace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { allocsize(1) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !6, !7, !8}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, i1 true, !"memcpy.inline"}
!14 = distinct !{!14, !13, !"memcpy.inline: argument 1"}
!15 = distinct !{!15, !13, !"memcpy.inline: argument 0"}
!16 = !{!15, !14}
!17 = distinct !{!17, !6, !7, !8}
!18 = distinct !{!18, !6, !7}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6, !7}
!21 = distinct !{!21, !6, !7, !8}
!22 = distinct !{!22, !25}
!23 = distinct !{!23, !6, !7}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, i1 true, !"memcpy.inline"}
!27 = distinct !{!27, !26, !"memcpy.inline: argument 1"}
!28 = distinct !{!28, !26, !"memcpy.inline: argument 0"}
!29 = !{!28, !27}
!30 = distinct !{!30, i1 true, !"memcpy.inline"}
!31 = distinct !{!31, !30, !"memcpy.inline: argument 1"}
!32 = distinct !{!32, !30, !"memcpy.inline: argument 0"}
!33 = !{!32, !31}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{null}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{null}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
end_hunk_0
