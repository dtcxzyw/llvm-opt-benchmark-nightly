Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/wkt2_parser?download=true
inline.NumInlined: 52
inline.NumDeleted: 33
begin_hunk_0
@.str.86 = private unnamed_addr constant [15 x i8] c"ENGINEERINGCRS\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"PARAMETRICDATUM\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"EPOCH\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"COORDEPOCH\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"COORDINATEMETADATA\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"POINTMOTIONOPERATION\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"AXISMINVALUE\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"AXISMAXVALUE\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"RANGEMEANING\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"exact\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"wraparound\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"DEFININGTRANSFORMATION\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"AFFINE\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"CARTESIAN\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"CYLINDRICAL\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"ELLIPSOIDAL\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"PARAMETRIC\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"POLAR\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"SPHERICAL\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"VERTICAL\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"TEMPORAL\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"TEMPORALCOUNT\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"TEMPORALMEASURE\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"ORDINAL\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"TEMPORALDATETIME\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"NORTH\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"NORTHNORTHEAST\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"NORTHEAST\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"EASTNORTHEAST\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"EAST\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"EASTSOUTHEAST\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"SOUTHEAST\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"SOUTHSOUTHEAST\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"SOUTH\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"SOUTHSOUTHWEST\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"SOUTHWEST\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"WESTSOUTHWEST\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"WEST\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"WESTNORTHWEST\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"NORTHWEST\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"NORTHNORTHWEST\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"GEOCENTRICX\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"GEOCENTRICY\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"GEOCENTRICZ\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"COLUMNPOSITIVE\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"COLUMNNEGATIVE\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"ROWPOSITIVE\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"ROWNEGATIVE\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"DISPLAYRIGHT\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"DISPLAYLEFT\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"DISPLAYUP\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"DISPLAYDOWN\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"FORWARD\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"AFT\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"STARBOARD\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"CLOCKWISE\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"COUNTERCLOCKWISE\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"TOWARDS\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"AWAYFROM\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"FUTURE\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"PAST\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"UNSPECIFIED\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @pj_wkt2_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z12pj_wkt_errorP20pj_wkt_parse_contextPKc(ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @_Z12pj_wkt_errorP20pj_wkt_parse_contextPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_Z13pj_wkt2_parseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.pj_wkt2_parse_context, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !13
  %i.e = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !16
  %i.h = invoke i32 @pj_wkt2_parse(ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !17
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.k, ptr %i.a, align 8, !tbaa !21
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %0, align 8, !tbaa !19
  %i.n = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.n, ptr %i.i, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !13
  store i8 %i.p, ptr %i.o, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !18
  %i.s = load ptr, ptr %0, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.f:                                             ; preds = %.noexc.i, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZN20pj_wkt_parse_contextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !13
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #9
  br label %_ZN20pj_wkt_parse_contextD2Ev.exit

_ZN20pj_wkt_parse_contextD2Ev.exit:               ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !18
  store i8 0, ptr %i.i, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.g
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZN20pj_wkt_parse_contextD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #9
  br label %_ZN20pj_wkt_parse_contextD2Ev.exit6

_ZN20pj_wkt_parse_contextD2Ev.exit6:              ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @pj_wkt2_parse(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @pj_wkt2_lex(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.d, %.critedge ] ; 20 uses
  %i.c = load i8, ptr %.0, align 1, !tbaa !13
  switch i8 %i.c, label %bb.c [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 10, label %.critedge
    i8 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !22

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0, ptr %i.e, align 8, !tbaa !15
  %i.f = load i8, ptr %.0, align 1, !tbaa !13     ; 3 uses
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.0, ptr %i.a, align 8, !tbaa !16
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.h = sext i8 %i.f to i32
  %i.i = tail call i32 @isalpha(i32 noundef %i.h) #10
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader80

.preheader80:                                     ; preds = %bb.e, %bb.h
  %.06585 = phi i64 [ %i.u, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZL6tokens, i64 %.06585 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !28  ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withEPKcS3_(ptr noundef nonnull %.0, ptr noundef %i.k) #8
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader80
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = sext i8 %i.o to i32
  %i.q = tail call i32 @isalpha(i32 noundef %i.p) #10
  %.not77 = icmp eq i32 %i.q, 0
  br i1 %.not77, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 %i.m
  store ptr %i.r, ptr %i.a, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29
  br label %bb.t

bb.h:                                             ; preds = %.preheader80, %bb.f
  %i.u = add nuw nsw i64 %.06585, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, 151
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.preheader80, !llvm.loop !23

.loopexit.loopexit:                               ; preds = %bb.h
  %.pre = load i8, ptr %.0, align 1, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %i.v = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.f, %bb.e ] ; 3 uses
  %i.w = add i8 %i.v, -48
  %or.cond = icmp ult i8 %i.w, 10
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.loopexit
  %.off = add nsw i8 %i.v, -49
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.j, label %.preheader105

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = add i8 %i.y, -48
  %or.cond78 = icmp ult i8 %i.z, 10
  br i1 %or.cond78, label %.preheader105, label %bb.k

.preheader105:                                    ; preds = %bb.i, %bb.j
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.x, ptr %i.a, align 8, !tbaa !16
  %i.aa = load i8, ptr %.0, align 1, !tbaa !13
  %i.ab = sext i8 %i.aa to i32
  br label %bb.t

bb.l:                                             ; preds = %.preheader105, %bb.l
  %.0.pn76 = phi ptr [ %.1, %bb.l ], [ %.0, %.preheader105 ]
  %.1 = getelementptr inbounds nuw i8, ptr %.0.pn76, i64 1 ; 3 uses
  %i.ac = load i8, ptr %.1, align 1, !tbaa !13
  %i.ad = add i8 %i.ac, -48
  %or.cond79 = icmp ult i8 %i.ad, 10
  br i1 %or.cond79, label %bb.l, label %.critedge2, !llvm.loop !24

.critedge2:                                       ; preds = %bb.l
  store ptr %.1, ptr %i.a, align 8, !tbaa !16
  br label %bb.t

bb.m:                                             ; preds = %.loopexit
  switch i8 %i.v, label %.tail.thread [
    i8 34, label %.preheader
    i8 -30, label %sub_1
  ]

.preheader:                                       ; preds = %bb.m, %.preheader.backedge
  %.0.pn = phi ptr [ %.0.pn.be, %.preheader.backedge ], [ %.0, %bb.m ] ; 2 uses
  %.2 = getelementptr inbounds nuw i8, ptr %.0.pn, i64 1 ; 3 uses
  %i.ae = load i8, ptr %.2, align 1, !tbaa !13
  switch i8 %i.ae, label %.preheader.backedge [
    i8 0, label %bb.o
    i8 34, label %bb.n
  ]

bb.n:                                             ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.0.pn, i64 2 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = icmp eq i8 %i.ag, 34
  br i1 %i.ah, label %.preheader.backedge, label %bb.p

.preheader.backedge:                              ; preds = %bb.n, %.preheader
  %.0.pn.be = phi ptr [ %i.af, %bb.n ], [ %.2, %.preheader ]
  br label %.preheader, !llvm.loop !25

bb.o:                                             ; preds = %.preheader
  store ptr %.2, ptr %i.a, align 8, !tbaa !16
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  store ptr %i.af, ptr %i.a, align 8, !tbaa !16
  br label %bb.t

sub_1:                                            ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %.not87 = icmp eq i8 %i.aj, -128
  br i1 %.not87, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, -100
  br i1 %i.am, label %bb.q, label %.tail.thread

bb.q:                                             ; preds = %.tail
  %i.an = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) @.str.1) #10 ; 3 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !16
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #10
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ap
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !16
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !16
  br label %bb.t

.tail.thread:                                     ; preds = %bb.m, %sub_1, %.tail
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store ptr %i.as, ptr %i.a, align 8, !tbaa !16
  %i.at = load i8, ptr %.0, align 1, !tbaa !13
  %i.au = sext i8 %i.at to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %.tail.thread, %bb.p, %bb.o, %.critedge2, %bb.k, %bb.g, %bb.d
  %.167 = phi i32 [ -1, %bb.d ], [ %i.t, %bb.g ], [ 410, %.critedge2 ], [ %i.ab, %bb.k ], [ -1, %bb.o ], [ 409, %bb.p ], [ -1, %bb.r ], [ 409, %bb.s ], [ %i.au, %.tail.thread ]
  ret i32 %.167
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withEPKcS3_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!4, !4, i64 0}
!14 = !{!"_ZTS20pj_wkt_parse_context", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24}
!15 = !{!14, !9, i64 8}
!16 = !{!14, !9, i64 16}
!17 = !{!10, !9, i64 0}
!18 = !{!12, !11, i64 8}
!19 = !{!12, !9, i64 0}
!20 = !{!14, !9, i64 0}
!21 = !{!11, !11, i64 0}
!22 = distinct !{!22, !26}
!23 = distinct !{!23, !26}
!24 = distinct !{!24, !26}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"_ZTS11wkt2_tokens", !9, i64 0, !5, i64 8}
!28 = !{!27, !9, i64 0}
!29 = !{!27, !5, i64 8}
end_hunk_0
