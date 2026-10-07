Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/v3_crld?download=true
inline.NumInlined: 43
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.v3_ext_method = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ASN1_TEMPLATE_st = type { i32, i32, i64, ptr, ptr }
%struct.ASN1_ITEM_st = type { i8, i32, ptr, i64, ptr, i64, ptr }
%struct.X509_name_st = type { ptr, i32, ptr, ptr, i32 }

@v3_crld = hidden local_unnamed_addr constant %struct.v3_ext_method { i32 103, i32 0, ptr @CRL_DIST_POINTS_it, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v2i_crld, ptr @i2r_crldp, ptr null, ptr null }, align 8
@v3_freshest_crl = hidden local_unnamed_addr constant %struct.v3_ext_method { i32 857, i32 0, ptr @CRL_DIST_POINTS_it, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v2i_crld, ptr @i2r_crldp, ptr null, ptr null }, align 8
@DIST_POINT_NAME_ch_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i32 140, i32 0, i64 8, ptr @.str.29, ptr @GENERAL_NAME_it }, %struct.ASN1_TEMPLATE_st { i32 138, i32 1, i64 8, ptr @.str.30, ptr @X509_NAME_ENTRY_it }], align 16
@.str = private unnamed_addr constant [16 x i8] c"DIST_POINT_NAME\00", align 1
@DIST_POINT_NAME_it = hidden constant { i8, [3 x i8], i32, ptr, i64, ptr, i64, ptr } { i8 2, [3 x i8] zeroinitializer, i32 0, ptr @DIST_POINT_NAME_ch_tt, i64 2, ptr @DIST_POINT_NAME_aux, i64 24, ptr @.str }, align 8
@DIST_POINT_seq_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i32 145, i32 0, i64 0, ptr @.str.32, ptr @DIST_POINT_NAME_it }, %struct.ASN1_TEMPLATE_st { i32 137, i32 1, i64 8, ptr @.str.5, ptr @ASN1_BIT_STRING_it }, %struct.ASN1_TEMPLATE_st { i32 141, i32 2, i64 16, ptr @.str.6, ptr @GENERAL_NAME_it }], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"DIST_POINT\00", align 1
@DIST_POINT_it = hidden constant { i8, [3 x i8], i32, ptr, i64, ptr, i64, ptr } { i8 1, [3 x i8] zeroinitializer, i32 16, ptr @DIST_POINT_seq_tt, i64 3, ptr null, i64 24, ptr @.str.1 }, align 8
@CRL_DIST_POINTS_item_tt = internal constant %struct.ASN1_TEMPLATE_st { i32 4, i32 0, i64 0, ptr @.str.33, ptr @DIST_POINT_it }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"CRL_DIST_POINTS\00", align 1
@CRL_DIST_POINTS_it = constant { i8, [3 x i8], i32, ptr, i64, ptr, i64, ptr } { i8 0, [3 x i8] zeroinitializer, i32 -1, ptr @CRL_DIST_POINTS_item_tt, i64 0, ptr null, i64 0, ptr @.str.2 }, align 8
@ISSUING_DIST_POINT_seq_tt = internal constant [6 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i32 145, i32 0, i64 0, ptr @.str.32, ptr @DIST_POINT_NAME_it }, %struct.ASN1_TEMPLATE_st { i32 137, i32 1, i64 8, ptr @.str.34, ptr @ASN1_FBOOLEAN_it }, %struct.ASN1_TEMPLATE_st { i32 137, i32 2, i64 12, ptr @.str.35, ptr @ASN1_FBOOLEAN_it }, %struct.ASN1_TEMPLATE_st { i32 137, i32 3, i64 16, ptr @.str.36, ptr @ASN1_BIT_STRING_it }, %struct.ASN1_TEMPLATE_st { i32 137, i32 4, i64 24, ptr @.str.37, ptr @ASN1_FBOOLEAN_it }, %struct.ASN1_TEMPLATE_st { i32 137, i32 5, i64 28, ptr @.str.38, ptr @ASN1_FBOOLEAN_it }], align 16
@.str.4 = private unnamed_addr constant [19 x i8] c"ISSUING_DIST_POINT\00", align 1
@ISSUING_DIST_POINT_it = constant { i8, [3 x i8], i32, ptr, i64, ptr, i64, ptr } { i8 1, [3 x i8] zeroinitializer, i32 16, ptr @ISSUING_DIST_POINT_seq_tt, i64 6, ptr null, i64 32, ptr @.str.4 }, align 8
@v3_idp = hidden local_unnamed_addr constant %struct.v3_ext_method { i32 770, i32 4, ptr @ISSUING_DIST_POINT_it, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v2i_idp, ptr @i2r_idp, ptr null, ptr null }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"reasons\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"CRLissuer\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"fullname\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/x509/v3_crld.c\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"relativename\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Key Compromise\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"keyCompromise\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"CA Compromise\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"CACompromise\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Affiliation Changed\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"affiliationChanged\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Superseded\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"superseded\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Cessation Of Operation\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"cessationOfOperation\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Certificate Hold\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"certificateHold\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Privilege Withdrawn\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"privilegeWithdrawn\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"AA Compromise\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"AACompromise\00", align 1
@reason_flags = internal unnamed_addr constant [10 x { i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.11 }, { i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.12, ptr @.str.13 }, { i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.15 }, { i32, [4 x i8], ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.17 }, { i32, [4 x i8], ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.18, ptr @.str.19 }, { i32, [4 x i8], ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.20, ptr @.str.21 }, { i32, [4 x i8], ptr, ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.22, ptr @.str.23 }, { i32, [4 x i8], ptr, ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.24, ptr @.str.25 }, { i32, [4 x i8], ptr, ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.26, ptr @.str.27 }, { i32, [4 x i8], ptr, ptr } { i32 -1, [4 x i8] zeroinitializer, ptr null, ptr null }], align 16
@.str.29 = private unnamed_addr constant [14 x i8] c"name.fullname\00", align 1
@GENERAL_NAME_it = external constant %struct.ASN1_ITEM_st, align 8
@.str.30 = private unnamed_addr constant [18 x i8] c"name.relativename\00", align 1
@X509_NAME_ENTRY_it = external constant %struct.ASN1_ITEM_st, align 8
@DIST_POINT_NAME_aux = internal constant { ptr, i32, i32, ptr, i32, [4 x i8] } { ptr null, i32 0, i32 0, ptr @dpn_cb, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.32 = private unnamed_addr constant [10 x i8] c"distpoint\00", align 1
@ASN1_BIT_STRING_it = external constant %struct.ASN1_ITEM_st, align 8
@.str.33 = private unnamed_addr constant [22 x i8] c"CRLDistributionPoints\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"onlyuser\00", align 1
@ASN1_FBOOLEAN_it = external constant %struct.ASN1_ITEM_st, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"onlyCA\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"onlysomereasons\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"indirectCRL\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"onlyattr\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"onlyAA\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"section:\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c",name:\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c",value:\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"%*sOnly User Certificates\0A\00", align 1
@.str.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"%*sOnly CA Certificates\0A\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"%*sIndirect CRL\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Only Some Reasons\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"%*sOnly Attribute Certificates\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"%*s<EMPTY>\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"%*sFull Name:\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"%*sRelative Name:\0A%*s\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"%*s%s:\0A%*s\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"<EMPTY>\0A\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"Reasons\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"%*sCRL Issuer:\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal ptr @v2i_crld(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_sk_new_null() #5  ; 12 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit84.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = tail call i64 @OPENSSL_sk_num(ptr noundef %2) #5
  %.not94 = icmp eq i64 %i.b, 0
  br i1 %.not94, label %.loopexit84, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %.03593 = phi i64 [ %i.as, %bb.u ], [ 0, %.preheader ] ; 2 uses
  %i.c = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i64 noundef %.03593) #5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %.not55 = icmp eq ptr %i.e, null
  br i1 %.not55, label %bb.b, label %bb.n

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call ptr @X509V3_get_section(ptr noundef %1, ptr noundef %i.g) #5 ; 4 uses
  %.not56 = icmp eq ptr %i.h, null
  br i1 %.not56, label %.loopexit84.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @ASN1_item_new(ptr noundef nonnull @DIST_POINT_it) #5 ; 11 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.j = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.h) #5
  %.not40.i = icmp eq i64 %i.j, 0
  br i1 %.not40.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %.lr.ph.i
  %.02439.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ag, %bb.m ] ; 2 uses
  %i.m = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.h, i64 noundef %.02439.i) #5 ; 4 uses
  %i.n = tail call fastcc i32 @set_dist_point_name(ptr noundef %i.i, ptr noundef %1, ptr noundef %i.m) ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %.split.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(8) @.str.5) #6
  %.not29.i = icmp eq i32 %i.s, 0
  br i1 %.not29.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = tail call fastcc i32 @set_reasons(ptr noundef %i.l, ptr noundef %i.u)
  %.not30.i = icmp eq i32 %i.v, 0
  br i1 %.not30.i, label %.split.sink.split, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(10) @.str.6) #6
  %.not31.i = icmp eq i32 %i.w, 0
  br i1 %.not31.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !18
  tail call void @GENERAL_NAMES_free(ptr noundef %i.x) #5
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19
  %i.ab = icmp eq i8 %i.aa, 64
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = tail call ptr @X509V3_get_section(ptr noundef %1, ptr noundef nonnull %i.ac) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call ptr @X509V3_parse_list(ptr noundef nonnull %i.z) #5 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.012.i.i = phi ptr [ %i.ad, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %.011.i.i = phi ptr [ null, %bb.j ], [ %i.ae, %bb.k ]
  %.not.i.i = icmp eq ptr %.012.i.i, null
  br i1 %.not.i.i, label %gnames_from_sectname.exit.thread.i, label %gnames_from_sectname.exit.i

gnames_from_sectname.exit.thread.i:               ; preds = %bb.l
  tail call void @ERR_put_error(i32 noundef 20, i32 noundef 0, i32 noundef 153, ptr noundef nonnull @.str.8, i32 noundef 69) #5
  store ptr null, ptr %i.k, align 8, !tbaa !18
  br label %.split.sink.split

gnames_from_sectname.exit.i:                      ; preds = %bb.l
  %i.af = tail call ptr @v2i_GENERAL_NAMES(ptr noundef null, ptr noundef %1, ptr noundef nonnull %.012.i.i) #5 ; 2 uses
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %.011.i.i, ptr noundef nonnull @sk_CONF_VALUE_call_free_func, ptr noundef nonnull @X509V3_conf_free) #5
  store ptr %i.af, ptr %i.k, align 8, !tbaa !18
  %.not32.i = icmp eq ptr %i.af, null
  br i1 %.not32.i, label %.split.sink.split, label %bb.m

bb.m:                                             ; preds = %gnames_from_sectname.exit.i, %bb.h, %bb.g, %bb.d
  %i.ag = add nuw i64 %.02439.i, 1                ; 2 uses
  %i.ah = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.h) #5
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.m, %.preheader.i
  %i.aj = tail call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #5
  %.not58 = icmp eq i64 %i.aj, 0
  br i1 %.not58, label %.split.sink.split, label %bb.u

bb.n:                                             ; preds = %.lr.ph
  %i.ak = tail call ptr @v2i_GENERAL_NAME(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c) #5 ; 4 uses
  %.not59 = icmp eq ptr %i.ak, null
  br i1 %.not59, label %.loopexit84.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = tail call ptr @GENERAL_NAMES_new() #5   ; 7 uses
  %.not60 = icmp eq ptr %i.al, null
  br i1 %.not60, label %.loopexit84.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = tail call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.al, ptr noundef nonnull %i.ak) #5
  %.not61 = icmp eq i64 %i.am, 0
  br i1 %.not61, label %.loopexit84.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = tail call ptr @ASN1_item_new(ptr noundef nonnull @DIST_POINT_it) #5 ; 5 uses
  %.not62 = icmp eq ptr %i.an, null
  br i1 %.not62, label %.loopexit84.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = tail call i64 @OPENSSL_sk_push(ptr noundef nonnull %i.a, ptr noundef nonnull %i.an) #5
  %.not63 = icmp eq i64 %i.ao, 0
  br i1 %.not63, label %.split.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = tail call ptr @ASN1_item_new(ptr noundef nonnull @DIST_POINT_NAME_it) #5 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !21
  %.not64 = icmp eq ptr %i.ap, null
  br i1 %.not64, label %.loopexit84.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !19
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !21
  store i32 0, ptr %i.ar, align 8, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  %i.as = add nuw i64 %.03593, 1                  ; 2 uses
  %i.at = tail call i64 @OPENSSL_sk_num(ptr noundef %2) #5
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit84, !llvm.loop !31

.split.sink.split:                                ; preds = %bb.r, %.loopexit, %bb.c, %gnames_from_sectname.exit.i, %bb.g, %bb.e, %gnames_from_sectname.exit.thread.i
  %.lcssa119.sink = phi ptr [ %i.i, %gnames_from_sectname.exit.i ], [ %i.i, %gnames_from_sectname.exit.thread.i ], [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %bb.c ], [ %i.i, %.loopexit ], [ %i.an, %bb.r ]
  %.241.ph.ph = phi ptr [ null, %gnames_from_sectname.exit.i ], [ null, %gnames_from_sectname.exit.thread.i ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.c ], [ null, %.loopexit ], [ %i.al, %bb.r ]
  tail call void @ASN1_item_free(ptr noundef %.lcssa119.sink, ptr noundef nonnull @DIST_POINT_it) #5
  br label %.loopexit84.sink.split

.loopexit84.sink.split:                           ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %bb.b, %.split.sink.split, %bb.a
  %.238.ph.sink = phi ptr [ null, %bb.a ], [ null, %.split.sink.split ], [ %i.ak, %bb.o ], [ null, %bb.n ], [ null, %bb.s ], [ null, %bb.b ], [ null, %bb.q ], [ %i.ak, %bb.p ]
  %.241.ph.sink = phi ptr [ null, %bb.a ], [ %.241.ph.ph, %.split.sink.split ], [ null, %bb.o ], [ null, %bb.n ], [ %i.al, %bb.s ], [ null, %bb.b ], [ %i.al, %bb.q ], [ %i.al, %bb.p ]
  %.sink = phi ptr [ null, %bb.a ], [ %i.a, %.split.sink.split ], [ %i.a, %bb.b ], [ %i.a, %bb.s ], [ %i.a, %bb.q ], [ %i.a, %bb.p ], [ %i.a, %bb.o ], [ %i.a, %bb.n ]
  tail call void @GENERAL_NAME_free(ptr noundef %.238.ph.sink) #5
  tail call void @GENERAL_NAMES_free(ptr noundef %.241.ph.sink) #5
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %.sink, ptr noundef nonnull @sk_DIST_POINT_call_free_func, ptr noundef nonnull @DIST_POINT_free) #5
  br label %.loopexit84

.loopexit84:                                      ; preds = %bb.u, %.loopexit84.sink.split, %.preheader
  %.044 = phi ptr [ %i.a, %.preheader ], [ null, %.loopexit84.sink.split ], [ %i.a, %bb.u ]
  ret ptr %.044
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @i2r_crldp(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call i64 @OPENSSL_sk_num(ptr noundef %1) #5
  %.not25 = icmp eq i64 %i.a, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %3, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %print_gens.exit
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.t, %print_gens.exit ] ; 2 uses
  %i.c = tail call i32 @BIO_puts(ptr noundef %2, ptr noundef nonnull @.str.52) #5 ; 0 uses
  %i.d = tail call ptr @OPENSSL_sk_value(ptr noundef %1, i64 noundef %.024) #5 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @print_distpoint(ptr noundef %2, ptr noundef %i.e, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @print_reasons(ptr noundef %2, ptr noundef nonnull @.str.57, ptr noundef %i.g, i32 noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %print_gens.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef %3, ptr noundef nonnull @.str.44) #5 ; 0 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %i.l = tail call i64 @OPENSSL_sk_num(ptr noundef %i.k) #5
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %print_gens.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.08.i = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.g ] ; 2 uses
  %i.m = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef %i.b, ptr noundef nonnull @.str.44) #5 ; 0 uses
  %i.n = tail call ptr @OPENSSL_sk_value(ptr noundef %i.k, i64 noundef %.08.i) #5
  %i.o = tail call i32 @GENERAL_NAME_print(ptr noundef %2, ptr noundef %i.n) #5 ; 0 uses
  %i.p = tail call i32 @BIO_puts(ptr noundef %2, ptr noundef nonnull @.str.52) #5 ; 0 uses
  %i.q = add nuw i64 %.08.i, 1                    ; 2 uses
  %i.r = tail call i64 @OPENSSL_sk_num(ptr noundef %i.k) #5
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i, label %print_gens.exit, !llvm.loop !0

print_gens.exit:                                  ; preds = %.lr.ph.i, %bb.g, %bb.f
  %i.t = add nuw i64 %.024, 1                     ; 2 uses
  %i.u = tail call i64 @OPENSSL_sk_num(ptr noundef %1) #5
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %print_gens.exit, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @DIST_POINT_NAME_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_new(ptr noundef nonnull @DIST_POINT_NAME_it) #5
  ret ptr %i.a
}

declare ptr @ASN1_item_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @DIST_POINT_NAME_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @DIST_POINT_NAME_it) #5
  ret void
}

declare void @ASN1_item_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @DIST_POINT_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_new(ptr noundef nonnull @DIST_POINT_it) #5
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @DIST_POINT_free(ptr noundef %0) #0 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @DIST_POINT_it) #5
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @d2i_CRL_DIST_POINTS(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @CRL_DIST_POINTS_it) #5
  ret ptr %i.a
}

declare ptr @ASN1_item_d2i(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @i2d_CRL_DIST_POINTS(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @CRL_DIST_POINTS_it) #5
  ret i32 %i.a
}

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @CRL_DIST_POINTS_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_new(ptr noundef nonnull @CRL_DIST_POINTS_it) #5
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @CRL_DIST_POINTS_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @CRL_DIST_POINTS_it) #5
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @d2i_ISSUING_DIST_POINT(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @ISSUING_DIST_POINT_it) #5
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @i2d_ISSUING_DIST_POINT(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ISSUING_DIST_POINT_it) #5
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define ptr @ISSUING_DIST_POINT_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_new(ptr noundef nonnull @ISSUING_DIST_POINT_it) #5
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @ISSUING_DIST_POINT_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @ISSUING_DIST_POINT_it) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @v2i_idp(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_new(ptr noundef nonnull @ISSUING_DIST_POINT_it) #5 ; 16 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = tail call i64 @OPENSSL_sk_num(ptr noundef %2) #5
  %.not61 = icmp eq i64 %i.b, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.03560 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.o ] ; 2 uses
  %i.h = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i64 noundef %.03560) #5 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.m = tail call fastcc i32 @set_dist_point_name(ptr noundef %i.a, ptr noundef %1, ptr noundef %i.h) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(9) @.str.34) #6
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @X509V3_get_value_bool(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #5
  %.not41 = icmp eq i32 %i.q, 0
  br i1 %.not41, label %.loopexit.sink.split, label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(7) @.str.35) #6
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @X509V3_get_value_bool(ptr noundef nonnull %i.h, ptr noundef nonnull %i.f) #5
  %.not43 = icmp eq i32 %i.s, 0
  br i1 %.not43, label %.loopexit.sink.split, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(7) @.str.39) #6
  %.not44 = icmp eq i32 %i.t, 0
  br i1 %.not44, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i32 @X509V3_get_value_bool(ptr noundef nonnull %i.h, ptr noundef nonnull %i.e) #5
  %.not45 = icmp eq i32 %i.u, 0
  br i1 %.not45, label %.loopexit.sink.split, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(12) @.str.37) #6
  %.not46 = icmp eq i32 %i.v, 0
  br i1 %.not46, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 @X509V3_get_value_bool(ptr noundef nonnull %i.h, ptr noundef nonnull %i.d) #5
  %.not47 = icmp eq i32 %i.w, 0
  br i1 %.not47, label %.loopexit.sink.split, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(16) @.str.36) #6
  %.not48 = icmp eq i32 %i.x, 0
  br i1 %.not48, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = tail call fastcc i32 @set_reasons(ptr noundef %i.c, ptr noundef %i.l)
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @ERR_put_error(i32 noundef 20, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str.8, i32 noundef 431) #5
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !12
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 6, ptr noundef nonnull @.str.40, ptr noundef %i.ab, ptr noundef nonnull @.str.41, ptr noundef %i.ac, ptr noundef nonnull @.str.42, ptr noundef %i.ad) #5
  br label %.loopexit.sink.split

bb.o:                                             ; preds = %bb.e, %bb.i, %bb.m, %bb.k, %bb.g, %bb.b
  %i.ae = add nuw i64 %.03560, 1                  ; 2 uses
  %i.af = tail call i64 @OPENSSL_sk_num(ptr noundef %2) #5
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.b, label %.loopexit, !llvm.loop !34

.loopexit.sink.split:                             ; preds = %bb.m, %bb.e, %bb.g, %bb.i, %bb.k, %bb.c, %bb.n, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ %i.a, %bb.n ], [ %i.a, %bb.c ], [ %i.a, %bb.k ], [ %i.a, %bb.i ], [ %i.a, %bb.g ], [ %i.a, %bb.e ], [ %i.a, %bb.m ]
  tail call void @ASN1_item_free(ptr noundef %.sink, ptr noundef nonnull @ISSUING_DIST_POINT_it) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.loopexit.sink.split, %.preheader
  %.036 = phi ptr [ %i.a, %.preheader ], [ null, %.loopexit.sink.split ], [ %i.a, %bb.o ]
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @i2r_idp(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @print_distpoint(ptr noundef %2, ptr noundef %i.a, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef %3, ptr noundef nonnull @.str.44) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef %3, ptr noundef nonnull @.str.44) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %3, ptr noundef nonnull @.str.44) #5 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %.not29 = icmp eq ptr %i.o, null
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @print_reasons(ptr noundef %2, ptr noundef nonnull @.str.47, ptr noundef %i.o, i32 noundef %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %3, ptr noundef nonnull @.str.44) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = load ptr, ptr %1, align 8, !tbaa !37
  %.not30 = icmp eq ptr %i.t, null
  br i1 %.not30, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.u = load i32, ptr %i.b, align 8, !tbaa !38
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.w = load i32, ptr %i.f, align 4, !tbaa !39
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.y = load i32, ptr %i.j, align 8, !tbaa !40
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !41
  %.not31 = icmp eq ptr %i.aa, null
  br i1 %.not31, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !42
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ad = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef %3, ptr noundef nonnull @.str.44) #5 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  ret i32 1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @DIST_POINT_set_dpname(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !24
  %.not21 = icmp eq i32 %i.a, 1
  br i1 %.not21, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = tail call ptr @X509_NAME_dup(ptr noundef %1) #5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !25
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = tail call i64 @OPENSSL_sk_num(ptr noundef %i.c) #5
  %.not26 = icmp eq i64 %i.f, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.025, 1                     ; 2 uses
  %i.h = tail call i64 @OPENSSL_sk_num(ptr noundef %i.c) #5
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.025 = phi i64 [ %i.g, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %i.j = tail call ptr @OPENSSL_sk_value(ptr noundef %i.c, i64 noundef %.025) #5
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not23 = icmp eq i64 %.025, 0
  %i.l = zext i1 %.not23 to i32
  %i.m = tail call i32 @X509_NAME_add_entry(ptr noundef %i.k, ptr noundef %i.j, i32 noundef -1, i32 noundef %i.l) #5
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %.sink.split, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.o = tail call i32 @i2d_X509_NAME(ptr noundef %i.n, ptr noundef null) #5
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %.lr.ph, %._crit_edge
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !25
  tail call void @X509_NAME_free(ptr noundef %i.q) #5
  store ptr null, ptr %i.e, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %._crit_edge, %bb.c, %bb.a, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %._crit_edge ], [ 0, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @X509_NAME_dup(ptr noundef) local_unnamed_addr #1

declare i32 @X509_NAME_add_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @X509_NAME_free(ptr noundef) local_unnamed_addr #1

declare i32 @i2d_X509_NAME(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @X509V3_get_section(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @v2i_GENERAL_NAME(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GENERAL_NAMES_new() local_unnamed_addr #1

declare void @GENERAL_NAME_free(ptr noundef) #1

declare void @GENERAL_NAMES_free(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @set_dist_point_name(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(9) @.str.7, i64 noundef 9) #6
end_hunk_0
