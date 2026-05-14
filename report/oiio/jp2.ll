inline.NumInlined: 21
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i16 }
%struct.opj_jp2_box = type { i32, i32, i32 }
%struct.opj_jp2_img_header_writer_handler = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Failed to decode the codestream in the JP2 file\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Invalid number of components specified while setting up JP2 encoder\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Not enough memory when setup the JP2 encoder\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"Alpha channel specified but unknown enumcs. No cdef box will be created.\0A\00", align 1
@.str.4 = private unnamed_addr constant [93 x i8] c"Alpha channel specified but not enough image components for an automatic cdef box creation.\0A\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"Alpha channel position conflicts with color channel. No cdef box will be created.\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Multiple alpha channels specified. No cdef box will be created.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Not enough memory to setup the JP2 encoder\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"JP2H box missing. Required.\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"IHDR box_missing. Required.\0A\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"JP2 box which are after the codestream will not be read by this function.\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Invalid component index %d (>= %d).\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Incomplete channel definitions.\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Unexpected OOM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Invalid value for cmap[%d].mtyp = %d.\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"Invalid component/palette index for direct mapping %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Component %d is mapped twice.\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Direct use at #%d however pcol=%d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [101 x i8] c"Implementation limitation: for palette mapping, pcol[%d] should be equal to %d, but is equal to %d.\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Component %d doesn't have a mapping.\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"Component mapping seems wrong. Trying to correct.\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"image->comps[%d].data == NULL in opj_jp2_apply_pclr().\0A\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"Memory allocation failure in opj_jp2_apply_pclr().\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"opj_jp2_apply_cdef: cn=%d, numcomps=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"opj_jp2_apply_cdef: acn=%d, numcomps=%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Failed to seek in the stream.\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"Not enough memory to handle jpeg2000 file header\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"bad placed jpeg codestream\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Cannot handle box of undefined sizes\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"invalid box size %d (%x)\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"Found a misplaced '%c%c%c%c' box outside jp2h box\0A\00", align 1
@.str.31 = private unnamed_addr constant [66 x i8] c"JPEG2000 Header box not read yet, '%c%c%c%c' box will be ignored\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"Problem with skipping JPEG2000 box, stream error\0A\00", align 1
@.str.33 = private unnamed_addr constant [76 x i8] c"Invalid box size %d for box '%c%c%c%c'. Need %d bytes, %d bytes remaining \0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"Not enough memory to handle jpeg2000 box\0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"Problem with reading JPEG2000 box, stream error\0A\00", align 1
@.str.36 = private unnamed_addr constant [70 x i8] c"Malformed JP2 file format: first box must be JPEG 2000 signature box\0A\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"Malformed JP2 file format: second box must be file type box\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"Cannot handle box sizes higher than 2^32\0A\00", align 1
@jp2_header = internal unnamed_addr constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1783636000, [4 x i8] zeroinitializer, ptr @opj_jp2_read_jp }, { i32, [4 x i8], ptr } { i32 1718909296, [4 x i8] zeroinitializer, ptr @opj_jp2_read_ftyp }, { i32, [4 x i8], ptr } { i32 1785737832, [4 x i8] zeroinitializer, ptr @opj_jp2_read_jp2h }], align 16
@.str.40 = private unnamed_addr constant [54 x i8] c"The signature box must be the first box in the file.\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"Error with JP signature Box size\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"Error with JP Signature : bad magic number\0A\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"The ftyp box must be the second box in the file.\0A\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"Error with FTYP signature Box size\0A\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"Not enough memory with FTYP Box\0A\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"The  box must be the first box in the file.\0A\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"Stream error while reading JP2 Header box\0A\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c"Stream error while reading JP2 Header box: box length is inconsistent.\0A\00", align 1
@.str.49 = private unnamed_addr constant [59 x i8] c"Stream error while reading JP2 Header box: no 'ihdr' box.\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"Cannot handle box of less than 8 bytes\0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"Cannot handle XL box of less than 16 bytes\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"Box length is inconsistent.\0A\00", align 1
@jp2_img_header = internal unnamed_addr constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1768449138, [4 x i8] zeroinitializer, ptr @opj_jp2_read_ihdr }, { i32, [4 x i8], ptr } { i32 1668246642, [4 x i8] zeroinitializer, ptr @opj_jp2_read_colr }, { i32, [4 x i8], ptr } { i32 1651532643, [4 x i8] zeroinitializer, ptr @opj_jp2_read_bpcc }, { i32, [4 x i8], ptr } { i32 1885564018, [4 x i8] zeroinitializer, ptr @opj_jp2_read_pclr }, { i32, [4 x i8], ptr } { i32 1668112752, [4 x i8] zeroinitializer, ptr @opj_jp2_read_cmap }, { i32, [4 x i8], ptr } { i32 1667523942, [4 x i8] zeroinitializer, ptr @opj_jp2_read_cdef }], align 16
@.str.54 = private unnamed_addr constant [48 x i8] c"Ignoring ihdr box. First ihdr box already read\0A\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"Bad image header box (bad size)\0A\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"Wrong values for: w(%d) h(%d) numcomps(%d) (ihdr)\0A\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"Invalid number of components (ihdr)\0A\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"Not enough memory to handle image header (ihdr)\0A\00", align 1
@.str.59 = private unnamed_addr constant [90 x i8] c"JP2 IHDR box: compression type indicate that the file is not a conforming JP2 file (%d) \0A\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"Bad COLR header box (bad size)\0A\00", align 1
@.str.61 = private unnamed_addr constant [109 x i8] c"A conforming JP2 reader shall ignore all Colour Specification boxes after the first, so we ignore this one.\0A\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"Bad COLR header box (bad size: %d)\0A\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Not enough memory for cielab\0A\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"Bad COLR header box (CIELab, bad size: %d)\0A\00", align 1
@.str.65 = private unnamed_addr constant [106 x i8] c"COLR BOX meth value is not a regular value (%d), so we will ignore the entire Colour Specification box. \0A\00", align 1
@.str.66 = private unnamed_addr constant [114 x i8] c"A BPCC header box is available although BPC given by the IHDR box (%d) indicate components bit depth is constant\0A\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"Bad BPCC header box (bad size)\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"Invalid PCLR box. Reports %d entries\0A\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"Invalid PCLR box. Reports 0 palette columns\0A\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"Need to read a PCLR box before the CMAP box.\0A\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"Only one CMAP box is allowed.\0A\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"Insufficient data for CMAP box.\0A\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"Insufficient data for CDEF box.\0A\00", align 1
@.str.74 = private unnamed_addr constant [61 x i8] c"Number of channel description is equal to zero in CDEF box.\0A\00", align 1
@.str.75 = private unnamed_addr constant [39 x i8] c"Not enough memory to handle ftyp data\0A\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"Error while writing ftyp data to stream\0A\00", align 1
@.str.77 = private unnamed_addr constant [43 x i8] c"Not enough memory to hold JP2 Header data\0A\00", align 1
@.str.78 = private unnamed_addr constant [43 x i8] c"Stream error while writing JP2 Header box\0A\00", align 1
@switch.table.opj_jp2_setup_encoder = private unnamed_addr constant [3 x i32] [i32 3, i32 1, i32 3], align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_jp2_decode(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @opj_j2k_decode(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #7
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str) #7 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @opj_jp2_apply_color_postprocessing(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.d, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @opj_j2k_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_jp2_apply_color_postprocessing(ptr noundef captures(none) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.opj_image_comp, align 8     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %opj_jp2_check_color.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.c, label %opj_jp2_check_color.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %..loopexit_crit_edge.i, label %bb.d

..loopexit_crit_edge.i:                           ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 5 uses
  %.not159.i = icmp eq ptr %i.n, null
  br i1 %.not159.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %.not160.i = icmp eq ptr %i.p, null
  br i1 %.not160.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  %i.r = load i8, ptr %i.q, align 2, !tbaa !34
  %i.s = zext i8 %i.r to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0141.i = phi i32 [ %i.s, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.d ] ; 6 uses
  %.not220.i = icmp eq i16 %i.j, 0
  br i1 %.not220.i, label %.preheader190.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext i16 %i.j to i64       ; 2 uses
  br label %.lr.ph.i

.preheader190.i:                                  ; preds = %bb.g
  %.not161200.i = icmp eq i32 %.0141.i, 0
  br i1 %.not161200.i, label %.loopexit.i, label %.split.us.i

.preheader189.us.i:                               ; preds = %bb.m, %._crit_edge.us.i
  %.1142201.us.i = phi i32 [ %i.t, %._crit_edge.us.i ], [ %.0141.i, %bb.m ]
  %i.t = add i32 %.1142201.us.i, -1               ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader189.us.i
  %indvars.iv232.i = phi i64 [ 0, %.preheader189.us.i ], [ %indvars.iv.next233.i, %bb.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %indvars.iv232.i
  %i.v = load i16, ptr %i.u, align 2, !tbaa !35
  %i.w = zext i16 %i.v to i32
  %i.x = icmp eq i32 %i.t, %i.w
  br i1 %i.x, label %._crit_edge.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count.i
  br i1 %exitcond236.not.i, label %.split.us.i, label %bb.h, !llvm.loop !37

._crit_edge.us.i:                                 ; preds = %bb.h
  %.not161.us.i = icmp eq i32 %i.t, 0
  br i1 %.not161.us.i, label %.loopexit.i, label %.preheader189.us.i, !llvm.loop !39

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.y = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !35
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %.not162.i = icmp ugt i32 %.0141.i, %i.aa
  br i1 %.not162.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ab = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.aa, i32 noundef %.0141.i) #7 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

bb.k:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !40 ; 2 uses
  %i.ae = add i16 %i.ad, 1
  %switch.i = icmp ult i16 %i.ae, 2
  %i.af = zext i16 %i.ad to i32
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  %.not164.i = icmp ult i32 %i.ag, %.0141.i
  %or.cond219.i = select i1 %switch.i, i1 true, i1 %.not164.i
  br i1 %or.cond219.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.ag, i32 noundef %.0141.i) #7 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

bb.m:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader189.us.i, label %.lr.ph.i, !llvm.loop !41

.split.us.i:                                      ; preds = %bb.i, %.preheader190.i
  %i.ai = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.12) #7 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

.loopexit.i:                                      ; preds = %._crit_edge.us.i, %.preheader190.i, %..loopexit_crit_edge.i
  %i.aj = phi ptr [ %.pre.i, %..loopexit_crit_edge.i ], [ %i.n, %.preheader190.i ], [ %i.n, %._crit_edge.us.i ] ; 3 uses
  %.not165.i = icmp eq ptr %i.aj, null
  br i1 %.not165.i, label %opj_jp2_check_color.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 13 uses
  %.not166.i = icmp eq ptr %i.al, null
  br i1 %.not166.i, label %opj_jp2_check_color.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 34
  %i.an = load i8, ptr %i.am, align 2, !tbaa !34  ; 4 uses
  %.not222.i = icmp eq i8 %i.an, 0
  br i1 %.not222.i, label %._crit_edge.thread.i, label %.lr.ph204.i

.lr.ph204.i:                                      ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.trip.count240.i = zext i8 %i.an to i64    ; 8 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph204.i
  %indvars.iv237.i = phi i64 [ 0, %.lr.ph204.i ], [ %indvars.iv.next238.i, %bb.r ] ; 2 uses
  %.0134202.i = phi i32 [ 1, %.lr.ph204.i ], [ %.1135.i, %bb.r ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv237.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !42
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %.not176.i = icmp ugt i32 %i.as, %i.ar
  br i1 %.not176.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.ar, i32 noundef %i.as) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1135.i = phi i32 [ 0, %bb.q ], [ %.0134202.i, %bb.p ] ; 2 uses
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %._crit_edge.i, label %bb.p, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.r
  %i.au = tail call ptr @opj_calloc(i64 noundef %wide.trip.count240.i, i64 noundef 4) #7 ; 9 uses
  %.not167.i = icmp eq ptr %i.au, null
  br i1 %.not167.i, label %.critedge182.i, label %.lr.ph208.i

._crit_edge.thread.i:                             ; preds = %bb.o
  %i.av = tail call ptr @opj_calloc(i64 noundef 0, i64 noundef 4) #7 ; 2 uses
  %.not167279.i = icmp eq ptr %i.av, null
  br i1 %.not167279.i, label %.critedge182.i, label %opj_jp2_check_color.exit.sink.split

.critedge182.i:                                   ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %i.aw = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.13) #7 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

.lr.ph208.i:                                      ; preds = %._crit_edge.i, %bb.ac
  %indvars.iv242.i = phi i64 [ %indvars.iv.next243.i, %bb.ac ], [ 0, %._crit_edge.i ] ; 3 uses
  %.2136206.i = phi i32 [ %.3137.i, %bb.ac ], [ %.1135.i, %._crit_edge.i ]
  %indvars87 = trunc i64 %indvars.iv242.i to i32  ; 5 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv242.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !45  ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !46  ; 4 uses
  %or.cond.i = icmp ugt i8 %i.az, 1
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph208.i
  %i.bc = zext i8 %i.az to i32
  %i.bd = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %indvars87, i32 noundef %i.bc) #7 ; 0 uses
  br label %bb.ac

bb.t:                                             ; preds = %.lr.ph208.i
  %i.be = zext i8 %i.bb to i32                    ; 5 uses
  %.not174.i = icmp ult i8 %i.bb, %i.an
  br i1 %.not174.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %i.be) #7 ; 0 uses
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
end_hunk_0
begin_hunk_1_@opj_jp2_apply_color_postprocessing:bb.a
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next177.i.1
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !3
  %indvars.iv.next177.i.2 = add nuw nsw i64 %indvars.iv176.i, 3 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next177.i.2
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next177.i.2
  store i32 %i.in, ptr %i.io, align 4, !tbaa !3
  %indvars.iv.next177.i.3 = add nuw nsw i64 %indvars.iv176.i, 4 ; 2 uses
  %exitcond180.not.i.3 = icmp eq i64 %indvars.iv.next177.i.3, %wide.trip.count179.i
  br i1 %exitcond180.not.i.3, label %.loopexit.i34, label %.lr.ph144.i, !llvm.loop !72

bb.au:                                            ; preds = %.lr.ph147.i
  %i.ip = zext i8 %i.ha to i64
  %i.iq = getelementptr inbounds nuw [64 x i8], ptr %i.fg, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !58 ; 3 uses
  %.not160.i33 = icmp eq i32 %i.hl, 0
  br i1 %.not160.i33, label %.loopexit.i34, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %bb.au
  %i.it = zext i8 %i.ha to i32                    ; 3 uses
  %wide.trip.count174.i = zext i32 %i.hl to i64   ; 2 uses
  %xtraiter196 = and i64 %wide.trip.count174.i, 1
  %i.iu = icmp eq i32 %i.hl, 1
  br i1 %i.iu, label %.epil.preheader195, label %.lr.ph141.i.new

.lr.ph141.i.new:                                  ; preds = %.lr.ph141.i
  %unroll_iter200 = and i64 %wide.trip.count174.i, 4294967294
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph141.i.new
  %indvars.iv171.i = phi i64 [ 0, %.lr.ph141.i.new ], [ %indvars.iv.next172.i.1, %bb.av ] ; 4 uses
  %niter201 = phi i64 [ 0, %.lr.ph141.i.new ], [ %niter201.next.1, %bb.av ]
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv171.i
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !3  ; 2 uses
  %i.ix = icmp slt i32 %i.iw, 0
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.iw, i32 %i.gw)
  %.0111.i = select i1 %i.ix, i32 0, i32 %spec.select.i
  %i.iy = mul nsw i32 %.0111.i, %i.em
  %i.iz = add nsw i32 %i.iy, %i.it
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv171.i
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !3
  %indvars.iv.next172.i = or disjoint i64 %indvars.iv171.i, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next172.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !3  ; 2 uses
  %i.jg = icmp slt i32 %i.jf, 0
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %i.jf, i32 %i.gw)
  %.0111.i.1 = select i1 %i.jg, i32 0, i32 %spec.select.i.1
  %i.jh = mul nsw i32 %.0111.i.1, %i.em
  %i.ji = add nsw i32 %i.jh, %i.it
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next172.i
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !3
  %indvars.iv.next172.i.1 = add nuw nsw i64 %indvars.iv171.i, 2 ; 2 uses
  %niter201.next.1 = add i64 %niter201, 2         ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %.loopexit.i34.loopexit181.unr-lcssa, label %bb.av, !llvm.loop !73

.loopexit.i34.loopexit181.unr-lcssa:              ; preds = %bb.av
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %.loopexit.i34, label %.epil.preheader195

.epil.preheader195:                               ; preds = %.loopexit.i34.loopexit181.unr-lcssa, %.lr.ph141.i
  %indvars.iv171.i.epil.init = phi i64 [ 0, %.lr.ph141.i ], [ %indvars.iv.next172.i.1, %.loopexit.i34.loopexit181.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i32 %i.hl to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv171.i.epil.init
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !3  ; 2 uses
  %i.jp = icmp slt i32 %i.jo, 0
  %spec.select.i.epil = tail call i32 @llvm.smin.i32(i32 %i.jo, i32 %i.gw)
  %.0111.i.epil = select i1 %i.jp, i32 0, i32 %spec.select.i.epil
  %i.jq = mul nsw i32 %.0111.i.epil, %i.em
  %i.jr = add nsw i32 %i.jq, %i.it
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv171.i.epil.init
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !3
  br label %.loopexit.i34

.loopexit.i34:                                    ; preds = %.epil.preheader195, %.loopexit.i34.loopexit181.unr-lcssa, %.lr.ph144.i.prol.loopexit, %.lr.ph144.i, %middle.block, %bb.au, %bb.at
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next182.i, %i.fe
  br i1 %exitcond185.not.i, label %._crit_edge148.i, label %.lr.ph147.i, !llvm.loop !74

._crit_edge148.i:                                 ; preds = %.loopexit.i34, %._crit_edge.thread.i37
  %i.jw = phi ptr [ %i.fh, %._crit_edge.thread.i37 ], [ %i.fg, %.loopexit.i34 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !28 ; 2 uses
  %.not162.i35 = icmp eq i32 %i.jy, 0
  br i1 %.not162.i35, label %opj_jp2_apply_pclr.exit, label %.lr.ph151.preheader.i

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %wide.trip.count189.i = zext i32 %i.jy to i64
  br label %.lr.ph151.i

.lr.ph151.i:                                      ; preds = %bb.ax, %.lr.ph151.preheader.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph151.preheader.i ], [ %indvars.iv.next187.i, %bb.ax ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %indvars.iv186.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !58 ; 2 uses
  %.not122.i = icmp eq ptr %i.kb, null
  br i1 %.not122.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph151.i
  tail call void @opj_image_data_free(ptr noundef nonnull %i.kb) #7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph151.i
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count189.i
  br i1 %exitcond190.not.i, label %opj_jp2_apply_pclr.exit, label %.lr.ph151.i, !llvm.loop !75

opj_jp2_apply_pclr.exit:                          ; preds = %bb.ax, %._crit_edge148.i
  tail call void @opj_free(ptr noundef %.pre.i25) #7
  store ptr %i.jw, ptr %.phi.trans.insert.i24, align 8, !tbaa !57
  store i32 %i.em, ptr %i.jx, align 8, !tbaa !28
  br label %bb.ay

bb.ay:                                            ; preds = %opj_jp2_apply_pclr.exit, %opj_jp2_free_pclr.exit, %opj_jp2_check_color.exit
  %i.kc = load ptr, ptr %i.f, align 8, !tbaa !76  ; 4 uses
  %.not21 = icmp eq ptr %i.kc, null
  br i1 %.not21, label %opj_jp2_check_color.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !23 ; 11 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kf = load i16, ptr %i.ke, align 8, !tbaa !27 ; 4 uses
  %.not84.i = icmp eq i16 %i.kf, 0
  br i1 %.not84.i, label %._crit_edge83.i, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %bb.az
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ki = zext i16 %i.kf to i64                   ; 2 uses
  %i.kj = add i16 %i.kf, -2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bm, %.lr.ph82.i
  %indvars.iv88.i = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next89.i, %bb.bm ] ; 4 uses
  %indvars.iv.i38 = phi i64 [ 1, %.lr.ph82.i ], [ %indvars.iv.next.i39, %bb.bm ] ; 4 uses
  %i.kk = trunc i64 %indvars.iv88.i to i16
  %i.kl = sub i16 %i.kj, %i.kk                    ; 2 uses
  %i.km = zext i16 %i.kl to i64
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %i.ko = getelementptr inbounds nuw [6 x i8], ptr %i.kd, i64 %indvars.iv88.i ; 5 uses
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !35 ; 8 uses
  %i.kq = zext i16 %i.kp to i32                   ; 2 uses
  %i.kr = load i32, ptr %i.kg, align 8, !tbaa !28 ; 4 uses
  %.not74.i = icmp ugt i32 %i.kr, %i.kq
  br i1 %.not74.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ks = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %i.kq, i32 noundef %i.kr) #7 ; 0 uses
  br label %bb.bm

bb.bc:                                            ; preds = %bb.ba
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !40 ; 2 uses
  %i.kv = add i16 %i.ku, 1
  %or.cond.i42 = icmp ult i16 %i.kv, 2
  br i1 %or.cond.i42, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !77
  %i.ky = load ptr, ptr %i.kh, align 8, !tbaa !57
  %i.kz = zext i16 %i.kp to i64
  %i.la = getelementptr inbounds nuw [64 x i8], ptr %i.ky, i64 %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  store i16 %i.kx, ptr %i.lb, align 8, !tbaa !78
  br label %bb.bm

bb.be:                                            ; preds = %bb.bc
  %i.lc = add i16 %i.ku, -1                       ; 6 uses
  %i.ld = zext i16 %i.lc to i32                   ; 2 uses
  %.not75.i = icmp ugt i32 %i.kr, %i.ld
  br i1 %.not75.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.le = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %i.ld, i32 noundef %i.kr) #7 ; 0 uses
  br label %bb.bm

bb.bg:                                            ; preds = %bb.be
  %.not76.i = icmp eq i16 %i.kp, %i.lc
  br i1 %.not76.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !77
  %i.lh = icmp eq i16 %i.lg, 0
  br i1 %i.lh, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.li = load ptr, ptr %i.kh, align 8, !tbaa !57 ; 2 uses
  %i.lj = zext i16 %i.kp to i64
  %i.lk = getelementptr inbounds nuw [64 x i8], ptr %i.li, i64 %i.lj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.lk, i64 64, i1 false)
  %i.ll = zext i16 %i.lc to i64                   ; 2 uses
  %i.lm = getelementptr inbounds nuw [64 x i8], ptr %i.li, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lk, ptr noundef nonnull align 8 dereferenceable(64) %i.lm, i64 64, i1 false)
  %i.ln = load ptr, ptr %i.kh, align 8, !tbaa !57
  %i.lo = getelementptr inbounds nuw [64 x i8], ptr %i.ln, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lo, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %i.lp = add nuw nsw i64 %indvars.iv88.i, 1
  %i.lq = icmp samesign ult i64 %i.lp, %i.ki
  br i1 %i.lq, label %.lr.ph.i44.preheader, label %._crit_edge.i43

.lr.ph.i44.preheader:                             ; preds = %bb.bi
  %min.iters.check155 = icmp ult i16 %i.kl, 8
  br i1 %min.iters.check155, label %.lr.ph.i44.preheader180, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i44.preheader
  %n.mod.vf157 = and i64 %i.kn, 7                 ; 2 uses
  %i.lr = icmp eq i64 %n.mod.vf157, 0
  %i.ls = select i1 %i.lr, i64 8, i64 %n.mod.vf157
  %n.vec158 = sub nsw i64 %i.kn, %i.ls            ; 2 uses
  %i.lt = add i64 %indvars.iv.i38, %n.vec158
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kp, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert159 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat160 = shufflevector <8 x i16> %broadcast.splatinsert159, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %pred.store.continue176, %vector.ph156
  %index162 = phi i64 [ 0, %vector.ph156 ], [ %index.next177, %pred.store.continue176 ] ; 2 uses
  %i.lu = add i64 %indvars.iv.i38, %index162      ; 8 uses
  %i.lv = getelementptr inbounds nuw [6 x i8], ptr %i.kd, i64 %i.lu ; 2 uses
  %i.lw = getelementptr [6 x i8], ptr %i.kd, i64 %i.lu
  %i.lx = getelementptr i8, ptr %i.lw, i64 6      ; 2 uses
  %i.ly = getelementptr [6 x i8], ptr %i.kd, i64 %i.lu
  %i.lz = getelementptr i8, ptr %i.ly, i64 12     ; 2 uses
  %i.ma = getelementptr [6 x i8], ptr %i.kd, i64 %i.lu
  %i.mb = getelementptr i8, ptr %i.ma, i64 18     ; 2 uses
  %i.mc = getelementptr [6 x i8], ptr %i.kd, i64 %i.lu
  %i.md = getelementptr i8, ptr %i.mc, i64 24     ; 2 uses
  %i.me = getelementptr [6 x i8], ptr %i.kd, i64 %i.lu
  %i.mf = getelementptr i8, ptr %i.me, i64 30     ; 2 uses
  %i.mg = getelementptr [6 x i8], ptr %i.kd, i64 %i.lu
  %i.mh = getelementptr i8, ptr %i.mg, i64 36     ; 2 uses
  %i.mi = getelementptr [6 x i8], ptr %i.kd, i64 %i.lu
  %i.mj = getelementptr i8, ptr %i.mi, i64 42     ; 2 uses
  %i.mk = load i16, ptr %i.lv, align 2, !tbaa !35
  %i.ml = load i16, ptr %i.lx, align 2, !tbaa !35
  %i.mm = load i16, ptr %i.lz, align 2, !tbaa !35
  %i.mn = load i16, ptr %i.mb, align 2, !tbaa !35
  %i.mo = load i16, ptr %i.md, align 2, !tbaa !35
  %i.mp = load i16, ptr %i.mf, align 2, !tbaa !35
  %i.mq = load i16, ptr %i.mh, align 2, !tbaa !35
  %i.mr = load i16, ptr %i.mj, align 2, !tbaa !35
  %i.ms = insertelement <8 x i16> poison, i16 %i.mk, i64 0
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 1
  %i.mu = insertelement <8 x i16> %i.mt, i16 %i.mm, i64 2
  %i.mv = insertelement <8 x i16> %i.mu, i16 %i.mn, i64 3
  %i.mw = insertelement <8 x i16> %i.mv, i16 %i.mo, i64 4
  %i.mx = insertelement <8 x i16> %i.mw, i16 %i.mp, i64 5
  %i.my = insertelement <8 x i16> %i.mx, i16 %i.mq, i64 6
  %i.mz = insertelement <8 x i16> %i.my, i16 %i.mr, i64 7 ; 2 uses
  %i.na = icmp eq <8 x i16> %i.mz, %broadcast.splat ; 2 uses
  %i.nb = icmp eq <8 x i16> %i.mz, %broadcast.splat160
  %i.nc = or <8 x i1> %i.nb, %i.na                ; 8 uses
  %predphi = select <8 x i1> %i.na, <8 x i16> %broadcast.splat160, <8 x i16> %broadcast.splat ; 8 uses
  %i.nd = extractelement <8 x i1> %i.nc, i64 0
  br i1 %i.nd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body161
  %i.ne = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.ne, ptr %i.lv, align 2, !tbaa !35
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body161
  %i.nf = extractelement <8 x i1> %i.nc, i64 1
  br i1 %i.nf, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue
  %i.ng = extractelement <8 x i16> %predphi, i64 1
  store i16 %i.ng, ptr %i.lx, align 2, !tbaa !35
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue
  %i.nh = extractelement <8 x i1> %i.nc, i64 2
  br i1 %i.nh, label %pred.store.if165, label %pred.store.continue166

pred.store.if165:                                 ; preds = %pred.store.continue164
  %i.ni = extractelement <8 x i16> %predphi, i64 2
  store i16 %i.ni, ptr %i.lz, align 2, !tbaa !35
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.if165, %pred.store.continue164
  %i.nj = extractelement <8 x i1> %i.nc, i64 3
  br i1 %i.nj, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %pred.store.continue166
  %i.nk = extractelement <8 x i16> %predphi, i64 3
  store i16 %i.nk, ptr %i.mb, align 2, !tbaa !35
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue166
  %i.nl = extractelement <8 x i1> %i.nc, i64 4
  br i1 %i.nl, label %pred.store.if169, label %pred.store.continue170

pred.store.if169:                                 ; preds = %pred.store.continue168
  %i.nm = extractelement <8 x i16> %predphi, i64 4
  store i16 %i.nm, ptr %i.md, align 2, !tbaa !35
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.nn = extractelement <8 x i1> %i.nc, i64 5
  br i1 %i.nn, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %pred.store.continue170
  %i.no = extractelement <8 x i16> %predphi, i64 5
  store i16 %i.no, ptr %i.mf, align 2, !tbaa !35
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %pred.store.continue170
  %i.np = extractelement <8 x i1> %i.nc, i64 6
  br i1 %i.np, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  %i.nq = extractelement <8 x i16> %predphi, i64 6
  store i16 %i.nq, ptr %i.mh, align 2, !tbaa !35
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %i.nr = extractelement <8 x i1> %i.nc, i64 7
  br i1 %i.nr, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %pred.store.continue174
  %i.ns = extractelement <8 x i16> %predphi, i64 7
  store i16 %i.ns, ptr %i.mj, align 2, !tbaa !35
  br label %pred.store.continue176

pred.store.continue176:                           ; preds = %pred.store.if175, %pred.store.continue174
  %index.next177 = add nuw i64 %index162, 8       ; 2 uses
  %i.nt = icmp eq i64 %index.next177, %n.vec158
  br i1 %i.nt, label %.lr.ph.i44.preheader180, label %vector.body161, !llvm.loop !79

.lr.ph.i44.preheader180:                          ; preds = %pred.store.continue176, %.lr.ph.i44.preheader
  %indvars.iv85.i.ph = phi i64 [ %indvars.iv.i38, %.lr.ph.i44.preheader ], [ %i.lt, %pred.store.continue176 ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader180, %bb.bk
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %bb.bk ], [ %indvars.iv85.i.ph, %.lr.ph.i44.preheader180 ] ; 2 uses
  %i.nu = getelementptr inbounds nuw [6 x i8], ptr %i.kd, i64 %indvars.iv85.i ; 2 uses
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !35 ; 2 uses
  %i.nw = icmp eq i16 %i.nv, %i.kp
  br i1 %i.nw, label %.sink.split.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i44
  %i.nx = icmp eq i16 %i.nv, %i.lc
  br i1 %i.nx, label %.sink.split.i, label %bb.bk

.sink.split.i:                                    ; preds = %bb.bj, %.lr.ph.i44
  %.sink.i = phi i16 [ %i.lc, %.lr.ph.i44 ], [ %i.kp, %bb.bj ]
  store i16 %.sink.i, ptr %i.nu, align 2, !tbaa !35
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %bb.bj
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next86.i to i16
  %exitcond89 = icmp eq i16 %i.kf, %lftr.wideiv
  br i1 %exitcond89, label %._crit_edge.i43, label %.lr.ph.i44, !llvm.loop !80

._crit_edge.i43:                                  ; preds = %bb.bk, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i43, %bb.bh, %bb.bg
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !77
  %i.oa = load ptr, ptr %i.kh, align 8, !tbaa !57
  %i.ob = zext i16 %i.kp to i64
  %i.oc = getelementptr inbounds nuw [64 x i8], ptr %i.oa, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 56
  store i16 %i.nz, ptr %i.od, align 8, !tbaa !78
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bf, %bb.bd, %bb.bb
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %i.ki
  br i1 %exitcond92.not.i, label %._crit_edge83.loopexit.i, label %bb.ba, !llvm.loop !81

._crit_edge83.loopexit.i:                         ; preds = %bb.bm
  %.pre.i40 = load ptr, ptr %i.f, align 8, !tbaa !21 ; 2 uses
  %.pre93.i = load ptr, ptr %.pre.i40, align 8, !tbaa !23
  br label %._crit_edge83.i

._crit_edge83.i:                                  ; preds = %._crit_edge83.loopexit.i, %bb.az
  %i.oe = phi ptr [ %.pre93.i, %._crit_edge83.loopexit.i ], [ %i.kd, %bb.az ] ; 2 uses
  %i.of = phi ptr [ %.pre.i40, %._crit_edge83.loopexit.i ], [ %i.kc, %bb.az ]
  %.not.i41 = icmp eq ptr %i.oe, null
  br i1 %.not.i41, label %opj_jp2_apply_cdef.exit, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge83.i
  tail call void @opj_free(ptr noundef nonnull %i.oe) #7
  %.pre94.i = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %opj_jp2_apply_cdef.exit

opj_jp2_apply_cdef.exit:                          ; preds = %._crit_edge83.i, %bb.bn
  %i.og = phi ptr [ %.pre94.i, %bb.bn ], [ %i.of, %._crit_edge83.i ]
  tail call void @opj_free(ptr noundef %i.og) #7
  store ptr null, ptr %i.f, align 8, !tbaa !21
  br label %opj_jp2_check_color.exit.thread

opj_jp2_check_color.exit.thread:                  ; preds = %bb.ap, %._crit_edge156.i, %._crit_edge, %bb.l, %.split.us.i, %.critedge182.i, %.critedge180.thread184.i, %bb.j, %bb.b, %opj_jp2_apply_cdef.exit, %bb.ay, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.l ], [ 1, %bb.b ], [ 1, %bb.ay ], [ 1, %opj_jp2_apply_cdef.exit ], [ 0, %bb.j ], [ 0, %.critedge180.thread184.i ], [ 0, %.critedge182.i ], [ 0, %.split.us.i ], [ 0, %._crit_edge ], [ 0, %._crit_edge156.i ], [ 0, %bb.ap ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @opj_jp2_setup_decoder(ptr noundef captures(none) initializes((160, 161), (168, 172)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  tail call void @opj_j2k_setup_decoder(ptr noundef %i.a, ptr noundef %1) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8248
  %i.d = load i32, ptr %i.c, align 4, !tbaa !83
  %i.e = and i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.e, ptr %i.f, align 8, !tbaa !20
  ret void
}

declare void @opj_j2k_setup_decoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @opj_jp2_decoder_set_strict_mode(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  tail call void @opj_j2k_decoder_set_strict_mode(ptr noundef %i.a, i32 noundef %1) #7
  ret void
}

declare void @opj_j2k_decoder_set_strict_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_set_threads(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @opj_j2k_set_threads(ptr noundef %i.a, i32 noundef %1) #7
  ret i32 %i.b
}

declare i32 @opj_j2k_set_threads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_jp2_setup_encoder(ptr noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %i.f = add i32 %i.e, -16385
  %or.cond170 = icmp ult i32 %i.f, -16384
  br i1 %or.cond170, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.1) #7 ; 0 uses
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !7
  %i.i = tail call i32 @opj_j2k_setup_encoder(ptr noundef %i.h, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #7
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.af, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1785737760, ptr %i.k, align 4, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.l, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 1, ptr %i.m, align 4, !tbaa !87
  %i.n = tail call ptr @opj_malloc(i64 noundef 4) #7 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.n, ptr %i.o, align 8, !tbaa !88
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  store i32 1785737760, ptr %i.n, align 4, !tbaa !3
  %i.q = load i32, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.q, ptr %i.r, align 8, !tbaa !89
  %i.s = zext i32 %i.q to i64
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call ptr @opj_malloc(i64 noundef %i.t) #7 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.u, ptr %i.v, align 8, !tbaa !90
  %.not160 = icmp eq ptr %i.u, null
  br i1 %.not160, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %bb.af

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load <2 x i32>, ptr %i.x, align 8, !tbaa !3
  %i.aa = load <2 x i32>, ptr %2, align 8, !tbaa !3
  %i.ab = sub <2 x i32> %i.z, %i.aa
  store <2 x i32> %i.ab, ptr %i.y, align 8, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !64 ; 4 uses
  %i.ag = add i32 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !65
  %i.aj = shl i32 %i.ai, 7
  %i.ak = add i32 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !91
  %i.am = load i32, ptr %i.d, align 8, !tbaa !28  ; 7 uses
  %i.an = icmp ugt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext i32 %i.am to i64
  %i.ao = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ao, 1
  %i.ap = icmp eq i32 %i.am, 2
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ao, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !64
  %.not169 = icmp eq i32 %i.af, %i.as
  br i1 %.not169, label %.lr.ph.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  store i32 255, ptr %i.al, align 4, !tbaa !91
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.j, %.lr.ph
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load i32, ptr %i.au, align 8, !tbaa !64
  %.not169.1 = icmp eq i32 %i.af, %i.av
  br i1 %.not169.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.1
  store i32 255, ptr %i.al, align 4, !tbaa !91
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
end_hunk_1
