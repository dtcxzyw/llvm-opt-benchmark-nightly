Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/exif?download=true
inline.NumInlined: 662
inline.NumDeleted: 298
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv10ExifReader17processRawProfileEPKcm:bb.a
common.resume:                                    ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn56.pn.pn, %bb.av ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fm, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %.01734.i, i64 1 ; 2 uses
  store i8 %i.fk, ptr %i.b, align 1, !tbaa !16, !noalias !103
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !16, !noalias !103
  store i8 %i.fs, ptr %i.fh, align 1, !tbaa !16, !noalias !103
  store i8 0, ptr %i.fi, align 1, !tbaa !16, !noalias !103
  %i.ft = call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 16) #24
  %i.fu = trunc i64 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %.01635.i, i64 1
  store i8 %i.fu, ptr %.01635.i, align 1, !tbaa !16
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !99, !noalias !103
  %.not21.i = icmp eq ptr %i.fw, %i.fi
  %i.fx = add nuw i64 %.01933.i, 1
  br i1 %.not21.i, label %select.unfold.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !103
  br label %.critedge.i

select.unfold.i:                                  ; preds = %bb.al, %bb.aj
  %.120.ph.i = phi i64 [ %.01933.i, %bb.aj ], [ %i.fx, %bb.al ] ; 3 uses
  %.118.ph.i = phi ptr [ %.01734.i, %bb.aj ], [ %i.fr, %bb.al ]
  %.1.ph.i = phi ptr [ %.01635.i, %bb.aj ], [ %i.fv, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !103
  %i.fy = getelementptr inbounds nuw i8, ptr %.118.ph.i, i64 1
  %i.fz = icmp ult i64 %.120.ph.i, %i.fd
  br i1 %i.fz, label %bb.ai, label %.critedge.i, !llvm.loop !82

.critedge.i:                                      ; preds = %select.unfold.i, %bb.ai, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %.01932.i = phi i64 [ %.01933.i, %bb.am ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i ], [ %.120.ph.i, %select.unfold.i ], [ %.01933.i, %bb.ai ]
  %.not22.i = icmp eq i64 %.01932.i, %i.fd
  br i1 %.not22.i, label %_ZN2cvL16HexStringToBytesB5cxx11EPKcm.exit, label %bb.an

bb.an:                                            ; preds = %.critedge.i
  store i64 0, ptr %i.ff, align 8, !tbaa !15, !alias.scope !103
  %i.ga = load ptr, ptr %9, align 8, !tbaa !52, !alias.scope !103
  store i8 0, ptr %i.ga, align 1, !tbaa !16
  br label %_ZN2cvL16HexStringToBytesB5cxx11EPKcm.exit

_ZN2cvL16HexStringToBytesB5cxx11EPKcm.exit:       ; preds = %.critedge.i, %bb.an
  %i.gb = load i64, ptr %i.ff, align 8, !tbaa !15
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_ZN2cv10ExifReader9parseExifEPhm.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN2cvL16HexStringToBytesB5cxx11EPKcm.exit
  %sext47 = add i64 %sext, -25769803776           ; 2 uses
  %.not104 = icmp eq i64 %sext47, 0
  br i1 %.not104, label %_ZN2cv10ExifReader9parseExifEPhm.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gd = ashr exact i64 %sext47, 32
  %i.ge = load ptr, ptr %9, align 8, !tbaa !52
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 6 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gg)
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %bb.ap
  invoke void @_ZN2cv10ExifReader9parseExifEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !34
  %i.gj = icmp ne i64 %i.gi, 0
  br label %_ZN2cv10ExifReader9parseExifEPhm.exit

bb.ar:                                            ; preds = %.noexc
  %i.gk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN12_GLOBAL__N_116ExifParsingErrorE ; 3 uses
  %i.gl = extractvalue { ptr, i32 } %i.gk, 1
  %i.gm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN12_GLOBAL__N_116ExifParsingErrorE) #24
  %i.gn = icmp eq i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.as, label %.body96

bb.as:                                            ; preds = %bb.ar
  %i.go = extractvalue { ptr, i32 } %i.gk, 0
  %i.gp = call ptr @__cxa_begin_catch(ptr %i.go) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN2cv10ExifReader9parseExifEPhm.exit unwind label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.body96:                                          ; preds = %bb.ar, %bb.at
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.gq, %bb.at ], [ %i.gk, %bb.ar ]
  %i.gr = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.fe
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.body96
  %i.gt = load i64, ptr %i.fe, align 8, !tbaa !16
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.av

_ZN2cv10ExifReader9parseExifEPhm.exit:            ; preds = %bb.aq, %bb.ao, %bb.as, %_ZN2cvL16HexStringToBytesB5cxx11EPKcm.exit
  %.040 = phi i1 [ false, %_ZN2cvL16HexStringToBytesB5cxx11EPKcm.exit ], [ false, %bb.ao ], [ %i.gj, %bb.aq ], [ false, %bb.as ]
  %i.gv = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.fe
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZN2cv10ExifReader9parseExifEPhm.exit
  %i.gx = load i64, ptr %i.fe, align 8, !tbaa !16
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZN2cv10ExifReader9parseExifEPhm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit88, %bb.u, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.d, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.141 = phi i1 [ %.040, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ false, %bb.a ], [ false, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ false, %bb.d ], [ false, %bb.u ], [ false, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i1 %.141

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.ag, %bb.p
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %bb.p ], [ %.pn50.pn, %bb.ag ], [ %eh.lpad-body97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %common.resume
}

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #6

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10ExifReader9parseExifEPhm(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c)
  invoke void @_ZN2cv10ExifReader9parseExifEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = icmp ne i64 %i.e, 0
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr @_ZTIN12_GLOBAL__N_116ExifParsingErrorE ; 3 uses
  %i.h = extractvalue { ptr, i32 } %i.g, 1
  %i.i = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN12_GLOBAL__N_116ExifParsingErrorE) #24
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, i32 } %i.g, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #24 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.a ], [ %i.f, %bb.c ], [ false, %bb.e ]
  ret i1 %.0

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10ExifReader9parseExifEv(ptr noundef nonnull align 8 dereferenceable(76) initializes((72, 76)) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.cv::ExifEntry_t", align 8  ; 11 uses
  %2 = alloca %"struct.std::pair.13", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 17 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._ZNK2cv10ExifReader9getFormatEv.exit_crit_edge, label %bb.b

._ZNK2cv10ExifReader9getFormatEv.exit_crit_edge:  ; preds = %bb.a
  %.pre = ptrtoint ptr %i.b to i64
  %.pre32 = ptrtoint ptr %i.c to i64
  %.pre34 = sub i64 %.pre, %.pre32
  br label %_ZNK2cv10ExifReader9getFormatEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.f, %i.e                       ; 5 uses
  %i.h = icmp ugt i64 %i.g, 1
  %i.i = load i8, ptr %i.c, align 1, !tbaa !16    ; 3 uses
  br i1 %i.h, label %bb.c, label %thread-pre-split.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.i, %i.k
  br i1 %.not.i, label %thread-pre-split.i, label %_ZNK2cv10ExifReader9getFormatEv.exit

thread-pre-split.i:                               ; preds = %bb.c, %bb.b
  %i.l = icmp eq i8 %i.i, 73
  br i1 %i.l, label %_ZNK2cv10ExifReader9getFormatEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i
  %i.m = icmp eq i8 %i.i, 77
  %..i = select i1 %i.m, i32 77, i32 0
  br label %_ZNK2cv10ExifReader9getFormatEv.exit

_ZNK2cv10ExifReader9getFormatEv.exit:             ; preds = %._ZNK2cv10ExifReader9getFormatEv.exit_crit_edge, %bb.c, %bb.d
  %.pre-phi35 = phi i64 [ %.pre34, %._ZNK2cv10ExifReader9getFormatEv.exit_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.0.i = phi i32 [ 0, %._ZNK2cv10ExifReader9getFormatEv.exit_crit_edge ], [ 0, %bb.c ], [ %..i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.0.i, ptr %i.n, align 8, !tbaa !46
  %.not.i.i = icmp ugt i64 %.pre-phi35, 3
  br i1 %.not.i.i, label %bb.g, label %bb.e

_ZNK2cv10ExifReader9getFormatEv.exit.thread:      ; preds = %thread-pre-split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 73, ptr %i.o, align 8, !tbaa !46
  %.not.i.i20 = icmp ugt i64 %i.g, 3
  br i1 %.not.i.i20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK2cv10ExifReader9getFormatEv.exit.thread, %_ZNK2cv10ExifReader9getFormatEv.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 1) #24
  tail call void @__cxa_throw(ptr %i.p, ptr nonnull @_ZTIN12_GLOBAL__N_116ExifParsingErrorE, ptr null) #25
  unreachable

bb.f:                                             ; preds = %_ZNK2cv10ExifReader9getFormatEv.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.r = load i16, ptr %i.q, align 1
  br label %_ZNK2cv10ExifReader12checkTagMarkEv.exit

bb.g:                                             ; preds = %_ZNK2cv10ExifReader9getFormatEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %3 = load i16, ptr %i.s, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  br label %_ZNK2cv10ExifReader12checkTagMarkEv.exit

_ZNK2cv10ExifReader12checkTagMarkEv.exit:         ; preds = %bb.f, %bb.g
  %i.t = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %i.u = phi i64 [ %i.g, %bb.f ], [ %.pre-phi35, %bb.g ] ; 3 uses
  %.0.i.i = phi i16 [ %i.r, %bb.f ], [ %4, %bb.g ]
  %.not.i13 = icmp eq i16 %.0.i.i, 42
  br i1 %.not.i13, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZNK2cv10ExifReader12checkTagMarkEv.exit
  %.not.i.i14 = icmp ugt i64 %i.u, 7
  br i1 %.not.i.i14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @__cxa_allocate_exception(i64 1) #24
  tail call void @__cxa_throw(ptr %i.v, ptr nonnull @_ZTIN12_GLOBAL__N_116ExifParsingErrorE, ptr null) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.c, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  br i1 %i.t, label %_ZNK2cv10ExifReader14getStartOffsetEv.exit, label %_ZNK2cv10ExifReader14getStartOffsetEv.exit.thread

_ZNK2cv10ExifReader14getStartOffsetEv.exit:       ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.c, i64 5
  %i.aa = load i16, ptr %i.z, align 1
  %i.ab = zext i16 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 24
  %i.ah = or disjoint i32 %i.ac, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.y             ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %.not.i.i16 = icmp ult i64 %i.ak, %i.u
  br i1 %.not.i.i16, label %bb.l, label %bb.k

_ZNK2cv10ExifReader14getStartOffsetEv.exit.thread: ; preds = %bb.j
  %i.al = shl nuw i32 %i.y, 24
  %i.am = getelementptr i8, ptr %i.c, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16
  %i.aq = or disjoint i32 %i.ap, %i.al
  %i.ar = getelementptr i8, ptr %i.c, i64 6
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = or disjoint i32 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.av, %i.ay            ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %.not.i.i1624 = icmp ult i64 %i.bb, %i.u
  br i1 %.not.i.i1624, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK2cv10ExifReader14getStartOffsetEv.exit.thread, %_ZNK2cv10ExifReader14getStartOffsetEv.exit
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 1) #24
  tail call void @__cxa_throw(ptr %i.bc, ptr nonnull @_ZTIN12_GLOBAL__N_116ExifParsingErrorE, ptr null) #25
  unreachable

bb.l:                                             ; preds = %_ZNK2cv10ExifReader14getStartOffsetEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ak
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 8
  %i.bk = or disjoint i64 %i.bj, %i.bf
  br label %_ZNK2cv10ExifReader14getNumDirEntryEm.exit

bb.m:                                             ; preds = %_ZNK2cv10ExifReader14getStartOffsetEv.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bo, %i.br
  br label %_ZNK2cv10ExifReader14getNumDirEntryEm.exit

_ZNK2cv10ExifReader14getNumDirEntryEm.exit:       ; preds = %bb.l, %bb.m
  %.0.i.i152528 = phi i32 [ %i.ai, %bb.l ], [ %i.az, %bb.m ]
  %.0.i.i17 = phi i64 [ %i.bk, %bb.l ], [ %i.bs, %bb.m ] ; 2 uses
  %.not = icmp eq i64 %.0.i.i17, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2cv10ExifReader14getNumDirEntryEm.exit
  %i.bt = add i32 %.0.i.i152528, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN2cv11ExifEntry_tD2Ev.exit
  %.031 = phi i32 [ %i.bt, %.lr.ph ], [ %i.db, %_ZN2cv11ExifEntry_tD2Ev.exit ] ; 2 uses
  %.01130 = phi i64 [ 0, %.lr.ph ], [ %i.dl, %_ZN2cv11ExifEntry_tD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.cf = zext i32 %.031 to i64
  call void @_ZN2cv10ExifReader14parseExifEntryEm(ptr dead_on_unwind nonnull writable sret(%"struct.cv::ExifEntry_t") align 8 %1, ptr noundef nonnull align 8 dereferenceable(76) %0, i64 noundef %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.cg = load i16, ptr %i.bu, align 8, !tbaa !56, !noalias !108
  store i16 %i.cg, ptr %2, align 8, !tbaa !110, !alias.scope !108
  invoke void @_ZN2cv11ExifEntry_tC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %i.bv, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit unwind label %bb.s

_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit: ; preds = %bb.n
  %i.ch = load i16, ptr %2, align 8, !tbaa !110
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cj, %_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.by, %_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !49
  %i.cm = icmp slt i32 %i.cl, %i.ci               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !106

_ZNSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.cn = icmp eq ptr %.19.i.i.i.i, %i.by
  br i1 %i.cn, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !49
  %i.cq = icmp sgt i32 %i.cp, %i.ci
  br i1 %i.cq, label %.critedge.i, label %bb.p

.critedge.i:                                      ; preds = %bb.o, %_ZNSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i, %_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit
  %.08.lcssa.i.i.i16.i = phi ptr [ %.19.i.i.i.i, %bb.o ], [ %.19.i.i.i.i, %_ZNSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_.exit.i ], [ %i.by, %_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit ]
  %i.cr = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE22_M_emplace_hint_uniqueIJS0_ItS3_EEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr %.08.lcssa.i.i.i16.i, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.p unwind label %bb.t       ; 0 uses

bb.p:                                             ; preds = %bb.o, %.critedge.i
  %i.cs = load ptr, ptr %i.bz, align 8, !tbaa !52 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ca
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.cu = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cw = load ptr, ptr %i.bv, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairItN2cv11ExifEntry_tEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.cx = load ptr, ptr %i.cb, align 8, !tbaa !54
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #23
  br label %_ZNSt4pairItN2cv11ExifEntry_tEED2Ev.exit

_ZNSt4pairItN2cv11ExifEntry_tEED2Ev.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.db = add i32 %.031, 12
  %i.dc = load ptr, ptr %i.cc, align 8, !tbaa !52 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cd
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairItN2cv11ExifEntry_tEED2Ev.exit
  %i.de = load i64, ptr %i.cd, align 8, !tbaa !16
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt4pairItN2cv11ExifEntry_tEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dg = load ptr, ptr %1, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv11ExifEntry_tD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dh = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dk) #23
  br label %_ZN2cv11ExifEntry_tD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZNK2cv10ExifReader8getRefBWEm:bb.a
  %i.bd = zext i32 %i.bc to i64
  %i.be = invoke i64 @_ZNK2cv10ExifReader12getURationalEm(ptr noundef nonnull align 8 dereferenceable(76) %1, i64 noundef %i.bd)
          to label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2 unwind label %.thread59

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.i.preheader.1
  %i.bf = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc13.2 unwind label %.thread59 ; 14 uses

.noexc13.2:                                       ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.be, ptr %i.bg, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %wide.load = load <2 x i64>, ptr %i.ax, align 4, !alias.scope !185, !noalias !184
  store <2 x i64> %wide.load, ptr %i.bf, align 4, !alias.scope !184, !noalias !185
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 16) #23
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 6 uses
  store ptr %i.bi, ptr %i.ap, align 8, !tbaa !54
  %i.bj = add i32 %.0.i, 24
  %i.bk = zext i32 %i.bj to i64
  %i.bl = invoke i64 @_ZNK2cv10ExifReader12getURationalEm(ptr noundef nonnull align 8 dereferenceable(76) %1, i64 noundef %i.bk)
          to label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3 unwind label %.thread59

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3: ; preds = %.noexc13.2
  store i64 %i.bl, ptr %i.bh, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 4 uses
  store ptr %i.bm, ptr %i.ao, align 8, !tbaa !58
  %i.bn = add i32 %.0.i, 32
  %i.bo = zext i32 %i.bn to i64
  %i.bp = invoke i64 @_ZNK2cv10ExifReader12getURationalEm(ptr noundef nonnull align 8 dereferenceable(76) %1, i64 noundef %i.bo)
          to label %bb.f unwind label %.thread59  ; 2 uses

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3
  %.not.i.i.4 = icmp eq ptr %i.bm, %i.bi
  br i1 %.not.i.i.4, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.4, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.bp, ptr %i.bm, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.ao, align 8, !tbaa !58
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.4

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.4: ; preds = %bb.f
  %i.br = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %.noexc13.4 unwind label %.thread59 ; 8 uses

.noexc13.4:                                       ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i64 %i.bp, ptr %i.bs, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.bt = load i64, ptr %i.bf, align 4, !alias.scope !187, !noalias !186
  store i64 %i.bt, ptr %i.br, align 4, !alias.scope !186, !noalias !187
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0911.i.i.i.i.i.i.4.ptr.1 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i.i.4.ptr.1, align 4, !alias.scope !189, !noalias !188
  store i64 %i.bv, ptr %i.bu, align 4, !alias.scope !188, !noalias !189
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.0911.i.i.i.i.i.i.4.ptr.2 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i.i.4.ptr.2, align 4, !alias.scope !191, !noalias !190
  store i64 %i.bx, ptr %i.bw, align 4, !alias.scope !190, !noalias !191
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.0911.i.i.i.i.i.i.4.ptr.3 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i.i.4.ptr.3, align 4, !alias.scope !193, !noalias !192
  store i64 %i.bz, ptr %i.by, align 4, !alias.scope !192, !noalias !193
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 32) #23
  store ptr %i.cb, ptr %i.ao, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 64 ; 2 uses
  store ptr %i.cc, ptr %i.ap, align 8, !tbaa !54
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.4

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.4: ; preds = %.noexc13.4, %bb.g
  %i.cd = phi ptr [ %i.cc, %.noexc13.4 ], [ %i.bi, %bb.g ] ; 7 uses
  %i.ce = phi ptr [ %i.cb, %.noexc13.4 ], [ %i.bq, %bb.g ] ; 3 uses
  %i.cf = phi ptr [ %i.br, %.noexc13.4 ], [ %i.bf, %bb.g ] ; 9 uses
  %i.cg = add i32 %.0.i, 40
  %i.ch = zext i32 %i.cg to i64
  %i.ci = invoke i64 @_ZNK2cv10ExifReader12getURationalEm(ptr noundef nonnull align 8 dereferenceable(76) %1, i64 noundef %i.ch)
          to label %bb.h unwind label %.thread59  ; 2 uses

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.4
  %.not.i.i.5 = icmp eq ptr %i.ce, %i.cd
  br i1 %.not.i.i.5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.ci, ptr %i.ce, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cj, ptr %i.ao, align 8, !tbaa !58
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.5

bb.j:                                             ; preds = %bb.h
  %i.ck = ptrtoint ptr %i.cd to i64
  %i.cl = ptrtoint ptr %i.cf to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 4 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.e, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.5

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.5: ; preds = %bb.j
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.5 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i.i.5, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i.i.i.5 = icmp ne i64 %i.cs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.5)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #26
          to label %.noexc13.5 unwind label %.thread59 ; 5 uses

.noexc13.5:                                       ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm
  store i64 %i.ci, ptr %i.cv, align 4
  %.not10.i.i.i.i.i.i.5 = icmp eq ptr %i.cf, %i.cd
  br i1 %.not10.i.i.i.i.i.i.5, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.5, label %.lr.ph.i.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.i.5:                             ; preds = %.noexc13.5, %.lr.ph.i.i.i.i.i.i.5
  %.012.i.i.i.i.i.i.5 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.5 ], [ %i.cu, %.noexc13.5 ] ; 2 uses
  %.0911.i.i.i.i.i.i.5 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.5 ], [ %i.cf, %.noexc13.5 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i.5, align 4, !alias.scope !195, !noalias !194
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i.5, align 4, !alias.scope !194, !noalias !195
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.5, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.5, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.5 = icmp eq ptr %i.cx, %i.cd
  br i1 %.not.i.i.i.i.i.i.5, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.5, label %.lr.ph.i.i.i.i.i.i.5, !llvm.loop !0

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.5: ; preds = %.lr.ph.i.i.i.i.i.i.5, %.noexc13.5
  %.0.lcssa.i.i.i.i.i.i.5 = phi ptr [ %i.cu, %.noexc13.5 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.5 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.5, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cm) #23
  store ptr %i.cz, ptr %i.ao, align 8, !tbaa !58
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.da, ptr %i.ap, align 8, !tbaa !54
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.5

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.5: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.5, %bb.i
  %i.db = phi ptr [ %i.cu, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.5 ], [ %i.cf, %bb.i ]
  store ptr %i.db, ptr %0, align 8
  ret void

.thread55:                                        ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.thread59:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1, %.lr.ph.i.i.i.i.i.i.preheader.1, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2, %.noexc13.2, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.4, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.4, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.5
  %.ph = phi ptr [ %i.cd, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.5 ], [ %i.cd, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.4 ], [ %i.bi, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.4 ], [ %i.bi, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3 ], [ %i.at, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit ], [ %i.bi, %.noexc13.2 ], [ %i.bb, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2 ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.preheader.1 ], [ %i.at, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ]
  %.lcssa20.ph = phi ptr [ %i.cf, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.5 ], [ %i.cf, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.4 ], [ %i.bf, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.4 ], [ %i.bf, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3 ], [ %i.as, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit ], [ %i.bf, %.noexc13.2 ], [ %i.ax, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2 ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.preheader.1 ], [ %i.as, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ] ; 2 uses
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  store ptr %.lcssa20.ph, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNK2cv10ExifReader6getU32Em.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

bb.l:                                             ; preds = %.thread59, %.thread55
  %.pn58 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread55 ], [ %lpad.thr_comm, %.thread59 ]
  %i.dc = phi ptr [ %i.cf, %.thread55 ], [ %.lcssa20.ph, %.thread59 ] ; 2 uses
  %i.dd = phi ptr [ %i.cd, %.thread55 ], [ %.ph, %.thread59 ]
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #23
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %bb.k, %bb.l
  %.pn54 = phi { ptr, i32 } [ %.pn58, %bb.l ], [ %lpad.thr_comm.split-lp, %bb.k ]
  resume { ptr, i32 } %.pn54
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define hidden i64 @_ZNK2cv10ExifReader12getURationalEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = add i64 %1, 3                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.a, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 1) #24
  tail call void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN12_GLOBAL__N_116ExifParsingErrorE, ptr null) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46
  %i.k = icmp eq i32 %i.j, 73
  %i.l = getelementptr i8, ptr %i.d, i64 %1       ; 8 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add i64 %1, 7                            ; 3 uses
  %.not.i2 = icmp ult i64 %i.o, %i.g              ; 2 uses
  br i1 %i.k, label %_ZNK2cv10ExifReader6getU32Em.exit, label %_ZNK2cv10ExifReader6getU32Em.exit.thread

_ZNK2cv10ExifReader6getU32Em.exit:                ; preds = %bb.c
  br i1 %.not.i2, label %bb.e, label %bb.d

_ZNK2cv10ExifReader6getU32Em.exit.thread:         ; preds = %bb.c
  br i1 %.not.i2, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK2cv10ExifReader6getU32Em.exit.thread, %_ZNK2cv10ExifReader6getU32Em.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 1) #24
  tail call void @__cxa_throw(ptr %i.p, ptr nonnull @_ZTIN12_GLOBAL__N_116ExifParsingErrorE, ptr null) #25
  unreachable

bb.e:                                             ; preds = %_ZNK2cv10ExifReader6getU32Em.exit
  %i.q = getelementptr i8, ptr %i.l, i64 1
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.a
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw i32 %i.w, 24
  %i.y = or disjoint i32 %i.t, %i.x
  %i.z = or disjoint i32 %i.y, %i.n
  %i.aa = getelementptr i8, ptr %i.l, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.l, i64 5
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 24
  %i.al = or disjoint i64 %i.ag, %i.ac
  %i.am = or disjoint i64 %i.al, %i.ak
  br label %_ZNK2cv10ExifReader6getU32Em.exit4

bb.f:                                             ; preds = %_ZNK2cv10ExifReader6getU32Em.exit.thread
  %i.an = getelementptr i8, ptr %i.l, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 16
  %i.ar = shl nuw i32 %i.n, 24
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = getelementptr i8, ptr %i.l, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = or disjoint i32 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.a
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ax, %i.ba
  %i.bc = getelementptr i8, ptr %i.l, i64 4
  %2 = load i16, ptr %i.bc, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = zext i16 %3 to i64
  %5 = shl nuw nsw i64 %4, 16
  %6 = getelementptr i8, ptr %i.l, i64 6
  %7 = load i8, ptr %6, align 1, !tbaa !16
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 8
  %10 = or disjoint i64 %5, %9
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %i.bd = zext i8 %12 to i64
  %13 = or disjoint i64 %10, %i.bd
  br label %_ZNK2cv10ExifReader6getU32Em.exit4

_ZNK2cv10ExifReader6getU32Em.exit4:               ; preds = %bb.e, %bb.f
  %.0.i810 = phi i32 [ %i.z, %bb.e ], [ %i.bb, %bb.f ]
  %.0.i3 = phi i64 [ %i.am, %bb.e ], [ %13, %bb.f ]
  %.sroa.2.0.insert.ext.i = shl nuw i64 %.0.i3, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i810 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !197  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #23
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit

_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 128) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !196

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !53     ; 21 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = load ptr, ptr %0, align 8, !tbaa !53     ; 22 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, !prof !57

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -8
  %i.r = sub i64 %i.q, %i.e
  %i.s = and i64 %i.r, -8
  %i.t = add i64 %i.s, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !53     ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #23
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.z, ptr %i.h, align 8, !tbaa !54
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58 ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.l                     ; 5 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.g, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.af = add i64 %i.f, -4                        ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.j, i64 4
  %i.aj = getelementptr i8, ptr %i.j, i64 %i.f
  %i.ak = getelementptr i8, ptr %i.c, i64 4
  %bound0 = icmp ult ptr %i.j, %i.ah
  %bound1 = icmp ult ptr %i.c, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %i.ai, %i.b
  %bound152 = icmp ult ptr %i.ak, %i.aj
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.al = and i64 %i.g, 3
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.j, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.c, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ap
  %next.gep54 = getelementptr i8, ptr %i.j, i64 %i.aq
  %next.gep55 = getelementptr i8, ptr %i.c, i64 %i.ap
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep55, align 4, !tbaa !49
  %wide.vec58 = load <4 x i32>, ptr %next.gep56, align 4, !tbaa !49
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !49
  store <4 x i32> %wide.vec58, ptr %next.gep54, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader110

.lr.ph.i.i.i.i.i.preheader110:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader110, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #27 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !49
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !49 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !50 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !208

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #27 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #27 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !49
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !50 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !49 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !50 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !208

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !49
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit

_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 128) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !5, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!5, !5, i64 0}
!17 = !{!"p1 _ZTSSt4pairIjjE", !9, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseISt4pairIjjESaIS1_EE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorISt4pairIjjESaIS1_EE", !20, i64 0}
!22 = !{!"float", !5, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!"short", !5, i64 0}
!25 = !{!"_ZTSN2cv11ExifEntry_tE", !21, i64 0, !14, i64 24, !22, i64 56, !23, i64 64, !6, i64 72, !6, i64 76, !24, i64 80, !24, i64 82, !24, i64 84, !5, i64 86, !5, i64 87}
!26 = !{!25, !22, i64 56}
!27 = !{!25, !24, i64 80}
!28 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!29 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!30 = !{!"_ZTSSt18_Rb_tree_node_base", !28, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!31 = !{!"_ZTSSt15_Rb_tree_header", !30, i64 0, !13, i64 32}
!32 = !{!31, !29, i64 8}
!33 = !{!31, !29, i64 16}
!34 = !{!31, !13, i64 32}
!35 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIhSaIhEE", !37, i64 0}
!39 = !{!"_ZTSSt4lessIiE"}
!40 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !39, i64 0}
!41 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !40, i64 0, !31, i64 8}
!42 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE", !41, i64 0}
!43 = !{!"_ZTSSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE", !42, i64 0}
!44 = !{!"_ZTSN2cv12Endianness_tE", !5, i64 0}
!45 = !{!"_ZTSN2cv10ExifReaderE", !38, i64 0, !43, i64 24, !44, i64 72}
!46 = !{!45, !44, i64 72}
!47 = !{!35, !10, i64 0}
!48 = !{!35, !10, i64 16}
!49 = !{!6, !6, i64 0}
!50 = !{!29, !29, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!14, !10, i64 0}
!53 = !{!18, !17, i64 0}
!54 = !{!18, !17, i64 16}
!55 = !{!35, !10, i64 8}
!56 = !{!24, !24, i64 0}
!57 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!58 = !{!18, !17, i64 8}
!59 = !{!17, !17, i64 0}
!60 = !{!13, !13, i64 0}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!30, !29, i64 24}
!64 = !{!"p1 _ZTSSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE", !9, i64 0}
!65 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKiN2cv11ExifEntry_tEEE", !9, i64 0}
!66 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE10_Auto_nodeE", !64, i64 0, !65, i64 8}
!67 = !{!66, !65, i64 8}
!68 = !{!31, !28, i64 0}
!69 = !{!31, !29, i64 24}
!70 = distinct !{!70, !51}
!71 = distinct !{!71, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!72 = distinct !{!72, !71, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!73 = distinct !{!73, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!74 = distinct !{!74, !73, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = distinct !{!75, !51}
!76 = distinct !{!76, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!77 = distinct !{!77, !76, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!78 = distinct !{!78, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!79 = distinct !{!79, !78, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!80 = distinct !{!80, !"_ZN2cvL16HexStringToBytesB5cxx11EPKcm"}
!81 = distinct !{!81, !80, !"_ZN2cvL16HexStringToBytesB5cxx11EPKcm: argument 0"}
!82 = distinct !{!82, !51}
!83 = !{!"_ZTSN2cv5utils7logging8LogLevelE", !5, i64 0}
!84 = !{!"_ZTSN2cv5utils7logging6LogTagE", !10, i64 0, !83, i64 8}
!85 = !{!84, !83, i64 8}
!86 = !{!84, !10, i64 0}
!87 = !{!72}
!88 = !{!74}
!89 = !{!74, !72}
!90 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!91 = !{!"_ZTSSt6locale", !90, i64 0}
!92 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !91, i64 56}
!93 = !{!92, !10, i64 40}
!94 = !{!92, !10, i64 32}
!95 = !{!"vtable pointer", !4, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!"_ZTSSi", !13, i64 8}
!98 = !{!97, !13, i64 8}
!99 = !{!10, !10, i64 0}
!100 = !{!77}
!101 = !{!79}
!102 = !{!79, !77}
!103 = !{!81}
!104 = distinct !{!104, !"_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!105 = distinct !{!105, !104, !"_ZSt9make_pairIRtRN2cv11ExifEntry_tEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!106 = distinct !{!106, !51}
!107 = distinct !{!107, !51}
!108 = !{!105}
!109 = !{!"_ZTSSt4pairItN2cv11ExifEntry_tEE", !24, i64 0, !25, i64 8}
!110 = !{!109, !24, i64 0}
!111 = distinct !{!111, !"_ZNK2cv10ExifReader13getResolutionEm"}
!112 = distinct !{!112, !111, !"_ZNK2cv10ExifReader13getResolutionEm: argument 0"}
!113 = distinct !{!113, !"_ZNK2cv10ExifReader13getResolutionEm"}
!114 = distinct !{!114, !113, !"_ZNK2cv10ExifReader13getResolutionEm: argument 0"}
!115 = !{!25, !24, i64 82}
!116 = !{!112}
!117 = !{!114}
!118 = distinct !{!118, !51, !61, !62}
!119 = distinct !{!119, !51, !61, !62}
!120 = distinct !{!120, !123}
!121 = distinct !{!121, !51, !61}
!122 = !{!"branch_weights", i32 8, i32 24}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = distinct !{!124, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_"}
!125 = distinct !{!125, !124, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!126 = distinct !{!126, !124, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!127 = !{!125}
!128 = !{!126}
!129 = distinct !{!129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_"}
!130 = distinct !{!130, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It1"}
!131 = distinct !{!131, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It1"}
!132 = distinct !{!132, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It2"}
!133 = distinct !{!133, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It2"}
!134 = distinct !{!134, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It4"}
!135 = distinct !{!135, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It4"}
!136 = distinct !{!136, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It4:It1"}
!137 = distinct !{!137, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It4:It1"}
!138 = distinct !{!138, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It4:It2"}
!139 = distinct !{!139, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It4:It2"}
!140 = distinct !{!140, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It4:It3"}
!141 = distinct !{!141, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It4:It3"}
!142 = distinct !{!142, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It5"}
!143 = distinct !{!143, !129, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It5"}
!144 = !{!130}
!145 = !{!131}
!146 = !{!132}
!147 = !{!133}
!148 = !{!134}
!149 = !{!135}
!150 = !{!136}
!151 = !{!137}
!152 = !{!138}
!153 = !{!139}
!154 = !{!140}
!155 = !{!141}
!156 = !{!142}
!157 = !{!143}
!158 = distinct !{!158, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_"}
!159 = distinct !{!159, !158, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It1"}
!160 = distinct !{!160, !158, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It1"}
!161 = distinct !{!161, !158, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It2"}
!162 = distinct !{!162, !158, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It2"}
!163 = !{!159}
!164 = !{!160}
!165 = !{!161}
end_hunk_2
