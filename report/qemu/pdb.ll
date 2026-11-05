Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pdb?download=true
inline.NumInlined: 21
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"%s: 0x%016x(%d:'%.8s') + 0x%08x = 0x%09lx\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to map PDB file '%s'\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 4294967296) i64 @pdb_find_public_v3_symbol(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i16, ptr %i.c, align 4              ; 2 uses
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.g = load i32, ptr %.val, align 4
  %.not.i = icmp ugt i32 %i.g, %i.e
  br i1 %.not.i, label %pdb_get_file_size.exit, label %.loopexit

pdb_get_file_size.exit:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.i = zext i16 %i.d to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.n = load ptr, ptr %i.m, align 8
  %.not35 = icmp eq i32 %i.k, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %pdb_get_file_size.exit, %bb.e
  %.02833 = phi i64 [ %i.bm, %bb.e ], [ 0, %pdb_get_file_size.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.02833 ; 5 uses
  %i.p = load i16, ptr %i.o, align 4              ; 2 uses
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.s = load i16, ptr %i.r, align 2              ; 2 uses
  %i.t = icmp eq i16 %i.s, 0
  %i.u = icmp slt i16 %i.p, 2
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = icmp eq i16 %i.s, 4366
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.w) #8
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.z = load i16, ptr %i.y, align 4              ; 3 uses
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.ac = load ptr, ptr %i.ab, align 8            ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %.not.i31 = icmp eq i64 %i.ae, 0
  br i1 %.not.i31, label %get_seg_by_num.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ag = mul nuw nsw i64 %i.aa, 40
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.ag
  %i.ai = icmp eq i16 %i.z, 1
  br i1 %i.ai, label %.split.loop.exit.i, label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph.preheader.i
  %i.aj = add nsw i64 %i.aa, -1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49
  %n.vec = and i64 %i.aj, -16                     ; 4 uses
  %i.ak = or disjoint i64 %n.vec, 1
  %i.al = mul nsw i64 %n.vec, 40
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.al
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %i.af, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %pointer.phi = phi ptr [ %i.ac, %vector.ph ], [ %ptr.ind, %vector.body.interim ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 40, i64 80, i64 120, i64 160, i64 200, i64 240, i64 280, i64 320, i64 360, i64 400, i64 440, i64 480, i64 520, i64 560, i64 600>
  %wide.gep = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 40
  %i.an = icmp uge <16 x ptr> %wide.gep, %broadcast.splat
  %i.ao = freeze <16 x i1> %i.an                  ; 2 uses
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 640
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.split.loop.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph49, %middle.block
  %.ph = phi i64 [ 1, %.lr.ph49 ], [ %i.ak, %middle.block ]
  %.014.i48.ph = phi ptr [ %i.ac, %.lr.ph49 ], [ %i.am, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.ar = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ao, i1 false)
  %i.as = add i64 %index, %i.ar
  %i.at = mul i64 %i.as, 40
  %i.au = getelementptr i8, ptr %i.ac, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 40
  br label %get_seg_by_num.exit

.lr.ph.i:                                         ; preds = %scalar.ph
  %i.aw = add i64 %i.ay, 1                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %i.aa
  br i1 %i.ax, label %.split.loop.exit.i, label %scalar.ph, !llvm.loop !9

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.lr.ph.i
  %i.ay = phi i64 [ %i.aw, %.lr.ph.i ], [ %.ph, %scalar.ph.preheader ]
  %.014.i48 = phi ptr [ %i.az, %.lr.ph.i ], [ %.014.i48.ph, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i48, i64 40 ; 3 uses
  %i.ba = icmp ult ptr %i.az, %i.af
  br i1 %i.ba, label %.lr.ph.i, label %get_seg_by_num.exit, !llvm.loop !10

.split.loop.exit.i:                               ; preds = %.lr.ph.i, %middle.block, %.lr.ph.preheader.i
  %i.bb = getelementptr i8, ptr %i.ah, i64 -32
  br label %get_seg_by_num.exit

get_seg_by_num.exit:                              ; preds = %scalar.ph, %vector.early.exit, %bb.d, %.split.loop.exit.i
  %.1.i = phi ptr [ %i.bb, %.split.loop.exit.i ], [ %i.ac, %bb.d ], [ %i.av, %vector.early.exit ], [ %i.az, %scalar.ph ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %i.bd = load i32, ptr %i.bc, align 1            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = add i32 %i.bf, %i.bd
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = zext i16 %i.z to i32
  %i.bj = getelementptr inbounds i8, ptr %.1.i, i64 -8
  %i.bk = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull %1, i32 noundef %i.bd, i32 noundef %i.bi, ptr noundef nonnull %i.bj, i32 noundef %i.bf, i64 noundef %i.bh) #9 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.bl = add i64 %.02833, 2
  %i.bm = add i64 %i.bl, %i.q                     ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.l
  br i1 %i.bn, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.a, %pdb_get_file_size.exit, %get_seg_by_num.exit
  %.0 = phi i64 [ %i.bh, %get_seg_by_num.exit ], [ 0, %pdb_get_file_size.exit ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @pdb_resolve(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @pdb_find_public_v3_symbol(ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  %i.b = add i64 %i.a, %0
  %.0 = select i1 %.not, i64 0, i64 %i.b
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @pdb_init_from_file(ptr noundef %0, ptr noundef initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  %i.b = call ptr @g_mapped_file_new(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #9 ; 2 uses
  store ptr %i.b, ptr %1, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %0) #9 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8
  call void @g_error_free(ptr noundef %i.f) #9
  br label %pdb_reader_init.exit

bb.c:                                             ; preds = %bb.a
  %i.g = call i64 @g_mapped_file_get_length(ptr noundef %i.b) #9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = load ptr, ptr %1, align 8
  %i.j = call ptr @g_mapped_file_get_contents(ptr noundef %i.i) #9 ; 10 uses
  %i.k = load i128, ptr %i.j, align 1
  %i.l = xor i128 %i.k, 42759442096561097752935893770883524941
  %i.m = getelementptr i8, ptr %i.j, i64 16
  %i.n = load i64, ptr %i.m, align 1
  %i.o = zext i64 %i.n to i128
  %i.p = xor i128 %i.o, 3472326127002211149
  %i.q = or i128 %i.l, %i.p
  %i.r = icmp ne i128 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.w, i8 noundef 0, i64 noundef 4096, i1 noundef false) #9
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.j, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = load i32, ptr %i.t, align 4             ; 4 uses
  %i.ab = mul i32 %i.aa, %i.z
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i, label %pdb_reader_ds_init.exit.thread41.i, label %bb.f

pdb_reader_ds_init.exit.thread41.i:               ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.ag, align 8
  br label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.ah = add i32 %i.aa, -1
  %i.ai = add i32 %i.ah, %i.af
  %i.aj = udiv i32 %i.ai, %i.aa                   ; 5 uses
  %i.ak = mul i32 %i.aj, %i.aa
  %i.al = zext i32 %i.ak to i64
  %i.am = call noalias ptr @g_malloc(i64 noundef %i.al) #10 ; 9 uses
  %i.an = icmp sgt i32 %i.aj, 0
  br i1 %i.an, label %.lr.ph.i.i.i, label %pdb_reader_ds_init.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ao = load i32, ptr %i.t, align 4             ; 7 uses
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = zext nneg i32 %i.aj to i64              ; 2 uses
  %xtraiter = and i64 %i.aq, 1
  %i.ar = icmp eq i32 %i.aj, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.aq, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.as = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.at = mul i32 %i.ao, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = mul i32 %i.ax, %i.ao
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.av, ptr noundef nonnull readonly align 1 %i.ba, i64 noundef range(i64 0, 4294967296) %i.ap, i1 noundef false) #9
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %i.bc = mul i32 %i.ao, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = mul i32 %i.bg, %i.ao
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.be, ptr noundef nonnull readonly align 1 %i.bj, i64 noundef range(i64 0, 4294967296) %i.ap, i1 noundef false) #9
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %pdb_reader_ds_init.exit.thread38.i.unr-lcssa, label %bb.g, !llvm.loop !14

pdb_reader_ds_init.exit.thread38.i.unr-lcssa:     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pdb_reader_ds_init.exit.thread38.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %pdb_reader_ds_init.exit.thread38.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %pdb_reader_ds_init.exit.thread38.i.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i32 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.bk = trunc nuw nsw i64 %indvars.iv.i.i.i.epil.init to i32
  %i.bl = mul i32 %i.ao, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.epil.init
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = mul i32 %i.bp, %i.ao
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bn, ptr noundef nonnull readonly align 1 %i.bs, i64 noundef range(i64 0, 4294967296) %i.ap, i1 noundef false) #9
  br label %pdb_reader_ds_init.exit.thread38.i

pdb_reader_ds_init.exit.thread38.i:               ; preds = %pdb_reader_ds_init.exit.thread38.i.unr-lcssa, %.epil.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.am, ptr %i.bt, align 8
  br label %bb.h

pdb_reader_ds_init.exit.i:                        ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.am, ptr %i.bu, align 8
  %.not.i.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i.not.i, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %pdb_reader_ds_init.exit.i, %pdb_reader_ds_init.exit.thread38.i
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bw = load i32, ptr %i.am, align 4            ; 2 uses
  %.not31.i.i = icmp ugt i32 %i.bw, 1
  br i1 %.not31.i.i, label %bb.i, label %pdb_ds_read_file.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i32, ptr %i.w, align 8
  %i.by = or i32 %i.bx, 2
  store i32 %i.by, ptr %i.w, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ca = load i32, ptr %i.bz, align 4
  %.off.i.i = add i32 %i.ca, -1                   ; 2 uses
  %switch.i.i = icmp ult i32 %.off.i.i, -2
  br i1 %switch.i.i, label %._crit_edge.i.i, label %pdb_ds_read_file.exit.thread.i

._crit_edge.i.i:                                  ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.cc = zext i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.x, align 8             ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 5 uses
  %i.ch = add i32 %i.cg, -1
  %i.ci = load i32, ptr %i.cb, align 4
  %i.cj = add i32 %i.ch, %i.ci
end_hunk_0
