Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/date?download=true
inline.NumInlined: 105
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0
@.str.86 = private unnamed_addr constant [4 x i8] c"CDT\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"EST\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"EDT\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"AST\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"ADT\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"WAT\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"WET\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"BST\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"CET\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"MET\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"MEWT\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"MEST\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"CEST\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"MESZ\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"FWT\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"FST\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"EET\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"EEST\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"WAST\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"WADT\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"CCT\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"JST\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"EAST\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"EADT\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"GST\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"NZT\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"NZST\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"NZDT\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"%lu %c%02d%02d\00", align 1
@special = internal unnamed_addr constant [10 x %struct.special] [%struct.special { ptr @.str.134, ptr @date_yesterday }, %struct.special { ptr @.str.135, ptr @date_noon }, %struct.special { ptr @.str.136, ptr @date_midnight }, %struct.special { ptr @.str.137, ptr @date_tea }, %struct.special { ptr @.str.72, ptr @date_pm }, %struct.special { ptr @.str.73, ptr @date_am }, %struct.special { ptr @.str.28, ptr @date_never }, %struct.special { ptr @.str.31, ptr @date_now }, %struct.special { ptr @.str.138, ptr @date_today }, %struct.special zeroinitializer], align 16
@number_name = internal unnamed_addr constant [11 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], align 16
@.str.131 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"months\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"years\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"yesterday\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"noon\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"midnight\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"tea\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"minutes\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"hours\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"days\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"weeks\00", align 1
@typelen = internal unnamed_addr constant [6 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.150, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.151, i32 60, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.152, i32 3600, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.153, i32 86400, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.154, i32 604800, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -128849018880, 135291469762) i64 @tm_to_time_t(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = add i32 %i.b, -200
  %or.cond = icmp ult i32 %i.e, -130
  %or.cond3 = icmp ugt i32 %i.d, 11
  %or.cond30 = select i1 %or.cond, i1 true, i1 %or.cond3
  br i1 %or.cond30, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20
  %i.h = icmp samesign ult i32 %i.d, 2
  %i.i = and i32 %i.b, 3
  %.not = icmp ne i32 %i.i, 0
  %or.cond29.not = or i1 %i.h, %.not
  %i.j = sext i1 %or.cond29.not to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22   ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i32 %i.b, 365
  %i.t = add nsw i32 %i.s, -25550
  %i.u = add nsw i32 %i.b, -69
  %i.v = lshr i32 %i.u, 2
  %i.w = add nuw nsw i32 %i.t, %i.v
  %i.x = zext nneg i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @tm_to_time_t.mdays, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24
  %i.aa = add nsw i32 %i.w, %i.j
  %.0 = add i32 %i.aa, %i.g
  %i.ab = add i32 %.0, %i.z
  %i.ac = mul nsw i32 %i.ab, 1440
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ad, 60
  %i.af = mul nuw nsw i32 %i.l, 3600
  %i.ag = mul nuw nsw i32 %i.o, 60
  %i.ah = zext nneg i32 %i.q to i64
  %narrow = add nuw i32 %i.ag, %i.af
  %i.ai = zext i32 %narrow to i64
  %i.aj = add nuw nsw i64 %i.ai, %i.ah
  %i.ak = add nsw i64 %i.aj, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %bb.e
  %.023 = phi i64 [ %i.ak, %bb.e ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.c ]
  ret i64 %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @show_date_relative(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 4 uses
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.40) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #19, !inline_history !0
  %sext.i = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext.i, 32
  br label %get_time.exit

bb.c:                                             ; preds = %bb.a
  %i.d = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #19 ; 0 uses
  %.pre = load i64, ptr %2, align 8, !tbaa !26
  br label %get_time.exit

get_time.exit:                                    ; preds = %bb.b, %bb.c
  %i.e = phi i64 [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.f = icmp ult i64 %i.e, %0
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %get_time.exit
  %i.g = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i54 = icmp eq i32 %i.g, 0
  br i1 %.not.i54, label %_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #19
  br label %_.exit

_.exit:                                           ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.e ], [ @.str, %bb.d ] ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #20
  tail call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %i.i) #19
  br label %bb.ao

bb.f:                                             ; preds = %get_time.exit
  %i.j = sub nuw i64 %i.e, %0                     ; 5 uses
  %i.k = icmp ult i64 %i.j, 90
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i55 = icmp eq i32 %i.l, 0
  br i1 %.not.i55, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %i.j, 1
  %i.n = select i1 %i.m, ptr @.str.1, ptr @.str.2
  br label %Q_.exit

bb.i:                                             ; preds = %bb.g
  %i.o = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef range(i64 0, 584942417356) %i.j, i32 noundef 5) #19
  br label %Q_.exit

Q_.exit:                                          ; preds = %bb.h, %bb.i
  %.0.i56 = phi ptr [ %i.o, %bb.i ], [ %i.n, %bb.h ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i56, i64 noundef %i.j) #19
  br label %bb.ao

bb.j:                                             ; preds = %bb.f
  %i.p = add i64 %i.j, 30                         ; 7 uses
  %i.q = udiv i64 %i.p, 60                        ; 4 uses
  %i.r = icmp ult i64 %i.p, 5400
  br i1 %i.r, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i57 = icmp eq i32 %i.s, 0
  br i1 %.not.i57, label %Q_.exit59, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i64 noundef range(i64 0, 584942417356) %i.q, i32 noundef 5) #19
  br label %Q_.exit59

Q_.exit59:                                        ; preds = %bb.k, %bb.l
  %.0.i58 = phi ptr [ %i.t, %bb.l ], [ @.str.4, %bb.k ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i58, i64 noundef %i.q) #19
  br label %bb.ao

bb.m:                                             ; preds = %bb.j
  %i.u = add nuw nsw i64 %i.q, 30
  %i.v = udiv i64 %i.u, 60                        ; 4 uses
  %i.w = icmp ult i64 %i.p, 127800
  br i1 %i.w, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i60 = icmp eq i32 %i.x, 0
  br i1 %.not.i60, label %4, label %bb.o

4:                                                ; preds = %bb.n
  %.off89 = add nsw i64 %i.q, -30
  %5 = icmp ult i64 %.off89, 60
  %6 = select i1 %5, ptr @.str.5, ptr @.str.6
  br label %Q_.exit62

bb.o:                                             ; preds = %bb.n
  %i.y = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef range(i64 0, 584942417356) %i.v, i32 noundef 5) #19
  br label %Q_.exit62

Q_.exit62:                                        ; preds = %4, %bb.o
  %.0.i61 = phi ptr [ %i.y, %bb.o ], [ %6, %4 ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i61, i64 noundef %i.v) #19
  br label %bb.ao

bb.p:                                             ; preds = %bb.m
  %i.z = add nuw nsw i64 %i.v, 12
  %i.aa = udiv i64 %i.z, 24                       ; 9 uses
  %i.ab = icmp ult i64 %i.p, 1164600
  br i1 %i.ab, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i63 = icmp eq i32 %i.ac, 0
  br i1 %.not.i63, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.off88 = add nsw i64 %i.v, -12
  %i.ad = icmp ult i64 %.off88, 24
  %i.ae = select i1 %i.ad, ptr @.str.7, ptr @.str.8
  br label %Q_.exit65

bb.s:                                             ; preds = %bb.q
  %i.af = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i64 noundef range(i64 0, 584942417356) %i.aa, i32 noundef 5) #19
  br label %Q_.exit65

Q_.exit65:                                        ; preds = %bb.r, %bb.s
  %.0.i64 = phi ptr [ %i.af, %bb.s ], [ %i.ae, %bb.r ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i64, i64 noundef %i.aa) #19
  br label %bb.ao

bb.t:                                             ; preds = %bb.p
  %i.ag = icmp ult i64 %i.p, 6003000
  br i1 %i.ag, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ah = add nuw nsw i64 %i.aa, 3
  %i.ai = udiv i64 %i.ah, 7                       ; 2 uses
  %i.aj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i66 = icmp eq i32 %i.aj, 0
  br i1 %.not.i66, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.off87 = add nsw i64 %i.aa, -4
  %i.ak = icmp ult i64 %.off87, 7
  %i.al = select i1 %i.ak, ptr @.str.9, ptr @.str.10
  br label %Q_.exit68

bb.w:                                             ; preds = %bb.u
  %i.am = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef range(i64 0, 584942417356) %i.ai, i32 noundef 5) #19
  br label %Q_.exit68

Q_.exit68:                                        ; preds = %bb.v, %bb.w
  %.0.i67 = phi ptr [ %i.am, %bb.w ], [ %i.al, %bb.v ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i67, i64 noundef %i.ai) #19
  br label %bb.ao

bb.x:                                             ; preds = %bb.t
  %i.an = icmp ult i64 %i.p, 31491000
  br i1 %i.an, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ao = add nuw nsw i64 %i.aa, 15
  %i.ap = udiv i64 %i.ao, 30                      ; 2 uses
  %i.aq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i69 = icmp eq i32 %i.aq, 0
  br i1 %.not.i69, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.off86 = add nsw i64 %i.aa, -15
  %i.ar = icmp ult i64 %.off86, 30
  %i.as = select i1 %i.ar, ptr @.str.11, ptr @.str.12
  br label %Q_.exit71

bb.aa:                                            ; preds = %bb.y
  %i.at = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i64 noundef range(i64 0, 584942417356) %i.ap, i32 noundef 5) #19
  br label %Q_.exit71

Q_.exit71:                                        ; preds = %bb.z, %bb.aa
  %.0.i70 = phi ptr [ %i.at, %bb.aa ], [ %i.as, %bb.z ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i70, i64 noundef %i.ap) #19
  br label %bb.ao

bb.ab:                                            ; preds = %bb.x
  %i.au = icmp ult i64 %i.p, 157635000
  br i1 %i.au, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.av = mul nuw nsw i64 %i.aa, 24               ; 3 uses
  %i.aw = add nuw nsw i64 %i.av, 364              ; 2 uses
  %i.ax = udiv i64 %i.aw, 730
  %i.ay = udiv i64 %i.aw, 8760                    ; 4 uses
  %i.az = urem i64 %i.ax, 12                      ; 4 uses
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.show_date_relative.sb, i64 24, i1 false)
  %i.ba = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i72 = icmp eq i32 %i.ba, 0
  br i1 %.not.i72, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.off84 = add nsw i64 %i.av, -8400
  %i.bb = icmp ult i64 %.off84, 8760
  %i.bc = select i1 %i.bb, ptr @.str.13, ptr @.str.14
  br label %Q_.exit74

bb.af:                                            ; preds = %bb.ad
  %i.bd = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef range(i64 0, 584942417356) %i.ay, i32 noundef 5) #19
  br label %Q_.exit74

Q_.exit74:                                        ; preds = %bb.ae, %bb.af
  %.0.i73 = phi ptr [ %i.bd, %bb.af ], [ %i.bc, %bb.ae ]
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef %.0.i73, i64 noundef %i.ay) #19
  %i.be = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i75 = icmp eq i32 %i.be, 0
  br i1 %.not.i75, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %Q_.exit74
  %i.bf = icmp eq i64 %i.az, 1
  %i.bg = select i1 %i.bf, ptr @.str.15, ptr @.str.16
  br label %Q_.exit77

bb.ah:                                            ; preds = %Q_.exit74
  %i.bh = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i64 noundef range(i64 0, 584942417356) %i.az, i32 noundef 5) #19
  br label %Q_.exit77

Q_.exit77:                                        ; preds = %bb.ag, %bb.ah
  %.0.i76 = phi ptr [ %i.bh, %bb.ah ], [ %i.bg, %bb.ag ]
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !28
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i76, ptr noundef %i.bj, i64 noundef %i.az) #19
  call void @strbuf_release(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ac
  %i.bk = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i78 = icmp eq i32 %i.bk, 0
  br i1 %.not.i78, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.off85 = add nsw i64 %i.av, -8400
  %i.bl = icmp ult i64 %.off85, 8760
  %i.bm = select i1 %i.bl, ptr @.str.17, ptr @.str.18
  br label %Q_.exit80

bb.ak:                                            ; preds = %bb.ai
  %i.bn = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef range(i64 0, 584942417356) %i.ay, i32 noundef 5) #19
  br label %Q_.exit80

Q_.exit80:                                        ; preds = %bb.aj, %bb.ak
  %.0.i79 = phi ptr [ %i.bn, %bb.ak ], [ %i.bm, %bb.aj ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i79, i64 noundef %i.ay) #19
  br label %bb.ao

bb.al:                                            ; preds = %bb.ab
  %i.bo = add nuw nsw i64 %i.aa, 183
  %i.bp = udiv i64 %i.bo, 365                     ; 2 uses
  %i.bq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not.i81 = icmp eq i32 %i.bq, 0
  br i1 %.not.i81, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.off = add nsw i64 %i.aa, -182
  %i.br = icmp ult i64 %.off, 365
  %i.bs = select i1 %i.br, ptr @.str.17, ptr @.str.18
  br label %Q_.exit83

bb.an:                                            ; preds = %bb.al
  %i.bt = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef range(i64 0, 584942417356) %i.bp, i32 noundef 5) #19
  br label %Q_.exit83

Q_.exit83:                                        ; preds = %bb.am, %bb.an
  %.0.i82 = phi ptr [ %i.bt, %bb.an ], [ %i.bs, %bb.am ]
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef %.0.i82, i64 noundef %i.bp) #19
  br label %bb.ao

bb.ao:                                            ; preds = %Q_.exit77, %Q_.exit80, %Q_.exit83, %Q_.exit71, %Q_.exit68, %Q_.exit65, %Q_.exit62, %Q_.exit59, %Q_.exit, %_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @date_mode_from_type(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %0, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.19, i32 noundef 216, ptr noundef nonnull @.str.20) #21
  unreachable

end_hunk_0
