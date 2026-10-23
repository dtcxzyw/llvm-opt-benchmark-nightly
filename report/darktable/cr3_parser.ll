Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/cr3_parser?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { [5 x i8], i16 }

@_ZZN6LibRaw8parseCR3EyyRsPcS0_S0_yE13AtomNamesList = internal constant [72 x %struct.anon] [%struct.anon { [5 x i8] c"dinf\00", i16 1 }, %struct.anon { [5 x i8] c"edts\00", i16 1 }, %struct.anon { [5 x i8] c"fiin\00", i16 1 }, %struct.anon { [5 x i8] c"ipro\00", i16 1 }, %struct.anon { [5 x i8] c"iprp\00", i16 1 }, %struct.anon { [5 x i8] c"mdia\00", i16 1 }, %struct.anon { [5 x i8] c"meco\00", i16 1 }, %struct.anon { [5 x i8] c"mere\00", i16 1 }, %struct.anon { [5 x i8] c"mfra\00", i16 1 }, %struct.anon { [5 x i8] c"minf\00", i16 1 }, %struct.anon { [5 x i8] c"moof\00", i16 1 }, %struct.anon { [5 x i8] c"moov\00", i16 1 }, %struct.anon { [5 x i8] c"mvex\00", i16 1 }, %struct.anon { [5 x i8] c"paen\00", i16 1 }, %struct.anon { [5 x i8] c"schi\00", i16 1 }, %struct.anon { [5 x i8] c"sinf\00", i16 1 }, %struct.anon { [5 x i8] c"skip\00", i16 1 }, %struct.anon { [5 x i8] c"stbl\00", i16 1 }, %struct.anon { [5 x i8] c"stsd\00", i16 1 }, %struct.anon { [5 x i8] c"strk\00", i16 1 }, %struct.anon { [5 x i8] c"tapt\00", i16 1 }, %struct.anon { [5 x i8] c"traf\00", i16 1 }, %struct.anon { [5 x i8] c"trak\00", i16 1 }, %struct.anon { [5 x i8] c"cdsc\00", i16 2 }, %struct.anon { [5 x i8] c"colr\00", i16 2 }, %struct.anon { [5 x i8] c"dimg\00", i16 2 }, %struct.anon { [5 x i8] c"free\00", i16 2 }, %struct.anon { [5 x i8] c"frma\00", i16 2 }, %struct.anon { [5 x i8] c"ftyp\00", i16 2 }, %struct.anon { [5 x i8] c"hdlr\00", i16 2 }, %struct.anon { [5 x i8] c"hvcC\00", i16 2 }, %struct.anon { [5 x i8] c"iinf\00", i16 2 }, %struct.anon { [5 x i8] c"iloc\00", i16 2 }, %struct.anon { [5 x i8] c"infe\00", i16 2 }, %struct.anon { [5 x i8] c"ipco\00", i16 2 }, %struct.anon { [5 x i8] c"ipma\00", i16 2 }, %struct.anon { [5 x i8] c"iref\00", i16 2 }, %struct.anon { [5 x i8] c"irot\00", i16 2 }, %struct.anon { [5 x i8] c"ispe\00", i16 2 }, %struct.anon { [5 x i8] c"meta\00", i16 2 }, %struct.anon { [5 x i8] c"mvhd\00", i16 2 }, %struct.anon { [5 x i8] c"pitm\00", i16 2 }, %struct.anon { [5 x i8] c"pixi\00", i16 2 }, %struct.anon { [5 x i8] c"schm\00", i16 2 }, %struct.anon { [5 x i8] c"thmb\00", i16 2 }, %struct.anon { [5 x i8] c"tkhd\00", i16 2 }, %struct.anon { [5 x i8] c"url \00", i16 2 }, %struct.anon { [5 x i8] c"urn \00", i16 2 }, %struct.anon { [5 x i8] c"CCTP\00", i16 1 }, %struct.anon { [5 x i8] c"CRAW\00", i16 1 }, %struct.anon { [5 x i8] c"JPEG\00", i16 2 }, %struct.anon { [5 x i8] c"CDI1\00", i16 2 }, %struct.anon { [5 x i8] c"CMP1\00", i16 2 }, %struct.anon { [5 x i8] c"CNCV\00", i16 2 }, %struct.anon { [5 x i8] c"CCDT\00", i16 2 }, %struct.anon { [5 x i8] c"CTBO\00", i16 2 }, %struct.anon { [5 x i8] c"CMT1\00", i16 2 }, %struct.anon { [5 x i8] c"CMT2\00", i16 2 }, %struct.anon { [5 x i8] c"CMT3\00", i16 2 }, %struct.anon { [5 x i8] c"CMT4\00", i16 2 }, %struct.anon { [5 x i8] c"CNOP\00", i16 2 }, %struct.anon { [5 x i8] c"THMB\00", i16 2 }, %struct.anon { [5 x i8] c"co64\00", i16 2 }, %struct.anon { [5 x i8] c"mdat\00", i16 2 }, %struct.anon { [5 x i8] c"mdhd\00", i16 2 }, %struct.anon { [5 x i8] c"nmhd\00", i16 2 }, %struct.anon { [5 x i8] c"stsc\00", i16 2 }, %struct.anon { [5 x i8] c"stsz\00", i16 2 }, %struct.anon { [5 x i8] c"stts\00", i16 2 }, %struct.anon { [5 x i8] c"vmhd\00", i16 2 }, %struct.anon { [5 x i8] c"dref\00", i16 3 }, %struct.anon { [5 x i8] c"uuid\00", i16 3 }], align 16
@__const._ZN6LibRaw8parseCR3EyyRsPcS0_S0_y.sHandlerType = private unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"unk.\00", [5 x i8] c"soun\00", [5 x i8] c"vide\00", [5 x i8] c"hint\00", [5 x i8] c"meta\00"], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"moovuuid\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"moovuuidCCTP\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"moovuuidCMT1\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"moovuuidTHMB\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"moovuuidCMT2\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"moovuuidCMT3\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"moovuuidCMT4\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"moovtrakmdiahdlr\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"moovtrakmdiaminfstblstsd\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"moovtrakmdiaminfstblstsdCRAW\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"moovtrakmdiaminfstblstsdCRAWCMP1\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"moovtrakmdiaminfstblstsdCRAWCDI1\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"moovtrakmdiaminfstblstsdCRAWJPEG\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"moovtrakmdiaminfstblstsc\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"moovtrakmdiaminfstblstsz\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"moovtrakmdiaminfstblco64\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"moovtrakmdiaminfstbl\00", align 1
@switch.table._ZN6LibRaw14selectCRXTrackEv = private unnamed_addr constant [4 x i32] [i32 -1802201964, i32 1633771873, i32 1229539657, i32 370546198], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -1, 1) i32 @_ZN6LibRaw14selectCRXFrameEsj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, i16 noundef signext %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 382168
  %i.b = sext i16 %1 to i64
  %i.c = getelementptr inbounds [128 x i8], ptr %i.a, i64 %i.b ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20   ; 2 uses
  %.not = icmp ult i32 %2, %i.e
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not5263.not = icmp eq i32 %i.g, 0
  br i1 %.not5263.not, label %.thread, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %._crit_edge
  %indvars.iv76 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next77, %._crit_edge ] ; 2 uses
  %.04265 = phi i32 [ 0, %.lr.ph67 ], [ %.143.lcssa, %._crit_edge ] ; 3 uses
  %.04464 = phi i32 [ 0, %.lr.ph67 ], [ %.145.lcssa, %._crit_edge ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv76
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %.04464, i32 %i.l) ; 2 uses
  %i.r = tail call i32 @llvm.umax.i32(i32 %.04464, i32 %i.l)
  %umax74 = zext i32 %i.r to i64
  %exitcond.not96.not = icmp ult i32 %.04464, %i.l
  br i1 %exitcond.not96.not, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %bb.b
  %i.s = zext i32 %.04464 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax74
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph99, %bb.c
  %indvars.iv97 = phi i64 [ %i.s, %.lr.ph99 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv97, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28
  %i.v = zext i32 %i.u to i64
  %i.w = icmp eq i64 %indvars.iv.next77, %i.v
  br i1 %i.w, label %bb.c, label %.critedge.split.loop.exit89, !llvm.loop !0

.critedge.split.loop.exit89:                      ; preds = %bb.d
  %i.x = trunc nuw i64 %indvars.iv97 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.critedge.split.loop.exit89
  %.145.lcssa = phi i32 [ %i.x, %.critedge.split.loop.exit89 ], [ %umax, %bb.b ], [ %umax, %bb.c ] ; 2 uses
  %i.y = zext i32 %.145.lcssa to i64
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 3 uses
  %.not5159.not = icmp eq i32 %i.ab, 0
  br i1 %.not5159.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.ac = add i32 %.04265, %i.ab
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.062 = phi i32 [ %i.aq, %bb.i ], [ 0, %.lr.ph.preheader ]
  %.03961 = phi i64 [ %i.ao, %bb.i ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.14360 = phi i32 [ %i.ap, %bb.i ], [ %.04265, %.lr.ph.preheader ] ; 4 uses
  %i.ad = icmp ugt i32 %.14360, %i.e
  br i1 %i.ad, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ae = load i32, ptr %i.n, align 8, !tbaa !30  ; 2 uses
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.ag = zext i32 %.14360 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aj = phi i32 [ %i.ai, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ak = icmp eq i32 %.14360, %2
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.03961, ptr %i.al, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !34
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.an = zext i32 %i.aj to i64
  %i.ao = add nsw i64 %.03961, %i.an
  %i.ap = add i32 %.14360, 1
  %i.aq = add nuw i32 %.062, 1                    ; 2 uses
  %exitcond75.not = icmp eq i32 %i.aq, %i.ab
  br i1 %exitcond75.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.i, %.critedge
  %.143.lcssa = phi i32 [ %.04265, %.critedge ], [ %i.ac, %bb.i ]
  %exitcond79.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count
  br i1 %exitcond79.not, label %.thread, label %bb.b, !llvm.loop !2

.thread:                                          ; preds = %._crit_edge, %.lr.ph, %.preheader, %bb.h, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ -1, %.preheader ], [ 0, %bb.h ], [ -1, %.lr.ph ], [ -1, %._crit_edge ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14selectCRXTrackEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 16 uses
  %i.b = alloca [16 x i32], align 16              ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384220
  %i.d = load i32, ptr %i.c, align 4, !tbaa !94
  %i.e = shl i32 %i.d, 16                         ; 2 uses
  %i.f = ashr exact i32 %i.e, 16                  ; 5 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 382168 ; 6 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %i.f, i32 15)
  %i.i = add nuw nsw i32 %umin, 1                 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.e, 0
  br i1 %i.j, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.e

.unr-lcssa:                                       ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 3 uses
  %.0156269.epil.init = phi i64 [ 0, %bb.b ], [ %.1157.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod459 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod459)
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %indvars.iv.epil.init ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !95
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %.epilog-lcssa

bb.c:                                             ; preds = %.epil.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !130
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !132
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.u, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i64 %i.y, ptr %i.z, align 8, !tbaa !25
  %..0156.epil = tail call i64 @llvm.smax.i64(i64 %i.y, i64 %.0156269.epil.init) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, 1
  br i1 %i.ac, label %bb.d, label %.epilog-lcssa

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !32
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.c, %bb.d, %.unr-lcssa
  %.1157.lcssa = phi i64 [ %.1157.1, %.unr-lcssa ], [ %..0156.epil, %bb.d ], [ %..0156.epil, %bb.c ], [ %.0156269.epil.init, %.epil.preheader ] ; 8 uses
  %i.ae = icmp slt i64 %.1157.lcssa, 8
  br i1 %i.ae, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epilog-lcssa
  %min.iters.check = icmp ult i32 %i.f, 7
  br i1 %min.iters.check, label %.lr.ph.preheader454, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 24           ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.1157.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %wide.load = load <4 x i64>, ptr %i.a, align 16, !tbaa !25
  %wide.load430 = load <4 x i64>, ptr %i.af, align 16, !tbaa !25
  %i.ag = icmp eq <4 x i64> %wide.load, %broadcast.splat ; 2 uses
  %i.ah = icmp eq <4 x i64> %wide.load430, %broadcast.splat ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load431 = load <4 x i32>, ptr %i.b, align 16, !tbaa !32 ; 2 uses
  %wide.load432 = load <4 x i32>, ptr %i.ai, align 16, !tbaa !32 ; 2 uses
  %i.aj = icmp sgt <4 x i32> %wide.load431, splat (i32 1)
  %i.ak = icmp sgt <4 x i32> %wide.load432, splat (i32 1)
  %i.al = select <4 x i1> %i.ag, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.am = select <4 x i1> %i.ah, <4 x i1> %i.ak, <4 x i1> zeroinitializer
  %i.an = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load431, <4 x i32> zeroinitializer)
  %i.ao = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load432, <4 x i32> zeroinitializer)
  %predphi = select <4 x i1> %i.al, <4 x i32> %i.an, <4 x i32> zeroinitializer ; 3 uses
  %predphi433 = select <4 x i1> %i.am, <4 x i32> %i.ao, <4 x i32> zeroinitializer ; 3 uses
  %i.ap = zext <4 x i1> %i.ag to <4 x i32>        ; 2 uses
  %i.aq = zext <4 x i1> %i.ah to <4 x i32>        ; 2 uses
  %i.ar = icmp eq i64 %n.vec, 8
  br i1 %i.ar, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %wide.load.1 = load <4 x i64>, ptr %i.as, align 16, !tbaa !25
  %wide.load430.1 = load <4 x i64>, ptr %i.at, align 16, !tbaa !25
  %i.au = icmp eq <4 x i64> %wide.load.1, %broadcast.splat ; 2 uses
  %i.av = icmp eq <4 x i64> %wide.load430.1, %broadcast.splat ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load431.1 = load <4 x i32>, ptr %i.aw, align 16, !tbaa !32 ; 2 uses
  %wide.load432.1 = load <4 x i32>, ptr %i.ax, align 16, !tbaa !32 ; 2 uses
  %i.ay = icmp sgt <4 x i32> %wide.load431.1, splat (i32 1)
  %i.az = icmp sgt <4 x i32> %wide.load432.1, splat (i32 1)
  %i.ba = select <4 x i1> %i.au, <4 x i1> %i.ay, <4 x i1> zeroinitializer
  %i.bb = select <4 x i1> %i.av, <4 x i1> %i.az, <4 x i1> zeroinitializer
  %i.bc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi, <4 x i32> %wide.load431.1)
  %i.bd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi433, <4 x i32> %wide.load432.1)
  %predphi.1 = select <4 x i1> %i.ba, <4 x i32> %i.bc, <4 x i32> %predphi
  %predphi433.1 = select <4 x i1> %i.bb, <4 x i32> %i.bd, <4 x i32> %predphi433
  %i.be = zext <4 x i1> %i.au to <4 x i32>
  %predphi434.1 = add nuw nsw <4 x i32> %i.ap, %i.be
  %i.bf = zext <4 x i1> %i.av to <4 x i32>
  %predphi435.1 = add nuw nsw <4 x i32> %i.aq, %i.bf
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %predphi.lcssa = phi <4 x i32> [ %predphi, %vector.ph ], [ %predphi.1, %vector.body.1 ]
  %predphi433.lcssa = phi <4 x i32> [ %predphi433, %vector.ph ], [ %predphi433.1, %vector.body.1 ]
  %predphi434.lcssa = phi <4 x i32> [ %i.ap, %vector.ph ], [ %predphi434.1, %vector.body.1 ]
  %predphi435.lcssa = phi <4 x i32> [ %i.aq, %vector.ph ], [ %predphi435.1, %vector.body.1 ]
  %bin.rdx = add nsw <4 x i32> %predphi435.lcssa, %predphi434.lcssa
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi.lcssa, <4 x i32> %predphi433.lcssa)
  %i.bh = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader454

.lr.ph.preheader454:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv321.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0150272.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  %.0152271.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph

bb.e:                                             ; preds = %bb.k, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.k ] ; 5 uses
  %.0156269 = phi i64 [ 0, %.new ], [ %.1157.1, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.k ]
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %indvars.iv ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !95
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !130
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !131
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.br, %i.bo
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !132
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %i.bs, %i.bv                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.bw, ptr %i.bx, align 16, !tbaa !25
  %..0156 = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 %.0156269) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 92
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20 ; 2 uses
  %i.ca = icmp ugt i32 %i.bz, 1
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.bz, ptr %i.cb, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1157 = phi i64 [ %..0156, %bb.g ], [ %..0156, %bb.f ], [ %.0156269, %bb.e ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %indvars.iv.next ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !95
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !130
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !131
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !132
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cm, %i.cp                ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !25
  %..0156.1 = tail call i64 @llvm.smax.i64(i64 %i.cq, i64 %.1157) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 92
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !20 ; 2 uses
  %i.cu = icmp ugt i32 %i.ct, 1
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.1157.1 = phi i64 [ %..0156.1, %bb.j ], [ %..0156.1, %bb.i ], [ %.1157, %bb.h ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !123
end_hunk_0
begin_hunk_1_@_ZN6LibRaw14selectCRXTrackEv:bb.a
  %.0141277.epil = phi i32 [ %.0141277.epil.init, %.lr.ph279.epil.preheader ], [ %.1142.epil, %.lr.ph279.epil ] ; 2 uses
  %.0144275.epil = phi i32 [ %.0144275.epil.init, %.lr.ph279.epil.preheader ], [ %.2.epil, %.lr.ph279.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph279.epil.preheader ], [ %epil.iter.next, %.lr.ph279.epil ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv326.epil
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !25
  %i.dk = icmp eq i64 %i.dj, %.1157.lcssa         ; 2 uses
  %.not181.epil = icmp sle i32 %.0141277.epil, %.
  %i.dl = select i1 %i.dk, i1 %.not181.epil, i1 false
  %i.dm = trunc nuw nsw i64 %indvars.iv326.epil to i32
  %.2.epil = select i1 %i.dl, i32 %i.dm, i32 %.0144275.epil ; 2 uses
  %i.dn = zext i1 %i.dk to i32
  %.1142.epil = add nuw nsw i32 %.0141277.epil, %i.dn
  %indvars.iv.next327.epil = add nuw nsw i64 %indvars.iv326.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter460
  br i1 %epil.iter.cmp.not, label %._crit_edge280, label %.lr.ph279.epil, !llvm.loop !125

._crit_edge280:                                   ; preds = %.lr.ph279.epil, %._crit_edge280.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.3, %._crit_edge280.unr-lcssa ], [ %.2.epil, %.lr.ph279.epil ] ; 3 uses
  %or.cond3 = icmp ult i32 %.2.lcssa, 16
  br i1 %or.cond3, label %bb.o, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread

.lr.ph279:                                        ; preds = %.lr.ph279, %.lr.ph279.preheader.new
  %indvars.iv326 = phi i64 [ 0, %.lr.ph279.preheader.new ], [ %indvars.iv.next327.3, %.lr.ph279 ] ; 6 uses
  %.0141277 = phi i32 [ 0, %.lr.ph279.preheader.new ], [ %.1142.3, %.lr.ph279 ] ; 2 uses
  %.0144275 = phi i32 [ -1, %.lr.ph279.preheader.new ], [ %.2.3, %.lr.ph279 ]
  %niter465 = phi i64 [ 0, %.lr.ph279.preheader.new ], [ %niter465.next.3, %.lr.ph279 ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv326
  %i.dp = load i64, ptr %i.do, align 16, !tbaa !25
  %i.dq = icmp eq i64 %i.dp, %.1157.lcssa         ; 2 uses
  %.not181 = icmp sle i32 %.0141277, %.
  %i.dr = select i1 %i.dq, i1 %.not181, i1 false
  %i.ds = trunc nuw nsw i64 %indvars.iv326 to i32
  %.2 = select i1 %i.dr, i32 %i.ds, i32 %.0144275
  %i.dt = zext i1 %i.dq to i32
  %.1142 = add nuw nsw i32 %.0141277, %i.dt       ; 2 uses
  %indvars.iv.next327 = or disjoint i64 %indvars.iv326, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next327
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !25
  %i.dw = icmp eq i64 %i.dv, %.1157.lcssa         ; 2 uses
  %.not181.1 = icmp sle i32 %.1142, %.
  %i.dx = select i1 %i.dw, i1 %.not181.1, i1 false
  %i.dy = trunc nuw nsw i64 %indvars.iv.next327 to i32
  %.2.1 = select i1 %i.dx, i32 %i.dy, i32 %.2
  %i.dz = zext i1 %i.dw to i32
  %.1142.1 = add nuw nsw i32 %.1142, %i.dz        ; 2 uses
  %indvars.iv.next327.1 = or disjoint i64 %indvars.iv326, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next327.1
  %i.eb = load i64, ptr %i.ea, align 16, !tbaa !25
  %i.ec = icmp eq i64 %i.eb, %.1157.lcssa         ; 2 uses
  %.not181.2 = icmp sle i32 %.1142.1, %.
  %i.ed = select i1 %i.ec, i1 %.not181.2, i1 false
  %i.ee = trunc nuw nsw i64 %indvars.iv.next327.1 to i32
  %.2.2 = select i1 %i.ed, i32 %i.ee, i32 %.2.1
  %i.ef = zext i1 %i.ec to i32
  %.1142.2 = add nuw nsw i32 %.1142.1, %i.ef      ; 2 uses
  %indvars.iv.next327.2 = or disjoint i64 %indvars.iv326, 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next327.2
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !25
  %i.ei = icmp eq i64 %i.eh, %.1157.lcssa         ; 2 uses
  %.not181.3 = icmp sle i32 %.1142.2, %.
  %i.ej = select i1 %i.ei, i1 %.not181.3, i1 false
  %i.ek = trunc nuw nsw i64 %indvars.iv.next327.2 to i32
  %.2.3 = select i1 %i.ej, i32 %i.ek, i32 %.2.2   ; 3 uses
  %i.el = zext i1 %i.ei to i32
  %.1142.3 = add nuw nsw i32 %.1142.2, %i.el      ; 2 uses
  %indvars.iv.next327.3 = add nuw nsw i64 %indvars.iv326, 4 ; 2 uses
  %niter465.next.3 = add i64 %niter465, 4         ; 2 uses
  %niter465.ncmp.3 = icmp eq i64 %niter465.next.3, %unroll_iter464
  br i1 %niter465.ncmp.3, label %._crit_edge280.unr-lcssa, label %.lr.ph279, !llvm.loop !126

bb.o:                                             ; preds = %._crit_edge280
  %i.em = zext nneg i32 %.2.lcssa to i64          ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !32 ; 3 uses
  %i.ep = tail call i32 @llvm.smin.i32(i32 %.394, i32 %i.eo) ; 2 uses
  %spec.select182 = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0) ; 3 uses
  %.not = icmp slt i32 %i.ep, 1
  br i1 %.not, label %.lr.ph290, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %i.em ; 9 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 92
  %i.es = load i32, ptr %i.er, align 4, !tbaa !20 ; 2 uses
  %.not.i = icmp ult i32 %spec.select182, %i.es
  br i1 %.not.i, label %.preheader.i, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread

.preheader.i:                                     ; preds = %bb.p
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 112
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !21 ; 2 uses
  %.not5263.not.i = icmp eq i32 %i.eu, 0
  br i1 %.not5263.not.i, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.preheader.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 80
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !23 ; 2 uses
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %wide.trip.count.i = zext i32 %i.eu to i64
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i, %.lr.ph67.i
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph67.i ], [ %indvars.iv.next77.i, %._crit_edge.i ] ; 2 uses
  %.04265.i = phi i32 [ 0, %.lr.ph67.i ], [ %.143.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.04464.i = phi i32 [ 0, %.lr.ph67.i ], [ %.145.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv76.i
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !25
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 3 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %.04464.i, i32 %i.ez) ; 3 uses
  %umax74.i = zext i32 %umax.i to i64             ; 3 uses
  %exitcond.not.i415.not = icmp ult i32 %.04464.i, %i.ez
  br i1 %exitcond.not.i415.not, label %.lr.ph418, label %.critedge.i

.lr.ph418:                                        ; preds = %bb.q
  %i.ff = zext i32 %.04464.i to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %umax74.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.s, !llvm.loop !0

bb.s:                                             ; preds = %.lr.ph418, %bb.r
  %indvars.iv.i416 = phi i64 [ %i.ff, %.lr.ph418 ], [ %indvars.iv.next.i, %bb.r ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i416, 1 ; 3 uses
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %indvars.iv.next.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !28
  %i.fi = zext i32 %i.fh to i64
  %i.fj = icmp eq i64 %indvars.iv.next77.i, %i.fi
  br i1 %i.fj, label %bb.r, label %.critedge.split.loop.exit89.i, !llvm.loop !0

.critedge.split.loop.exit89.i:                    ; preds = %bb.s
  %i.fk = trunc nuw i64 %indvars.iv.i416 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %bb.q, %.critedge.split.loop.exit89.i
  %.pre-phi356 = phi i64 [ %indvars.iv.i416, %.critedge.split.loop.exit89.i ], [ %umax74.i, %bb.q ], [ %umax74.i, %bb.r ]
  %.145.lcssa.i = phi i32 [ %i.fk, %.critedge.split.loop.exit89.i ], [ %umax.i, %bb.q ], [ %umax.i, %bb.r ]
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %.pre-phi356
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !29 ; 3 uses
  %.not5159.not.i = icmp eq i32 %i.fn, 0
  br i1 %.not5159.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.fo = add i32 %i.fn, %.04265.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %.062.i = phi i32 [ %i.ga, %bb.w ], [ 0, %.lr.ph.preheader.i ]
  %.03961.i = phi i64 [ %i.fy, %bb.w ], [ %i.fe, %.lr.ph.preheader.i ] ; 2 uses
  %.14360.i = phi i32 [ %i.fz, %bb.w ], [ %.04265.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.fp = icmp ugt i32 %.14360.i, %i.es
  br i1 %i.fp, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.fq = load i32, ptr %i.fb, align 8, !tbaa !30 ; 2 uses
  %.not50.i = icmp eq i32 %i.fq, 0
  br i1 %.not50.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fr = load ptr, ptr %i.fc, align 8, !tbaa !31
  %i.fs = zext i32 %.14360.i to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fv = phi i32 [ %i.fu, %bb.u ], [ %i.fq, %bb.t ] ; 2 uses
  %i.fw = icmp eq i32 %.14360.i, %spec.select182
  br i1 %i.fw, label %_ZN6LibRaw14selectCRXFrameEsj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = zext i32 %i.fv to i64
  %i.fy = add nsw i64 %.03961.i, %i.fx
  %i.fz = add i32 %.14360.i, 1
  %i.ga = add nuw i32 %.062.i, 1                  ; 2 uses
  %exitcond75.not.i = icmp eq i32 %i.ga, %i.fn
  br i1 %exitcond75.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.w, %.critedge.i
  %.143.lcssa.i = phi i32 [ %.04265.i, %.critedge.i ], [ %i.fo, %bb.w ]
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count.i
  br i1 %exitcond79.not.i, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread, label %bb.q, !llvm.loop !2

_ZN6LibRaw14selectCRXFrameEsj.exit:               ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  store i64 %.03961.i, ptr %i.gb, align 8, !tbaa !33
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  store i32 %i.fv, ptr %i.gc, align 8, !tbaa !34
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %bb.o, %_ZN6LibRaw14selectCRXFrameEsj.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 193512 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 193520
  %umin341 = tail call i32 @llvm.umin.i32(i32 %i.f, i32 15)
  %1 = add nuw nsw i32 %umin341, 1
  %wide.trip.count342 = zext nneg i32 %1 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 193544
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 193576
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 193608
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 193640
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 193672
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 193704
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 193736
  br label %bb.x

._crit_edge291:                                   ; preds = %.loopexit
  %.not174 = icmp eq i32 %i.eo, 0
  %spec.select = select i1 %.not174, i32 %.1151.lcssa, i32 %i.eo
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 %spec.select, ptr %i.go, align 8, !tbaa !137
  %i.gp = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %i.em ; 7 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !33
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !138
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !34
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 381800
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !139
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !131
  %i.gz = trunc i32 %i.gy to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.gz, ptr %i.hb, align 2, !tbaa !140
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !132
  %i.he = trunc i32 %i.hd to i16
  store i16 %i.he, ptr %i.ha, align 8, !tbaa !141
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 768416
  store i64 ptrtoint (ptr @_ZN6LibRaw10crxLoadRawEv to i64), ptr %i.hf, align 8, !tbaa !142
  %.repack175 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %.repack175, align 8, !tbaa !142
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !143
  %i.hi = icmp eq i32 %i.hh, 3
  %.in.v = select i1 %i.hi, i64 52, i64 20
  %.in = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.in.v
  %i.hj = load i32, ptr %.in, align 4, !tbaa !32
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 381836
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !144
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !145 ; 2 uses
  %i.hn = icmp ult i32 %i.hm, 4
  br i1 %i.hn, label %switch.lookup, label %bb.ax

bb.x:                                             ; preds = %.lr.ph290, %.loopexit
  %indvars.iv337 = phi i64 [ 0, %.lr.ph290 ], [ %indvars.iv.next338, %.loopexit ] ; 3 uses
  %.0139286 = phi i32 [ 0, %.lr.ph290 ], [ %.1140, %.loopexit ] ; 12 uses
  %.0154285 = phi i32 [ 0, %.lr.ph290 ], [ %.1155, %.loopexit ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %indvars.iv337 ; 20 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 92
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !20 ; 6 uses
  %i.hr = icmp slt i32 %i.hq, 0
  %spec.select182. = tail call i32 @llvm.smin.i32(i32 %spec.select182, i32 %i.hq)
  %spec.select247 = select i1 %i.hr, i32 0, i32 %spec.select182. ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !95
  switch i32 %i.ht, label %.loopexit [
    i32 3, label %bb.y
    i32 2, label %bb.ah
  ]

bb.y:                                             ; preds = %bb.x
  %.not180 = icmp ne i32 %spec.select247, 0
  %.not.i185 = icmp ult i32 %spec.select247, %i.hq
  %or.cond395 = select i1 %.not180, i1 %.not.i185, i1 false
  br i1 %or.cond395, label %.preheader.i187, label %_ZN6LibRaw14selectCRXFrameEsj.exit214

.preheader.i187:                                  ; preds = %bb.y
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 112
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !21 ; 2 uses
  %.not5263.not.i188 = icmp eq i32 %i.hv, 0
  br i1 %.not5263.not.i188, label %_ZN6LibRaw14selectCRXFrameEsj.exit214, label %.lr.ph67.i189

.lr.ph67.i189:                                    ; preds = %.preheader.i187
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 120
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !22
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !23 ; 2 uses
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !24 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 96
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 104
  %wide.trip.count.i190 = zext i32 %i.hv to i64
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i211, %.lr.ph67.i189
  %indvars.iv76.i191 = phi i64 [ 0, %.lr.ph67.i189 ], [ %indvars.iv.next77.i194, %._crit_edge.i211 ] ; 2 uses
  %.04265.i192 = phi i32 [ 0, %.lr.ph67.i189 ], [ %.143.lcssa.i212, %._crit_edge.i211 ] ; 3 uses
  %.04464.i193 = phi i32 [ 0, %.lr.ph67.i189 ], [ %.145.lcssa.i202, %._crit_edge.i211 ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv76.i191
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !25
  %indvars.iv.next77.i194 = add nuw nsw i64 %indvars.iv76.i191, 1 ; 3 uses
  %umax.i195 = tail call i32 @llvm.umax.i32(i32 %.04464.i193, i32 %i.ia) ; 3 uses
  %umax74.i196 = zext i32 %umax.i195 to i64       ; 3 uses
  %exitcond.not.i198423.not = icmp ult i32 %.04464.i193, %i.ia
  br i1 %exitcond.not.i198423.not, label %.lr.ph426, label %.critedge.i201

.lr.ph426:                                        ; preds = %bb.z
  %i.ig = zext i32 %.04464.i193 to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %exitcond.not.i198 = icmp eq i64 %indvars.iv.next.i199, %umax74.i196
  br i1 %exitcond.not.i198, label %.critedge.i201, label %bb.ab, !llvm.loop !0

bb.ab:                                            ; preds = %.lr.ph426, %bb.aa
  %indvars.iv.i197424 = phi i64 [ %i.ig, %.lr.ph426 ], [ %indvars.iv.next.i199, %bb.aa ] ; 3 uses
  %indvars.iv.next.i199 = add nuw nsw i64 %indvars.iv.i197424, 1 ; 3 uses
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.ib, i64 %indvars.iv.next.i199
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.ij = zext i32 %i.ii to i64
  %i.ik = icmp eq i64 %indvars.iv.next77.i194, %i.ij
  br i1 %i.ik, label %bb.aa, label %.critedge.split.loop.exit89.i200, !llvm.loop !0

.critedge.split.loop.exit89.i200:                 ; preds = %bb.ab
  %i.il = trunc nuw i64 %indvars.iv.i197424 to i32
  br label %.critedge.i201

.critedge.i201:                                   ; preds = %bb.aa, %bb.z, %.critedge.split.loop.exit89.i200
  %.pre-phi = phi i64 [ %indvars.iv.i197424, %.critedge.split.loop.exit89.i200 ], [ %umax74.i196, %bb.z ], [ %umax74.i196, %bb.aa ]
  %.145.lcssa.i202 = phi i32 [ %i.il, %.critedge.split.loop.exit89.i200 ], [ %umax.i195, %bb.z ], [ %umax.i195, %bb.aa ]
  %i.im = getelementptr inbounds nuw [12 x i8], ptr %i.ib, i64 %.pre-phi
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !29 ; 3 uses
  %.not5159.not.i203 = icmp eq i32 %i.io, 0
  br i1 %.not5159.not.i203, label %._crit_edge.i211, label %.lr.ph.preheader.i204

.lr.ph.preheader.i204:                            ; preds = %.critedge.i201
  %i.ip = add i32 %i.io, %.04265.i192
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %bb.ag, %.lr.ph.preheader.i204
  %.062.i206 = phi i32 [ %i.jd, %bb.ag ], [ 0, %.lr.ph.preheader.i204 ]
  %.03961.i207 = phi i64 [ %i.jb, %bb.ag ], [ %i.if, %.lr.ph.preheader.i204 ] ; 2 uses
  %.14360.i208 = phi i32 [ %i.jc, %bb.ag ], [ %.04265.i192, %.lr.ph.preheader.i204 ] ; 4 uses
  %i.iq = icmp ugt i32 %.14360.i208, %i.hq
  br i1 %i.iq, label %_ZN6LibRaw14selectCRXFrameEsj.exit214, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i205
  %i.ir = load i32, ptr %i.ic, align 8, !tbaa !30 ; 2 uses
  %.not50.i209 = icmp eq i32 %i.ir, 0
  br i1 %.not50.i209, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.is = load ptr, ptr %i.id, align 8, !tbaa !31
  %i.it = zext i32 %.14360.i208 to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.iw = phi i32 [ %i.iv, %bb.ad ], [ %i.ir, %bb.ac ] ; 2 uses
  %i.ix = icmp eq i32 %.14360.i208, %spec.select247
  br i1 %i.ix, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  store i64 %.03961.i207, ptr %i.iy, align 8, !tbaa !33
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  store i32 %i.iw, ptr %i.iz, align 8, !tbaa !34
  br label %_ZN6LibRaw14selectCRXFrameEsj.exit214

bb.ag:                                            ; preds = %bb.ae
  %i.ja = zext i32 %i.iw to i64
  %i.jb = add nsw i64 %.03961.i207, %i.ja
  %i.jc = add i32 %.14360.i208, 1
  %i.jd = add nuw i32 %.062.i206, 1               ; 2 uses
  %exitcond75.not.i210 = icmp eq i32 %i.jd, %i.io
  br i1 %exitcond75.not.i210, label %._crit_edge.i211, label %.lr.ph.i205, !llvm.loop !1

._crit_edge.i211:                                 ; preds = %bb.ag, %.critedge.i201
  %.143.lcssa.i212 = phi i32 [ %.04265.i192, %.critedge.i201 ], [ %i.ip, %bb.ag ]
  %exitcond79.not.i213 = icmp eq i64 %indvars.iv.next77.i194, %wide.trip.count.i190
  br i1 %exitcond79.not.i213, label %_ZN6LibRaw14selectCRXFrameEsj.exit214, label %bb.z, !llvm.loop !2

_ZN6LibRaw14selectCRXFrameEsj.exit214:            ; preds = %._crit_edge.i211, %.lr.ph.i205, %bb.af, %.preheader.i187, %bb.y
  %i.je = trunc i64 %indvars.iv337 to i16
  %i.jf = tail call noundef i32 @_ZN6LibRaw13parseCR3_CTMDEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext %i.je) ; 0 uses
  %i.jg = add nsw i32 %.0139286, 1
  br label %.loopexit

bb.ah:                                            ; preds = %bb.x
  %.not178 = icmp ne i32 %spec.select247, 0
  %.not.i215 = icmp ult i32 %spec.select247, %i.hq
  %or.cond396 = select i1 %.not178, i1 %.not.i215, i1 false
  br i1 %or.cond396, label %.preheader.i217, label %_ZN6LibRaw14selectCRXFrameEsj.exit244

.preheader.i217:                                  ; preds = %bb.ah
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ho, i64 112
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !21 ; 2 uses
  %.not5263.not.i218 = icmp eq i32 %i.ji, 0
  br i1 %.not5263.not.i218, label %_ZN6LibRaw14selectCRXFrameEsj.exit244, label %.lr.ph67.i219

end_hunk_1
begin_hunk_2_@_ZN6LibRaw14selectCRXTrackEv:bb.a
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !23 ; 2 uses
  %i.jo = load ptr, ptr %i.jl, align 8, !tbaa !24 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ho, i64 96
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ho, i64 104
  %wide.trip.count.i220 = zext i32 %i.ji to i64
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i241, %.lr.ph67.i219
  %indvars.iv76.i221 = phi i64 [ 0, %.lr.ph67.i219 ], [ %indvars.iv.next77.i224, %._crit_edge.i241 ] ; 2 uses
  %.04265.i222 = phi i32 [ 0, %.lr.ph67.i219 ], [ %.143.lcssa.i242, %._crit_edge.i241 ] ; 3 uses
  %.04464.i223 = phi i32 [ 0, %.lr.ph67.i219 ], [ %.145.lcssa.i232, %._crit_edge.i241 ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv76.i221
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !25
  %indvars.iv.next77.i224 = add nuw nsw i64 %indvars.iv76.i221, 1 ; 3 uses
  %umax.i225 = tail call i32 @llvm.umax.i32(i32 %.04464.i223, i32 %i.jn) ; 3 uses
  %umax74.i226 = zext i32 %umax.i225 to i64       ; 3 uses
  %exitcond.not.i228419.not = icmp ult i32 %.04464.i223, %i.jn
  br i1 %exitcond.not.i228419.not, label %.lr.ph422, label %.critedge.i231

.lr.ph422:                                        ; preds = %bb.ai
  %i.jt = zext i32 %.04464.i223 to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  %exitcond.not.i228 = icmp eq i64 %indvars.iv.next.i229, %umax74.i226
  br i1 %exitcond.not.i228, label %.critedge.i231, label %bb.ak, !llvm.loop !0

bb.ak:                                            ; preds = %.lr.ph422, %bb.aj
  %indvars.iv.i227420 = phi i64 [ %i.jt, %.lr.ph422 ], [ %indvars.iv.next.i229, %bb.aj ] ; 3 uses
  %indvars.iv.next.i229 = add nuw nsw i64 %indvars.iv.i227420, 1 ; 3 uses
  %i.ju = getelementptr inbounds nuw [12 x i8], ptr %i.jo, i64 %indvars.iv.next.i229
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !28
  %i.jw = zext i32 %i.jv to i64
  %i.jx = icmp eq i64 %indvars.iv.next77.i224, %i.jw
  br i1 %i.jx, label %bb.aj, label %.critedge.split.loop.exit89.i230, !llvm.loop !0

.critedge.split.loop.exit89.i230:                 ; preds = %bb.ak
  %i.jy = trunc nuw i64 %indvars.iv.i227420 to i32
  br label %.critedge.i231

.critedge.i231:                                   ; preds = %bb.aj, %bb.ai, %.critedge.split.loop.exit89.i230
  %.pre-phi354 = phi i64 [ %indvars.iv.i227420, %.critedge.split.loop.exit89.i230 ], [ %umax74.i226, %bb.ai ], [ %umax74.i226, %bb.aj ]
  %.145.lcssa.i232 = phi i32 [ %i.jy, %.critedge.split.loop.exit89.i230 ], [ %umax.i225, %bb.ai ], [ %umax.i225, %bb.aj ]
  %i.jz = getelementptr inbounds nuw [12 x i8], ptr %i.jo, i64 %.pre-phi354
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !29 ; 3 uses
  %.not5159.not.i233 = icmp eq i32 %i.kb, 0
  br i1 %.not5159.not.i233, label %._crit_edge.i241, label %.lr.ph.preheader.i234

.lr.ph.preheader.i234:                            ; preds = %.critedge.i231
  %i.kc = add i32 %i.kb, %.04265.i222
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %bb.ap, %.lr.ph.preheader.i234
  %.062.i236 = phi i32 [ %i.kq, %bb.ap ], [ 0, %.lr.ph.preheader.i234 ]
  %.03961.i237 = phi i64 [ %i.ko, %bb.ap ], [ %i.js, %.lr.ph.preheader.i234 ] ; 2 uses
  %.14360.i238 = phi i32 [ %i.kp, %bb.ap ], [ %.04265.i222, %.lr.ph.preheader.i234 ] ; 4 uses
  %i.kd = icmp ugt i32 %.14360.i238, %i.hq
  br i1 %i.kd, label %_ZN6LibRaw14selectCRXFrameEsj.exit244, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i235
  %i.ke = load i32, ptr %i.jp, align 8, !tbaa !30 ; 2 uses
  %.not50.i239 = icmp eq i32 %i.ke, 0
  br i1 %.not50.i239, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kf = load ptr, ptr %i.jq, align 8, !tbaa !31
  %i.kg = zext i32 %.14360.i238 to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.kj = phi i32 [ %i.ki, %bb.am ], [ %i.ke, %bb.al ] ; 2 uses
  %i.kk = icmp eq i32 %.14360.i238, %spec.select247
  br i1 %i.kk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  store i64 %.03961.i237, ptr %i.kl, align 8, !tbaa !33
  %i.km = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  store i32 %i.kj, ptr %i.km, align 8, !tbaa !34
  br label %_ZN6LibRaw14selectCRXFrameEsj.exit244

bb.ap:                                            ; preds = %bb.an
  %i.kn = zext i32 %i.kj to i64
  %i.ko = add nsw i64 %.03961.i237, %i.kn
  %i.kp = add i32 %.14360.i238, 1
  %i.kq = add nuw i32 %.062.i236, 1               ; 2 uses
  %exitcond75.not.i240 = icmp eq i32 %i.kq, %i.kb
  br i1 %exitcond75.not.i240, label %._crit_edge.i241, label %.lr.ph.i235, !llvm.loop !1

._crit_edge.i241:                                 ; preds = %bb.ap, %.critedge.i231
  %.143.lcssa.i242 = phi i32 [ %.04265.i222, %.critedge.i231 ], [ %i.kc, %bb.ap ]
  %exitcond79.not.i243 = icmp eq i64 %indvars.iv.next77.i224, %wide.trip.count.i220
  br i1 %exitcond79.not.i243, label %_ZN6LibRaw14selectCRXFrameEsj.exit244, label %bb.ai, !llvm.loop !2

_ZN6LibRaw14selectCRXFrameEsj.exit244:            ; preds = %._crit_edge.i241, %.lr.ph.i235, %bb.ao, %.preheader.i217, %bb.ah
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !34 ; 12 uses
  %i.kt = icmp ugt i32 %i.ks, %.0154285
  br i1 %i.kt, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %_ZN6LibRaw14selectCRXFrameEsj.exit244
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !33 ; 9 uses
  store i64 %i.kv, ptr %i.gd, align 8, !tbaa !96
  store i32 %i.ks, ptr %i.ge, align 8, !tbaa !97
  %i.kw = load i32, ptr %i.gf, align 8, !tbaa !98 ; 10 uses
  %i.kx = icmp slt i32 %i.kw, 8
  br i1 %i.kx, label %.preheader250, label %.loopexit

.preheader250:                                    ; preds = %bb.aq
  %.not179282 = icmp sgt i32 %i.kw, 0
  br i1 %.not179282, label %.lr.ph284, label %.critedge

bb.ar:                                            ; preds = %.lr.ph284
  %exitcond336.not = icmp eq i32 %i.kw, 1
  br i1 %exitcond336.not, label %.critedge, label %.lr.ph284.1

.lr.ph284.1:                                      ; preds = %bb.ar
  %i.ky = load i64, ptr %i.gi, align 8, !tbaa !100
  %i.kz = icmp eq i64 %i.ky, %i.kv
  br i1 %i.kz, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %.lr.ph284.1
  %exitcond336.not.1 = icmp eq i32 %i.kw, 2
  br i1 %exitcond336.not.1, label %.critedge, label %.lr.ph284.2

.lr.ph284.2:                                      ; preds = %bb.as
  %i.la = load i64, ptr %i.gj, align 8, !tbaa !100
  %i.lb = icmp eq i64 %i.la, %i.kv
  br i1 %i.lb, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %.lr.ph284.2
  %exitcond336.not.2 = icmp eq i32 %i.kw, 3
  br i1 %exitcond336.not.2, label %.critedge, label %.lr.ph284.3

.lr.ph284.3:                                      ; preds = %bb.at
  %i.lc = load i64, ptr %i.gk, align 8, !tbaa !100
  %i.ld = icmp eq i64 %i.lc, %i.kv
  br i1 %i.ld, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %.lr.ph284.3
  %exitcond336.not.3 = icmp eq i32 %i.kw, 4
  br i1 %exitcond336.not.3, label %.critedge, label %.lr.ph284.4

.lr.ph284.4:                                      ; preds = %bb.au
  %i.le = load i64, ptr %i.gl, align 8, !tbaa !100
  %i.lf = icmp eq i64 %i.le, %i.kv
  br i1 %i.lf, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %.lr.ph284.4
  %exitcond336.not.4 = icmp eq i32 %i.kw, 5
  br i1 %exitcond336.not.4, label %.critedge, label %.lr.ph284.5

.lr.ph284.5:                                      ; preds = %bb.av
  %i.lg = load i64, ptr %i.gm, align 8, !tbaa !100
  %i.lh = icmp eq i64 %i.lg, %i.kv
  br i1 %i.lh, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph284.5
  %exitcond336.not.5 = icmp eq i32 %i.kw, 6
  br i1 %exitcond336.not.5, label %.critedge, label %.lr.ph284.6

.lr.ph284.6:                                      ; preds = %bb.aw
  %i.li = load i64, ptr %i.gn, align 8, !tbaa !100
  %i.lj = icmp eq i64 %i.li, %i.kv
  br i1 %i.lj, label %.loopexit, label %.critedge

.lr.ph284:                                        ; preds = %.preheader250
  %i.lk = load i64, ptr %i.gh, align 8, !tbaa !100
  %i.ll = icmp eq i64 %i.lk, %i.kv
  br i1 %i.ll, label %.loopexit, label %bb.ar

.critedge:                                        ; preds = %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %.lr.ph284.6, %.preheader250
  %i.lm = sext i32 %i.kw to i64
  %i.ln = getelementptr inbounds [32 x i8], ptr %i.gg, i64 %i.lm ; 7 uses
  store i32 4, ptr %i.ln, align 8, !tbaa !101
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  store i64 %i.kv, ptr %i.lo, align 8, !tbaa !100
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 %i.ks, ptr %i.lp, align 4, !tbaa !102
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store i16 -1, ptr %i.lq, align 8, !tbaa !103
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store i32 104, ptr %i.lr, align 8, !tbaa !104
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  store i16 0, ptr %i.ls, align 4, !tbaa !146
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 6
  store i16 0, ptr %i.lt, align 2, !tbaa !147
  %i.lu = add nsw i32 %i.kw, 1
  store i32 %i.lu, ptr %i.gf, align 8, !tbaa !98
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph284, %.lr.ph284.1, %.lr.ph284.2, %.lr.ph284.3, %.lr.ph284.4, %.lr.ph284.5, %.lr.ph284.6, %.critedge, %bb.x, %bb.aq, %_ZN6LibRaw14selectCRXFrameEsj.exit244, %_ZN6LibRaw14selectCRXFrameEsj.exit214
  %.1155 = phi i32 [ %.0154285, %_ZN6LibRaw14selectCRXFrameEsj.exit214 ], [ %.0154285, %bb.x ], [ %i.ks, %bb.aq ], [ %.0154285, %_ZN6LibRaw14selectCRXFrameEsj.exit244 ], [ %i.ks, %.critedge ], [ %i.ks, %.lr.ph284.6 ], [ %i.ks, %.lr.ph284.5 ], [ %i.ks, %.lr.ph284.4 ], [ %i.ks, %.lr.ph284.3 ], [ %i.ks, %.lr.ph284.2 ], [ %i.ks, %.lr.ph284.1 ], [ %i.ks, %.lr.ph284 ]
  %.1140 = phi i32 [ %i.jg, %_ZN6LibRaw14selectCRXFrameEsj.exit214 ], [ %.0139286, %bb.x ], [ %.0139286, %bb.aq ], [ %.0139286, %_ZN6LibRaw14selectCRXFrameEsj.exit244 ], [ %.0139286, %.critedge ], [ %.0139286, %.lr.ph284.6 ], [ %.0139286, %.lr.ph284.5 ], [ %.0139286, %.lr.ph284.4 ], [ %.0139286, %.lr.ph284.3 ], [ %.0139286, %.lr.ph284.2 ], [ %.0139286, %.lr.ph284.1 ], [ %.0139286, %.lr.ph284 ] ; 2 uses
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count342
  br i1 %exitcond343.not, label %._crit_edge291, label %bb.x, !llvm.loop !127

switch.lookup:                                    ; preds = %._crit_edge291
  %i.lv = zext nneg i32 %i.hm to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6LibRaw14selectCRXTrackEv, i64 %i.lv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %switch.load, ptr %i.lw, align 8, !tbaa !148
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge291, %switch.lookup
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 384216
  store i32 %.2.lcssa, ptr %i.lx, align 8, !tbaa !149
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 381712
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !150 ; 3 uses
  %.not301 = icmp eq i32 %i.lz, 0
  br i1 %.not301, label %._crit_edge298.thread, label %.lr.ph297.preheader

.lr.ph297.preheader:                              ; preds = %bb.ax
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.lz, i32 10)
  %wide.trip.count347 = zext nneg i32 %invariant.umin to i64 ; 2 uses
  %xtraiter466 = and i64 %wide.trip.count347, 3   ; 3 uses
  %i.ma = icmp ult i32 %i.lz, 4
  br i1 %i.ma, label %.lr.ph297.epil.preheader, label %.lr.ph297.preheader.new

.lr.ph297.preheader.new:                          ; preds = %.lr.ph297.preheader
  %unroll_iter471 = and i64 %wide.trip.count347, 12
  br label %.lr.ph297

._crit_edge298.unr-lcssa:                         ; preds = %.lr.ph297
  %lcmp.mod468.not = icmp eq i64 %xtraiter466, 0
  br i1 %lcmp.mod468.not, label %._crit_edge298, label %.lr.ph297.epil.preheader

.lr.ph297.epil.preheader:                         ; preds = %._crit_edge298.unr-lcssa, %.lr.ph297.preheader
  %indvars.iv344.epil.init = phi i64 [ 0, %.lr.ph297.preheader ], [ %indvars.iv.next345.3, %._crit_edge298.unr-lcssa ]
  %.0133294.epil.init = phi i64 [ 0, %.lr.ph297.preheader ], [ %spec.select184.3, %._crit_edge298.unr-lcssa ]
  %.0134293.epil.init = phi i32 [ -1, %.lr.ph297.preheader ], [ %spec.select183.3, %._crit_edge298.unr-lcssa ]
  %lcmp.mod470 = icmp ne i64 %xtraiter466, 0
  tail call void @llvm.assume(i1 %lcmp.mod470)
  br label %.lr.ph297.epil

.lr.ph297.epil:                                   ; preds = %.lr.ph297.epil, %.lr.ph297.epil.preheader
  %indvars.iv344.epil = phi i64 [ %indvars.iv344.epil.init, %.lr.ph297.epil.preheader ], [ %indvars.iv.next345.epil, %.lr.ph297.epil ] ; 3 uses
  %.0133294.epil = phi i64 [ %.0133294.epil.init, %.lr.ph297.epil.preheader ], [ %spec.select184.epil, %.lr.ph297.epil ] ; 2 uses
  %.0134293.epil = phi i32 [ %.0134293.epil.init, %.lr.ph297.epil.preheader ], [ %spec.select183.epil, %.lr.ph297.epil ]
  %epil.iter467 = phi i64 [ 0, %.lr.ph297.epil.preheader ], [ %epil.iter467.next, %.lr.ph297.epil ]
  %i.mb = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %indvars.iv344.epil
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 433516
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !152
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = mul nsw i64 %i.me, %i.me                ; 2 uses
  %i.mg = icmp samesign ugt i64 %i.mf, %.0133294.epil
  %i.mh = trunc nuw nsw i64 %indvars.iv344.epil to i32
  %spec.select183.epil = select i1 %i.mg, i32 %i.mh, i32 %.0134293.epil ; 2 uses
  %spec.select184.epil = tail call i64 @llvm.umax.i64(i64 %i.mf, i64 %.0133294.epil)
  %indvars.iv.next345.epil = add nuw nsw i64 %indvars.iv344.epil, 1
  %epil.iter467.next = add i64 %epil.iter467, 1   ; 2 uses
  %epil.iter467.cmp.not = icmp eq i64 %epil.iter467.next, %xtraiter466
  br i1 %epil.iter467.cmp.not, label %._crit_edge298, label %.lr.ph297.epil, !llvm.loop !128

._crit_edge298:                                   ; preds = %.lr.ph297.epil, %._crit_edge298.unr-lcssa
  %spec.select183.lcssa = phi i32 [ %spec.select183.3, %._crit_edge298.unr-lcssa ], [ %spec.select183.epil, %.lr.ph297.epil ] ; 2 uses
  %i.mi = icmp sgt i32 %spec.select183.lcssa, -1
  br i1 %i.mi, label %bb.ay, label %._crit_edge298.thread

.lr.ph297:                                        ; preds = %.lr.ph297, %.lr.ph297.preheader.new
  %indvars.iv344 = phi i64 [ 0, %.lr.ph297.preheader.new ], [ %indvars.iv.next345.3, %.lr.ph297 ] ; 6 uses
  %.0133294 = phi i64 [ 0, %.lr.ph297.preheader.new ], [ %spec.select184.3, %.lr.ph297 ] ; 2 uses
  %.0134293 = phi i32 [ -1, %.lr.ph297.preheader.new ], [ %spec.select183.3, %.lr.ph297 ]
  %niter472 = phi i64 [ 0, %.lr.ph297.preheader.new ], [ %niter472.next.3, %.lr.ph297 ]
  %i.mj = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %indvars.iv344
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 433516
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !152
  %i.mm = sext i32 %i.ml to i64                   ; 2 uses
  %i.mn = mul nsw i64 %i.mm, %i.mm                ; 2 uses
  %i.mo = icmp samesign ugt i64 %i.mn, %.0133294
  %i.mp = trunc nuw nsw i64 %indvars.iv344 to i32
  %spec.select183 = select i1 %i.mo, i32 %i.mp, i32 %.0134293
  %spec.select184 = tail call i64 @llvm.umax.i64(i64 %i.mn, i64 %.0133294) ; 2 uses
  %indvars.iv.next345 = or disjoint i64 %indvars.iv344, 1 ; 2 uses
  %i.mq = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %indvars.iv.next345
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 433516
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !152
  %i.mt = sext i32 %i.ms to i64                   ; 2 uses
  %i.mu = mul nsw i64 %i.mt, %i.mt                ; 2 uses
  %i.mv = icmp samesign ugt i64 %i.mu, %spec.select184
  %i.mw = trunc nuw nsw i64 %indvars.iv.next345 to i32
  %spec.select183.1 = select i1 %i.mv, i32 %i.mw, i32 %spec.select183
  %spec.select184.1 = tail call i64 @llvm.umax.i64(i64 %i.mu, i64 %spec.select184) ; 2 uses
  %indvars.iv.next345.1 = or disjoint i64 %indvars.iv344, 2 ; 2 uses
  %i.mx = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %indvars.iv.next345.1
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 433516
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !152
  %i.na = sext i32 %i.mz to i64                   ; 2 uses
  %i.nb = mul nsw i64 %i.na, %i.na                ; 2 uses
  %i.nc = icmp samesign ugt i64 %i.nb, %spec.select184.1
  %i.nd = trunc nuw nsw i64 %indvars.iv.next345.1 to i32
  %spec.select183.2 = select i1 %i.nc, i32 %i.nd, i32 %spec.select183.1
  %spec.select184.2 = tail call i64 @llvm.umax.i64(i64 %i.nb, i64 %spec.select184.1) ; 2 uses
  %indvars.iv.next345.2 = or disjoint i64 %indvars.iv344, 3 ; 2 uses
  %i.ne = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %indvars.iv.next345.2
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 433516
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !152
  %i.nh = sext i32 %i.ng to i64                   ; 2 uses
  %i.ni = mul nsw i64 %i.nh, %i.nh                ; 2 uses
  %i.nj = icmp samesign ugt i64 %i.ni, %spec.select184.2
  %i.nk = trunc nuw nsw i64 %indvars.iv.next345.2 to i32
  %spec.select183.3 = select i1 %i.nj, i32 %i.nk, i32 %spec.select183.2 ; 3 uses
  %spec.select184.3 = tail call i64 @llvm.umax.i64(i64 %i.ni, i64 %spec.select184.2) ; 2 uses
  %indvars.iv.next345.3 = add nuw nsw i64 %indvars.iv344, 4 ; 2 uses
  %niter472.next.3 = add i64 %niter472, 4         ; 2 uses
  %niter472.ncmp.3 = icmp eq i64 %niter472.next.3, %unroll_iter471
  br i1 %niter472.ncmp.3, label %._crit_edge298.unr-lcssa, label %.lr.ph297, !llvm.loop !129

bb.ay:                                            ; preds = %._crit_edge298
  %i.nl = zext nneg i32 %spec.select183.lcssa to i64
  %i.nm = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 433532
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !153
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.no, ptr %i.np, align 8, !tbaa !154
  br label %._crit_edge298.thread

._crit_edge298.thread:                            ; preds = %bb.ax, %bb.ay, %._crit_edge298
  %i.nq = icmp eq i32 %.1140, 1
  br i1 %i.nq, label %bb.az, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread

bb.az:                                            ; preds = %._crit_edge298.thread
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !32
  %.not176 = icmp eq i32 %i.ns, 0
  br i1 %.not176, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !32
  %.not177 = icmp eq i32 %i.nu, 0
  br i1 %.not177, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.ba
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> splat (float 1.024000e+03), ptr %i.nv, align 4, !tbaa !155
  br label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread

_ZN6LibRaw14selectCRXFrameEsj.exit.thread:        ; preds = %._crit_edge.i, %.lr.ph.i, %.preheader, %.preheader.i, %bb.p, %._crit_edge280, %._crit_edge298.thread, %bb.az, %bb.ba, %._crit_edge, %.epilog-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN6LibRaw14selectCRXFrameEsj.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define noundef range(i32 -13, 1) i32 @_ZN6LibRaw13parseCR3_CTMDEs(ptr noundef nonnull align 8 dereferenceable(768512) %0, i16 noundef signext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381728 ; 7 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !105
  store i16 18761, ptr %i.b, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 382168
  %i.e = sext i16 %1 to i64
  %i.f = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !95
  %.not = icmp eq i32 %i.h, 3
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34
  %i.k = icmp ugt i32 %i.j, 6
  br i1 %i.k, label %.lr.ph76, label %.thread

.lr.ph76:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 768280 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 768296
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384224 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph76, %.loopexit
  %.05875 = phi i32 [ 0, %.lr.ph76 ], [ %i.aj, %.loopexit ] ; 4 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !33
  %i.q = zext i32 %.05875 to i64                  ; 2 uses
  %i.r = add nsw i64 %i.p, %i.q
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s), !call_target !158
  %i.x = add nsw i64 %i.w, -6
  %i.y = icmp sgt i64 %i.r, %i.x
  br i1 %i.y, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
end_hunk_2
