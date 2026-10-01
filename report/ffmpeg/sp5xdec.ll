Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sp5xdec?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"sp5x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Sunplus JPEG (SP5X)\00", align 1
@ff_sp5x_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 10, i32 2, i8 3, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 4128, ptr null, ptr null, ptr null, ptr @ff_mjpeg_decode_init, %union.anon { ptr @sp5x_decode_frame }, ptr @ff_mjpeg_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"amv\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"AMV Video\00", align 1
@ff_amv_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 0, i32 107, i32 2, i8 3, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 4128, ptr null, ptr null, ptr null, ptr @ff_mjpeg_decode_init, %union.anon { ptr @sp5x_decode_frame }, ptr @ff_mjpeg_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@sp5x_data_dqt = internal unnamed_addr constant [134 x i8] c"\FF\DB\00\84\00\05\03\04\04\04\03\05\04\04\04\06\05\05\06\08\0D\08\08\07\07\08\10\0C\0C\0A\0D\14\11\15\14\13\11\13\13\16\18\1F\1A\16\17\1E\17\13\13\1B%\1C\1E !###\15\1A')&\22)\1F\22#\22\01\05\06\06\08\07\08\10\08\08\10\22\16\13\16\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22", align 16
@sp5x_qscale_five_quant_table = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\0D\09\0A\0B\0A\08\0D\0B\0A\0B\0E\0E\0D\0F\13 \15\13\12\12\13'\1C\1E\17 .)10.)-,3:J>36F7,-@WAFLNRSR2>ZaZP`JQRO", [64 x i8] c"\0E\0E\0E\13\11\13&\15\15&O5-5OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO"], align 16
@sp5x_data_dht = internal unnamed_addr constant [420 x i8] c"\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@sp5x_data_sof = internal unnamed_addr constant [19 x i8] c"\FF\C0\00\11\08\00\F0\01@\03\01\22\00\02\11\01\03\11\01", align 16
@sp5x_data_sos = internal unnamed_addr constant [14 x i8] c"\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", align 1

declare i32 @ff_mjpeg_decode_init(ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @sp5x_decode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %4 = ptrtoaddr ptr %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %.not76 = icmp eq i32 %i.h, 0
  br i1 %.not76, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.d, 1024
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @av_mallocz(i64 noundef %i.j) #4 ; 20 uses
  %5 = ptrtoaddr ptr %i.k to i64
  %.not77 = icmp eq ptr %i.k, null
  br i1 %.not77, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 -1, ptr %i.k, align 1, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 -40, ptr %i.l, align 1, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(134) %i.m, ptr noundef nonnull align 16 dereferenceable(134) @sp5x_data_dqt, i64 70, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(64) @sp5x_qscale_five_quant_table, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.o, ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @sp5x_qscale_five_quant_table, i64 64), i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(420) %i.p, ptr noundef nonnull align 16 dereferenceable(420) @sp5x_data_dht, i64 420, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 556
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.q, ptr noundef nonnull align 16 dereferenceable(19) @sp5x_data_sof, i64 19, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38
  %i.t = trunc i32 %i.s to i16
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 561
  store i16 %i.u, ptr %i.v, align 1, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  %i.y = trunc i32 %i.x to i16
  %i.z = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 563
  store i16 %i.z, ptr %i.aa, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 575
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ab, ptr noundef nonnull align 1 dereferenceable(14) @sp5x_data_sos, i64 14, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !40
  %i.ae = icmp eq i32 %i.ad, 107
  br i1 %i.ae, label %.preheader, label %.preheader81

.preheader81:                                     ; preds = %bb.d
  %i.af = add nsw i32 %i.d, 1021
  %i.ag = icmp sgt i32 %i.d, 14
  br i1 %i.ag, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader81
  %i.ah = zext nneg i32 %i.d to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.d
  %i.ai = icmp sgt i32 %i.d, 4
  br i1 %i.ai, label %iter.check, label %.critedge

iter.check:                                       ; preds = %.preheader
  %i.aj = add nsw i32 %i.d, -2
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = add nuw i32 %i.d, 1021
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = add nsw i64 %i.ak, -3
  %i.ao = add nsw i64 %i.am, -589
  %umin = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ao)
  %i.ap = add nsw i64 %umin, 1                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.ap, 4
  br i1 %min.iters.check, label %.lr.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %6 = sub i64 %5, %4
  %7 = add i64 %6, 586
  %diff.check = icmp ult i64 %7, 31
  br i1 %diff.check, label %.lr.ph89.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check105 = icmp ult i64 %i.ap, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.ap, 28
  %n.vec = and i64 %i.ap, -32                     ; 5 uses
  %i.ar = or disjoint i64 %n.vec, 2
  %i.as = add i64 %n.vec, 589                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 18
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !37
  %wide.load106 = load <16 x i8>, ptr %i.av, align 1, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 589
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 605
  store <16 x i8> %wide.load, ptr %i.ax, align 1, !tbaa !37
  store <16 x i8> %wide.load106, ptr %i.ay, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %.critedge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph89.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.ap, -4                   ; 4 uses
  %i.ba = or disjoint i64 %n.vec108, 2
  %i.bb = add i64 %n.vec108, 589                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next111, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %index109
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %wide.load110 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 %index109
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 589
  store <4 x i8> %wide.load110, ptr %i.bf, align 1, !tbaa !37
  %index.next111 = add nuw i64 %index109, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next111, %n.vec108
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n112 = icmp eq i64 %i.ap, %n.vec108
  br i1 %cmp.n112, label %.critedge.loopexit, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv96.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  %indvars.iv94.ph = phi i64 [ 589, %iter.check ], [ 589, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %.lr.ph89
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.lr.ph89 ], [ %indvars.iv96.ph, %.lr.ph89.preheader ] ; 2 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.lr.ph89 ], [ %indvars.iv94.ph, %.lr.ph89.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv96
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv94
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !37
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.bk = icmp samesign ult i64 %indvars.iv.next97, %i.ak
  %i.bl = icmp samesign ult i64 %indvars.iv94, %i.am
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %.lr.ph89, label %.critedge.loopexit, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 14, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.185 = phi i32 [ 589, %.lr.ph.preheader ], [ %.2, %bb.f ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !37  ; 2 uses
  %i.bo = add nsw i32 %.185, 1                    ; 2 uses
  %i.bp = sext i32 %.185 to i64
  %i.bq = getelementptr inbounds i8, ptr %i.k, i64 %i.bp
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !37
  %i.br = icmp eq i8 %i.bn, -1
  br i1 %i.br, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.bs = add nsw i32 %.185, 2
  %i.bt = sext i32 %i.bo to i64
  %i.bu = getelementptr inbounds i8, ptr %i.k, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.2 = phi i32 [ %i.bs, %bb.e ], [ %i.bo, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.ah
  %i.bw = icmp slt i32 %.2, %i.af
  %or.cond80 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond80, label %.lr.ph, label %.critedge, !llvm.loop !12

.critedge.loopexit:                               ; preds = %.lr.ph89, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next95.lcssa = phi i64 [ %i.bb, %vec.epilog.middle.block ], [ %i.as, %middle.block ], [ %indvars.iv.next95, %.lr.ph89 ]
  %i.bx = trunc nuw i64 %indvars.iv.next95.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.loopexit, %.preheader81, %.preheader
  %.3 = phi i32 [ %i.bx, %.critedge.loopexit ], [ 589, %.preheader ], [ 589, %.preheader81 ], [ %.2, %bb.f ] ; 2 uses
  %i.by = sext i32 %.3 to i64
  %i.bz = getelementptr inbounds i8, ptr %i.k, i64 %i.by ; 2 uses
  store i8 -1, ptr %i.bz, align 1, !tbaa !37
  %i.ca = add nsw i32 %.3, 2
  %i.cb = getelementptr i8, ptr %i.bz, i64 1
  store i8 -39, ptr %i.cb, align 1, !tbaa !37
  %i.cc = tail call i32 @ff_mjpeg_decode_frame_from_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.k, i32 noundef %i.ca) #4 ; 2 uses
  tail call void @av_free(ptr noundef nonnull %i.k) #4
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ce = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge, %bb.c, %bb.a, %bb.b
  %.073 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ %i.ce, %bb.g ], [ %i.cc, %.critedge ]
  ret i32 %.073
}

declare i32 @ff_mjpeg_decode_end(ptr noundef) #0

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_mjpeg_decode_frame_from_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @av_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !41, !42, !43}
!10 = distinct !{!10, !41, !42, !43}
!11 = distinct !{!11, !41, !42}
!12 = distinct !{!12, !41}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"p1 _ZTS16AVPacketSideData", !13, i64 0}
!18 = !{!"AVRational", !6, i64 0, !6, i64 4}
!19 = !{!"AVPacket", !14, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !17, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !13, i64 80, !14, i64 88, !18, i64 96}
!20 = !{!19, !16, i64 24}
!21 = !{!19, !6, i64 32}
!22 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!23 = !{!"p1 _ZTS7AVCodec", !13, i64 0}
!24 = !{!"p1 _ZTS15AVCodecInternal", !13, i64 0}
!25 = !{!"float", !5, i64 0}
!26 = !{!"p1 short", !13, i64 0}
!27 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !13, i64 16}
!28 = !{!"p1 _ZTS10RcOverride", !13, i64 0}
!29 = !{!"p1 _ZTS9AVHWAccel", !13, i64 0}
!30 = !{!"p1 _ZTS17AVCodecDescriptor", !13, i64 0}
!31 = !{!"p1 int", !13, i64 0}
!32 = !{!"any p2 pointer", !13, i64 0}
!33 = !{!"p2 _ZTS15AVFrameSideData", !32, i64 0}
!34 = !{!"AVCodecContext", !22, i64 0, !6, i64 8, !6, i64 12, !23, i64 16, !6, i64 24, !6, i64 28, !13, i64 32, !24, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !18, i64 84, !18, i64 92, !18, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !18, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !13, i64 184, !13, i64 192, !6, i64 200, !25, i64 204, !25, i64 208, !25, i64 212, !25, i64 216, !25, i64 220, !25, i64 224, !25, i64 228, !25, i64 232, !25, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !26, i64 288, !26, i64 296, !26, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !27, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !13, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !25, i64 428, !25, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !28, i64 456, !15, i64 464, !15, i64 472, !25, i64 480, !25, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !29, i64 536, !13, i64 544, !14, i64 552, !14, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !13, i64 672, !13, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !30, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !17, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !13, i64 816, !15, i64 824, !31, i64 832, !6, i64 840, !33, i64 848, !6, i64 856, !6, i64 860}
!35 = !{!34, !6, i64 112}
!36 = !{!34, !6, i64 116}
!37 = !{!5, !5, i64 0}
!38 = !{!34, !6, i64 124}
!39 = !{!34, !6, i64 120}
!40 = !{!34, !6, i64 24}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", i32 4, i32 28}
end_hunk_0
