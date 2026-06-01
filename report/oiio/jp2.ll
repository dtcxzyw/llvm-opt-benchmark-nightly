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
@switch.table.opj_jp2_read_header = private unnamed_addr constant [13 x i32] [i32 5, i32 -1, i32 -1, i32 -1, i32 1, i32 2, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 4], align 4

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
end_hunk_0
begin_hunk_1_@opj_jp2_start_compress:bb.a
bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !115
  %i.q = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %i.p, ptr noundef nonnull @opj_jp2_write_ftyp, ptr noundef %3) #7
  %.not11.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i, label %opj_jp2_setup_header_writing.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !115
  %i.s = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %i.r, ptr noundef nonnull @opj_jp2_write_jp2h, ptr noundef %3) #7
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %opj_jp2_setup_header_writing.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i32, ptr %i.t, align 8, !tbaa !114
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %opj_jp2_setup_header_writing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !115
  %i.w = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %i.v, ptr noundef nonnull @opj_jpip_skip_iptr, ptr noundef %3) #7
  %.not14.i = icmp eq i32 %i.w, 0
  br i1 %.not14.i, label %opj_jp2_setup_header_writing.exit.thread, label %opj_jp2_setup_header_writing.exit

opj_jp2_setup_header_writing.exit:                ; preds = %bb.h, %bb.i
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !115
  %i.y = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %i.x, ptr noundef nonnull @opj_jp2_skip_jp2c, ptr noundef %3) #7
  %.not15.i.not = icmp eq i32 %i.y, 0
  br i1 %.not15.i.not, label %opj_jp2_setup_header_writing.exit.thread, label %bb.j

bb.j:                                             ; preds = %opj_jp2_setup_header_writing.exit
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !115  ; 4 uses
  %i.aa = tail call i32 @opj_procedure_list_get_nb_procedures(ptr noundef %i.z) #7 ; 2 uses
  %i.ab = tail call ptr @opj_procedure_list_get_first_procedure(ptr noundef %i.z) #7
  %.not17.i22 = icmp eq i32 %i.aa, 0
  br i1 %.not17.i22, label %opj_jp2_exec.exit30.thread, label %.lr.ph.i23

opj_jp2_exec.exit30.thread:                       ; preds = %bb.j
  tail call void @opj_procedure_list_clear(ptr noundef %i.z) #7
  br label %bb.m

.lr.ph.i23:                                       ; preds = %bb.j, %bb.l
  %.016.i24 = phi i32 [ %i.ai, %bb.l ], [ 0, %bb.j ]
  %.01215.i25 = phi ptr [ %i.ah, %bb.l ], [ %i.ab, %bb.j ] ; 2 uses
  %.01314.i26 = phi i32 [ %i.ag, %bb.l ], [ 1, %bb.j ]
  %.not.i27 = icmp eq i32 %.01314.i26, 0
  br i1 %.not.i27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i23
  %i.ac = load ptr, ptr %.01215.i25, align 8, !tbaa !116
  %i.ad = tail call i32 %i.ac(ptr noundef %0, ptr noundef %1, ptr noundef %3) #7, !inline_history !117
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i23
  %i.ag = phi i32 [ 0, %.lr.ph.i23 ], [ %i.af, %bb.k ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01215.i25, i64 8
  %i.ai = add nuw i32 %.016.i24, 1                ; 2 uses
  %exitcond.not.i28 = icmp eq i32 %i.ai, %i.aa
  br i1 %exitcond.not.i28, label %opj_jp2_exec.exit30, label %.lr.ph.i23, !llvm.loop !118

opj_jp2_exec.exit30:                              ; preds = %bb.l
  tail call void @opj_procedure_list_clear(ptr noundef %i.z) #7
  %.not18 = icmp eq i32 %i.ag, 0
  br i1 %.not18, label %opj_jp2_setup_header_writing.exit.thread, label %bb.m

bb.m:                                             ; preds = %opj_jp2_exec.exit30.thread, %opj_jp2_exec.exit30
  %i.aj = load ptr, ptr %0, align 8, !tbaa !7
  %i.ak = tail call i32 @opj_j2k_start_compress(ptr noundef %i.aj, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  br label %opj_jp2_setup_header_writing.exit.thread

opj_jp2_setup_header_writing.exit.thread:         ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %opj_jp2_exec.exit30, %opj_jp2_setup_header_writing.exit, %opj_jp2_exec.exit, %bb.a, %bb.m
  %.0 = phi i32 [ %i.ak, %bb.m ], [ 0, %opj_jp2_setup_header_writing.exit ], [ 0, %opj_jp2_exec.exit ], [ 0, %bb.a ], [ 0, %opj_jp2_exec.exit30 ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @opj_j2k_start_compress(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_read_header(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.b = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %.val, ptr noundef nonnull @opj_jp2_read_header_procedure, ptr noundef %3) #7
  %.not.i.not = icmp eq i32 %i.b, 0
  br i1 %.not.i.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 4 uses
  %i.e = tail call i32 @opj_procedure_list_get_nb_procedures(ptr noundef %i.d) #7 ; 2 uses
  %i.f = tail call ptr @opj_procedure_list_get_first_procedure(ptr noundef %i.d) #7
  %.not17.i = icmp eq i32 %i.e, 0
  br i1 %.not17.i, label %opj_jp2_exec.exit.thread, label %.lr.ph.i

opj_jp2_exec.exit.thread:                         ; preds = %bb.b
  tail call void @opj_procedure_list_clear(ptr noundef %i.d) #7
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.016.i = phi i32 [ %i.m, %bb.d ], [ 0, %bb.b ]
  %.01215.i = phi ptr [ %i.l, %bb.d ], [ %i.f, %bb.b ] ; 2 uses
  %.01314.i = phi i32 [ %i.k, %bb.d ], [ 1, %bb.b ]
  %.not.i50 = icmp eq i32 %.01314.i, 0
  br i1 %.not.i50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %.01215.i, align 8, !tbaa !116
  %i.h = tail call i32 %i.g(ptr noundef %1, ptr noundef %0, ptr noundef %3) #7, !inline_history !117
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i32 [ 0, %.lr.ph.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.m = add nuw i32 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.m, %i.e
  br i1 %exitcond.not.i, label %opj_jp2_exec.exit, label %.lr.ph.i, !llvm.loop !118

opj_jp2_exec.exit:                                ; preds = %bb.d
  tail call void @opj_procedure_list_clear(ptr noundef %i.d) #7
  %.not46 = icmp eq i32 %i.k, 0
  br i1 %.not46, label %bb.r, label %bb.e

bb.e:                                             ; preds = %opj_jp2_exec.exit.thread, %opj_jp2_exec.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !115  ; 4 uses
  %i.o = tail call i32 @opj_procedure_list_get_nb_procedures(ptr noundef %i.n) #7 ; 2 uses
  %i.p = tail call ptr @opj_procedure_list_get_first_procedure(ptr noundef %i.n) #7
  %.not17.i51 = icmp eq i32 %i.o, 0
  br i1 %.not17.i51, label %opj_jp2_exec.exit59.thread, label %.lr.ph.i52

opj_jp2_exec.exit59.thread:                       ; preds = %bb.e
  tail call void @opj_procedure_list_clear(ptr noundef %i.n) #7
  br label %bb.h

.lr.ph.i52:                                       ; preds = %bb.e, %bb.g
  %.016.i53 = phi i32 [ %i.w, %bb.g ], [ 0, %bb.e ]
  %.01215.i54 = phi ptr [ %i.v, %bb.g ], [ %i.p, %bb.e ] ; 2 uses
  %.01314.i55 = phi i32 [ %i.u, %bb.g ], [ 1, %bb.e ]
  %.not.i56 = icmp eq i32 %.01314.i55, 0
  br i1 %.not.i56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i52
  %i.q = load ptr, ptr %.01215.i54, align 8, !tbaa !116
  %i.r = tail call i32 %i.q(ptr noundef %1, ptr noundef %0, ptr noundef %3) #7, !inline_history !117
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i52
  %i.u = phi i32 [ 0, %.lr.ph.i52 ], [ %i.t, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01215.i54, i64 8
  %i.w = add nuw i32 %.016.i53, 1                 ; 2 uses
  %exitcond.not.i57 = icmp eq i32 %i.w, %i.o
  br i1 %exitcond.not.i57, label %opj_jp2_exec.exit59, label %.lr.ph.i52, !llvm.loop !118

opj_jp2_exec.exit59:                              ; preds = %bb.g
  tail call void @opj_procedure_list_clear(ptr noundef %i.n) #7
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %bb.r, label %bb.h

bb.h:                                             ; preds = %opj_jp2_exec.exit59.thread, %opj_jp2_exec.exit59
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.y = load i8, ptr %i.x, align 4, !tbaa !120
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.8) #7 ; 0 uses
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 173
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !121
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %1, align 8, !tbaa !7
  %i.ag = tail call i32 @opj_j2k_read_header(ptr noundef %0, ptr noundef %i.af, ptr noundef %2, ptr noundef %3) #7 ; 5 uses
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = icmp ne ptr %2, null
  %or.cond = and i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %2, align 8, !tbaa !122   ; 4 uses
  %.not48 = icmp eq ptr %i.aj, null
  br i1 %.not48, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %switch.tableidx = add i32 %i.al, -12           ; 2 uses
  %4 = icmp ult i32 %switch.tableidx, 13
  br i1 %4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %5 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.opj_jp2_read_header, i64 %5
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sink = phi i32 [ %switch.load, %bb.o ], [ -1, %bb.n ]
  store i32 %.sink, ptr %i.am, align 4, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !102 ; 2 uses
  %.not49 = icmp eq ptr %i.ao, null
  br i1 %.not49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !104
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !99
  store ptr null, ptr %i.an, align 8, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.m, %bb.q, %bb.p, %opj_jp2_exec.exit59, %opj_jp2_exec.exit, %bb.a, %bb.k, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %opj_jp2_exec.exit59 ], [ 0, %opj_jp2_exec.exit ], [ 0, %bb.a ], [ %i.ag, %bb.p ], [ %i.ag, %bb.q ], [ %i.ag, %bb.m ], [ %i.ag, %bb.l ]
  ret i32 %.0
}

declare i32 @opj_j2k_read_header(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_read_tile_header(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @opj_j2k_read_tile_header(ptr noundef %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #7
  ret i32 %i.b
}

declare i32 @opj_j2k_read_tile_header(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_write_tile(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @opj_j2k_write_tile(ptr noundef %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #7
  ret i32 %i.b
}

declare i32 @opj_j2k_write_tile(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_decode_tile(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @opj_j2k_decode_tile(ptr noundef %i.a, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #7
  ret i32 %i.b
}

declare i32 @opj_j2k_decode_tile(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @opj_jp2_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  tail call void @opj_j2k_destroy(ptr noundef %i.a) #7
  store ptr null, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %.not52 = icmp eq ptr %i.c, null
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.c) #7
  store ptr null, ptr %i.b, align 8, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not53 = icmp eq ptr %i.e, null
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @opj_free(ptr noundef nonnull %i.e) #7
  store ptr null, ptr %i.d, align 8, !tbaa !88
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %.not54 = icmp eq ptr %i.g, null
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @opj_free(ptr noundef nonnull %i.g) #7
  store ptr null, ptr %i.f, align 8, !tbaa !102
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76   ; 3 uses
  %.not55 = icmp eq ptr %i.i, null
  br i1 %.not55, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %.not56 = icmp eq ptr %i.j, null
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @opj_free(ptr noundef nonnull %i.j) #7
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.l = phi ptr [ %i.k, %bb.j ], [ %i.i, %bb.i ]
  tail call void @opj_free(ptr noundef nonnull %i.l) #7
  store ptr null, ptr %i.h, align 8, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 3 uses
  %.not57 = icmp eq ptr %i.n, null
  br i1 %.not57, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %.not58 = icmp eq ptr %i.p, null
  br i1 %.not58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @opj_free(ptr noundef nonnull %i.p) #7
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %i.r, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.s = phi ptr [ %i.q, %bb.n ], [ %i.n, %bb.m ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54   ; 2 uses
  %.not59 = icmp eq ptr %i.u, null
  br i1 %.not59, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @opj_free(ptr noundef nonnull %i.u) #7
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.x = phi ptr [ %i.v, %bb.p ], [ %i.s, %bb.o ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %.not60 = icmp eq ptr %i.z, null
  br i1 %.not60, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @opj_free(ptr noundef nonnull %i.z) #7
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !53  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr null, ptr %i.ab, align 8, !tbaa !55
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ac = phi ptr [ %i.aa, %bb.r ], [ %i.x, %bb.q ] ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %.not61 = icmp eq ptr %i.ad, null
  br i1 %.not61, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @opj_free(ptr noundef nonnull %i.ad) #7
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !53  ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !56
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.af = phi ptr [ %i.ae, %bb.t ], [ %i.ac, %bb.s ]
  tail call void @opj_free(ptr noundef nonnull %i.af) #7
  store ptr null, ptr %i.m, align 8, !tbaa !53
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119 ; 2 uses
  %.not62 = icmp eq ptr %i.ah, null
  br i1 %.not62, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @opj_procedure_list_destroy(ptr noundef nonnull %i.ah) #7
  store ptr null, ptr %i.ag, align 8, !tbaa !119
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !115 ; 2 uses
  %.not63 = icmp eq ptr %i.aj, null
  br i1 %.not63, label %bb.z, label %bb.y

end_hunk_1
