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
define range(i32 0, 2) i32 @opj_jp2_decode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
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
define internal fastcc range(i32 0, 2) i32 @opj_jp2_apply_color_postprocessing(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #0 {
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
end_hunk_0
begin_hunk_1_@opj_jp2_setup_encoder:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !96
  %indvars.iv.next196 = or disjoint i64 %indvars.iv195, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %indvars.iv.next196 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !64
  %i.bq = add i32 %i.bp, -1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !65
  %i.bt = shl i32 %i.bs, 7
  %i.bu = add i32 %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv.next196
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !96
  %indvars.iv.next196.1 = add nuw nsw i64 %indvars.iv195, 2 ; 2 uses
  %niter242.next.1 = add i64 %niter242, 2         ; 2 uses
  %niter242.ncmp.1 = icmp eq i64 %niter242.next.1, %unroll_iter241
  br i1 %niter242.ncmp.1, label %._crit_edge179.loopexit.unr-lcssa, label %.lr.ph178, !llvm.loop !98

._crit_edge179.loopexit.unr-lcssa:                ; preds = %.lr.ph178
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %._crit_edge179, label %.lr.ph178.epil.preheader

.lr.ph178.epil.preheader:                         ; preds = %._crit_edge179.loopexit.unr-lcssa, %.lr.ph178.preheader
  %indvars.iv195.epil.init = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next196.1, %._crit_edge179.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod240 = trunc i32 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod240)
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %indvars.iv195.epil.init ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !64
  %i.ca = add i32 %i.bz, -1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !65
  %i.cd = shl i32 %i.cc, 7
  %i.ce = add i32 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv195.epil.init
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !96
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %.lr.ph178.epil.preheader, %._crit_edge179.loopexit.unr-lcssa, %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !99 ; 2 uses
  %.not161 = icmp eq i32 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %.not161, label %bb.p, label %bb.n

bb.n:                                             ; preds = %._crit_edge179
  store i32 2, ptr %i.cj, align 4, !tbaa !100
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.ck, align 4, !tbaa !101
  %i.cl = zext i32 %i.ci to i64
  %i.cm = tail call ptr @opj_malloc(i64 noundef %i.cl) #7 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !102
  %.not162 = icmp eq ptr %i.cm, null
  br i1 %.not162, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load i32, ptr %i.ch, align 8, !tbaa !99 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !103
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !104
  %i.cs = zext i32 %i.co to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr align 1 %i.cr, i64 %i.cs, i1 false)
  br label %bb.v

bb.p:                                             ; preds = %._crit_edge179
  store i32 1, ptr %i.cj, align 4, !tbaa !100
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !105
  switch i32 %i.cu, label %bb.v [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 16, ptr %i.cv, align 4, !tbaa !101
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 17, ptr %i.cw, align 4, !tbaa !101
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 18, ptr %i.cx, align 4, !tbaa !101
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 24, ptr %i.cy, align 4, !tbaa !101
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 12, ptr %i.cz, align 4, !tbaa !101
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.q, %bb.s, %bb.u, %bb.t, %bb.r, %bb.n, %bb.o
  %i.da = load i32, ptr %i.d, align 8, !tbaa !28  ; 4 uses
  %.not193 = icmp eq i32 %i.da, 0
  br i1 %.not193, label %.critedge, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.v
  %i.db = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 5 uses
  %wide.trip.count203 = zext i32 %i.da to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.da, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph184
  %n.vec = and i64 %wide.trip.count203, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dy, %vector.body ]
  %i.dc = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.dx, %vector.body ]
  %vec.phi230 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dv, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.de = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.df = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.dg = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 184
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 248
  %i.dl = load i16, ptr %i.dh, align 8, !tbaa !78
  %i.dm = load i16, ptr %i.di, align 8, !tbaa !78
  %i.dn = load i16, ptr %i.dj, align 8, !tbaa !78
  %i.do = load i16, ptr %i.dk, align 8, !tbaa !78
  %i.dp = insertelement <4 x i16> poison, i16 %i.dl, i64 0
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.dm, i64 1
  %i.dr = insertelement <4 x i16> %i.dq, i16 %i.dn, i64 2
  %i.ds = insertelement <4 x i16> %i.dr, i16 %i.do, i64 3
  %.fr = freeze <4 x i16> %i.ds
  %i.dt = icmp ne <4 x i16> %.fr, zeroinitializer ; 3 uses
  %i.du = zext <4 x i1> %i.dt to <4 x i32>
  %i.dv = add <4 x i32> %vec.phi230, %i.du        ; 2 uses
  %i.dw = bitcast <4 x i1> %i.dt to i4
  %.not232 = icmp eq i4 %i.dw, 0                  ; 2 uses
  %i.dx = select i1 %.not232, <4 x i1> %i.dc, <4 x i1> %i.dt ; 2 uses
  %i.dy = select i1 %.not232, <4 x i32> %vec.phi, <4 x i32> %vec.ind ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %i.ea = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.dy, <4 x i1> %i.dx, i32 0) ; 2 uses
  %i.eb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dv) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count203
  br i1 %cmp.n, label %._crit_edge185, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph184, %middle.block
  %indvars.iv200.ph = phi i64 [ 0, %.lr.ph184 ], [ %n.vec, %middle.block ]
  %.0145182.ph = phi i32 [ 0, %.lr.ph184 ], [ %i.ea, %middle.block ]
  %.0148181.ph = phi i32 [ 0, %.lr.ph184 ], [ %i.eb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %scalar.ph ], [ %indvars.iv200.ph, %scalar.ph.preheader ] ; 3 uses
  %.0145182 = phi i32 [ %spec.select171, %scalar.ph ], [ %.0145182.ph, %scalar.ph.preheader ]
  %.0148181 = phi i32 [ %spec.select, %scalar.ph ], [ %.0148181.ph, %scalar.ph.preheader ]
  %i.ec = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %indvars.iv200
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !78
  %.not168 = icmp ne i16 %i.ee, 0                 ; 2 uses
  %i.ef = zext i1 %.not168 to i32
  %spec.select = add i32 %.0148181, %i.ef         ; 2 uses
  %i.eg = trunc nuw i64 %indvars.iv200 to i32
  %spec.select171 = select i1 %.not168, i32 %i.eg, i32 %.0145182 ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge185, label %scalar.ph, !llvm.loop !107

._crit_edge185:                                   ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.eb, %middle.block ], [ %spec.select, %scalar.ph ]
  %spec.select171.lcssa = phi i32 [ %i.ea, %middle.block ], [ %spec.select171, %scalar.ph ]
  switch i32 %spec.select.lcssa, label %.critedge.sink.split [
    i32 1, label %bb.w
    i32 0, label %.critedge
  ]

bb.w:                                             ; preds = %._crit_edge185
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !101
  %switch.tableidx = add i32 %i.ei, -16           ; 3 uses
  %i.ej = icmp ult i32 %switch.tableidx, 3
  br i1 %i.ej, label %switch.lookup, label %.critedge.sink.split

switch.lookup:                                    ; preds = %bb.w
  %i.ek = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.opj_jp2_setup_encoder, i64 %i.ek
  %switch.load = load i32, ptr %switch.gep, align 4 ; 5 uses
  %.not164 = icmp ugt i32 %i.da, %switch.load
  br i1 %.not164, label %bb.x, label %.critedge.sink.split

bb.x:                                             ; preds = %switch.lookup
  %i.el = icmp ult i32 %spec.select171.lcssa, %switch.load
  br i1 %i.el, label %.critedge.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = tail call ptr @opj_malloc(i64 noundef 16) #7 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8, !tbaa !76
  %.not165 = icmp eq ptr %i.em, null
  br i1 %.not165, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.ep = load i32, ptr %i.d, align 8, !tbaa !28
  %i.eq = zext i32 %i.ep to i64
  %i.er = mul nuw nsw i64 %i.eq, 6
  %i.es = tail call ptr @opj_malloc(i64 noundef %i.er) #7 ; 6 uses
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !76 ; 2 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !23
  %.not166 = icmp eq ptr %i.es, null
  br i1 %.not166, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eu = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.ev = load i32, ptr %i.d, align 8, !tbaa !28  ; 3 uses
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i16 %i.ew, ptr %i.ex, align 8, !tbaa !27
  %wide.trip.count208 = zext nneg i32 %switch.load to i64 ; 2 uses
  %xtraiter243 = and i64 %wide.trip.count208, 1
  %i.ey = icmp eq i32 %switch.tableidx, 1
  br i1 %i.ey, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ac
  %unroll_iter247 = and i64 %wide.trip.count208, 2147483646
  br label %bb.ad

.preheader.unr-lcssa:                             ; preds = %bb.ad
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %bb.ac
  %indvars.iv210.epil.init = phi i64 [ 1, %bb.ac ], [ %indvars.iv.next211.1, %.preheader.unr-lcssa ]
  %indvars.iv205.epil.init = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next206.1, %.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod246 = trunc i32 %switch.load to i1
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.ez = trunc i64 %indvars.iv205.epil.init to i16
  %i.fa = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %indvars.iv205.epil.init ; 3 uses
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !35
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  store i16 0, ptr %i.fb, align 2, !tbaa !77
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fd = trunc i64 %indvars.iv205.epil.init to i16
  %i.fe = add i16 %i.fd, 1
  store i16 %i.fe, ptr %i.fc, align 2, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %indvars.iv210.lcssa = phi i64 [ %indvars.iv.next211, %.preheader.unr-lcssa ], [ %indvars.iv210.epil.init, %.epil.preheader ]
  %4 = icmp ult i32 %switch.load, %i.ev
  br i1 %4, label %.lr.ph191, label %.critedge

.lr.ph191:                                        ; preds = %.preheader
  %i.ff = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.fg = zext i32 %i.ev to i64
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ad, %.new
  %indvars.iv210 = phi i64 [ 1, %.new ], [ %indvars.iv.next211.1, %bb.ad ] ; 2 uses
  %indvars.iv205 = phi i64 [ 0, %.new ], [ %indvars.iv.next206.1, %bb.ad ] ; 4 uses
  %niter248 = phi i64 [ 0, %.new ], [ %niter248.next.1, %bb.ad ]
  %i.fh = trunc i64 %indvars.iv205 to i16
  %i.fi = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %indvars.iv205 ; 3 uses
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !35
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i16 0, ptr %i.fj, align 2, !tbaa !77
  %indvars.iv.next206 = or disjoint i64 %indvars.iv205, 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fl = trunc nuw nsw i64 %indvars.iv.next206 to i16
  store i16 %i.fl, ptr %i.fk, align 2, !tbaa !40
  %i.fm = trunc i64 %indvars.iv.next206 to i16
  %i.fn = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %indvars.iv.next206 ; 3 uses
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !35
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  store i16 0, ptr %i.fo, align 2, !tbaa !77
  %indvars.iv.next206.1 = add nuw nsw i64 %indvars.iv205, 2 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fq = trunc nuw nsw i64 %indvars.iv.next206.1 to i16
  store i16 %i.fq, ptr %i.fp, align 2, !tbaa !40
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %niter248.next.1 = add i64 %niter248, 2         ; 2 uses
  %niter248.ncmp.1 = icmp eq i64 %niter248.next.1, %unroll_iter247
  br i1 %niter248.ncmp.1, label %.preheader.unr-lcssa, label %bb.ad, !llvm.loop !108

bb.ae:                                            ; preds = %.lr.ph191, %bb.ae
  %indvars.iv212 = phi i64 [ %indvars.iv210.lcssa, %.lr.ph191 ], [ %indvars.iv.next213, %bb.ae ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %indvars.iv212
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = load i16, ptr %i.fs, align 8, !tbaa !78
  %.not167 = icmp eq i16 %i.ft, 0                 ; 2 uses
  %i.fu = trunc i64 %indvars.iv212 to i16
  %i.fv = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %indvars.iv212 ; 3 uses
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !35
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %. = select i1 %.not167, i16 -1, i16 1
  %.229 = sext i1 %.not167 to i16
  store i16 %., ptr %i.fw, align 2, !tbaa !77
  store i16 %.229, ptr %i.fx, align 2, !tbaa !40
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.fy = icmp samesign ult i64 %indvars.iv.next213, %i.fg
  br i1 %i.fy, label %bb.ae, label %.critedge, !llvm.loop !109

.critedge.sink.split:                             ; preds = %bb.w, %._crit_edge185, %bb.x, %switch.lookup
  %.str.3.sink = phi ptr [ @.str.5, %bb.x ], [ @.str.3, %bb.w ], [ @.str.4, %switch.lookup ], [ @.str.6, %._crit_edge185 ]
  %i.fz = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %.str.3.sink) #7 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %.critedge.sink.split, %bb.v, %.preheader, %._crit_edge185
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.ga, align 8, !tbaa !110
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.gb, align 8, !tbaa !111
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 18700
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !112
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !114
  br label %bb.af

bb.af:                                            ; preds = %bb.d, %bb.a, %.critedge, %bb.ab, %bb.z, %bb.h, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %.critedge ], [ 0, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @opj_j2k_setup_encoder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_encode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @opj_j2k_encode(ptr noundef %i.a, ptr noundef %1, ptr noundef %2) #7
  ret i32 %i.b
}

declare i32 @opj_j2k_encode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_end_decompress(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.b = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %.val, ptr noundef nonnull @opj_jp2_read_header_procedure, ptr noundef %2) #7
  %.not.i.not = icmp eq i32 %i.b, 0
  br i1 %.not.i.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !115  ; 4 uses
  %i.d = tail call i32 @opj_procedure_list_get_nb_procedures(ptr noundef %i.c) #7 ; 2 uses
  %i.e = tail call ptr @opj_procedure_list_get_first_procedure(ptr noundef %i.c) #7
  %.not17.i = icmp eq i32 %i.d, 0
  br i1 %.not17.i, label %opj_jp2_exec.exit.thread, label %.lr.ph.i

opj_jp2_exec.exit.thread:                         ; preds = %bb.b
  tail call void @opj_procedure_list_clear(ptr noundef %i.c) #7
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.016.i = phi i32 [ %i.l, %bb.d ], [ 0, %bb.b ]
  %.01215.i = phi ptr [ %i.k, %bb.d ], [ %i.e, %bb.b ] ; 2 uses
  %.01314.i = phi i32 [ %i.j, %bb.d ], [ 1, %bb.b ]
  %.not.i10 = icmp eq i32 %.01314.i, 0
  br i1 %.not.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %.01215.i, align 8, !tbaa !116
  %i.g = tail call i32 %i.f(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7, !inline_history !117
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i32 [ 0, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.l = add nuw i32 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.d
  br i1 %exitcond.not.i, label %opj_jp2_exec.exit, label %.lr.ph.i, !llvm.loop !118

opj_jp2_exec.exit:                                ; preds = %bb.d
  tail call void @opj_procedure_list_clear(ptr noundef %i.c) #7
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %opj_jp2_exec.exit.thread, %opj_jp2_exec.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !7
  %i.n = tail call i32 @opj_j2k_end_decompress(ptr noundef %i.m, ptr noundef %1, ptr noundef %2) #7
  br label %bb.f

bb.f:                                             ; preds = %opj_jp2_exec.exit, %bb.a, %bb.e
  %.0 = phi i32 [ %i.n, %bb.e ], [ 0, %bb.a ], [ 0, %opj_jp2_exec.exit ]
  ret i32 %.0
}

declare i32 @opj_j2k_end_decompress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_jp2_end_compress(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.b = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %.val, ptr noundef nonnull @opj_jp2_write_jp2c, ptr noundef %2) #7
  %.not.i.not = icmp eq i32 %i.b, 0
  br i1 %.not.i.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  %i.d = tail call i32 @opj_j2k_end_compress(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #7
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.f = tail call i32 @opj_procedure_list_get_nb_procedures(ptr noundef %i.e) #7 ; 2 uses
  %i.g = tail call ptr @opj_procedure_list_get_first_procedure(ptr noundef %i.e) #7
  %.not17.i = icmp eq i32 %i.f, 0
  br i1 %.not17.i, label %opj_jp2_exec.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.016.i = phi i32 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.01215.i = phi ptr [ %i.m, %bb.e ], [ %i.g, %bb.c ] ; 2 uses
  %.01314.i = phi i32 [ %i.l, %bb.e ], [ 1, %bb.c ]
  %.not.i10 = icmp eq i32 %.01314.i, 0
  br i1 %.not.i10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %.01215.i, align 8, !tbaa !116
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #7, !inline_history !117
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.l = phi i32 [ 0, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.n = add nuw i32 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.n, %i.f
  br i1 %exitcond.not.i, label %opj_jp2_exec.exit, label %.lr.ph.i, !llvm.loop !118

opj_jp2_exec.exit:                                ; preds = %bb.e, %bb.c
  %.013.lcssa.i = phi i32 [ 1, %bb.c ], [ %i.l, %bb.e ]
end_hunk_1
