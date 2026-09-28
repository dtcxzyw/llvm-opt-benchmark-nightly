Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/base64_decoder_data_destination?download=true
inline.NumInlined: 268
inline.NumDeleted: 156
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.19" = type { i8 }
%"class.photos_editing_formats::image_io::DataRange" = type { i64, i64 }
%"class.std::shared_ptr.22" = type { %"class.std::__shared_ptr.23" }
%"class.std::__shared_ptr.23" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN22photos_editing_formats8image_io28Base64DecoderDataDestinationE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io28Base64DecoderDataDestinationE, ptr @_ZN22photos_editing_formats8image_io28Base64DecoderDataDestinationD2Ev, ptr @_ZN22photos_editing_formats8image_io28Base64DecoderDataDestinationD0Ev, ptr @_ZN22photos_editing_formats8image_io28Base64DecoderDataDestination13StartTransferEv, ptr @_ZN22photos_editing_formats8image_io28Base64DecoderDataDestination8TransferERKNS0_9DataRangeERKNS0_11DataSegmentE, ptr @_ZN22photos_editing_formats8image_io28Base64DecoderDataDestination14FinishTransferEv, ptr @_ZNK22photos_editing_formats8image_io28Base64DecoderDataDestination19GetBytesTransferredEv] }, align 8
@_ZTIN22photos_editing_formats8image_io28Base64DecoderDataDestinationE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io28Base64DecoderDataDestinationE, ptr @_ZTIN22photos_editing_formats8image_io15DataDestinationE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN22photos_editing_formats8image_io28Base64DecoderDataDestinationE = constant [66 x i8] c"N22photos_editing_formats8image_io28Base64DecoderDataDestinationE\00", align 1
@_ZTIN22photos_editing_formats8image_io15DataDestinationE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io15DataDestinationE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN22photos_editing_formats8image_io15DataDestinationE = linkonce_odr constant [53 x i8] c"N22photos_editing_formats8image_io15DataDestinationE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io28Base64DecoderDataDestination13StartTransferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN22photos_editing_formats8image_io28Base64DecoderDataDestination8TransferERKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::allocator.19", align 1 ; 4 uses
  %6 = alloca %"class.photos_editing_formats::image_io::DataRange", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.22", align 8 ; 7 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !42     ; 6 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !42     ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.a, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp uge i64 %i.a, %i.d
  %.not169 = select i1 %.not.i.i.i, i1 true, i1 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.a, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 5 uses
  %.not167 = icmp eq ptr %i.g, null
  %.not = select i1 %.not169, i1 true, i1 %.not167
  br i1 %.not, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !43   ; 3 uses
  %i.l = icmp ult i64 %i.a, %i.k
  br i1 %i.l, label %bb.c, label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !22, !range !44, !noundef !45
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %._crit_edge171, label %bb.e

._crit_edge171:                                   ; preds = %bb.d
  %.pre172 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.a)
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %spec.select.i = sub nuw i64 %i.k, %i.a
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = and i64 %i.w, 3
  %i.y = sub nuw nsw i64 4, %i.x
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %spec.select.i) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.speculated
  %i.aa = getelementptr inbounds i8, ptr %i.q, i64 %i.w
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr nonnull %i.aa, ptr noundef nonnull %i.i, ptr noundef nonnull %i.z)
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !46  ; 2 uses
  %i.ac = load i64, ptr %1, align 8, !tbaa !42
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !43
  %spec.select.i87 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ad, i64 %i.ac) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated, %spec.select.i87
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.af = ptrtoint ptr %.pre to i64               ; 2 uses
  br i1 %i.ae, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = and i64 %i.ah, 3
  %.not68 = icmp eq i64 %i.ai, 0
  br i1 %.not68, label %._crit_edge, label %_ZNSt6vectorIhSaIhEED2Ev.exit

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.al = ptrtoint ptr %i.ak to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge171, %._crit_edge
  %spec.select.i88.pre-phi = phi i64 [ %.pre172, %._crit_edge171 ], [ %spec.select.i87, %._crit_edge ]
  %.sroa.15.0 = phi i64 [ 0, %._crit_edge171 ], [ %i.al, %._crit_edge ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 0, %._crit_edge171 ], [ %i.af, %._crit_edge ]
  %.sroa.0133.0 = phi ptr [ null, %._crit_edge171 ], [ %i.ab, %._crit_edge ] ; 7 uses
  %.062 = phi i64 [ 0, %._crit_edge171 ], [ %.sroa.speculated, %._crit_edge ] ; 3 uses
  %i.am = sub i64 %spec.select.i88.pre-phi, %.062 ; 2 uses
  %i.an = ptrtoint ptr %.sroa.0133.0 to i64       ; 3 uses
  %i.ao = sub i64 %.sroa.11.0, %i.an              ; 4 uses
  %i.ap = lshr i64 %i.ao, 2                       ; 3 uses
  %i.aq = mul nuw i64 %i.ap, 3
  %i.ar = lshr i64 %i.am, 2                       ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, %i.ap
  %i.at = mul i64 %i.as, 3                        ; 2 uses
  %i.au = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #12
          to label %bb.h unwind label %bb.n       ; 5 uses

bb.h:                                             ; preds = %bb.g
  %.not69 = icmp eq i64 %i.ap, 0
  br i1 %.not69, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp ugt i64 %i.ao, 2
  br i1 %i.av, label %bb.j, label %.thread.thread17.i

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr i8, ptr %.sroa.0133.0, i64 %i.ao ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !25
  %i.az = icmp eq i8 %i.ay, 61
  br i1 %i.az, label %.thread.i, label %.thread.thread17.i

.thread.i:                                        ; preds = %bb.j
  %.phi.trans.insert15.i = getelementptr i8, ptr %i.aw, i64 -2
  %.pre.i = load i8, ptr %.phi.trans.insert15.i, align 1, !tbaa !25
  %i.ba = icmp eq i8 %.pre.i, 61
  %spec.select171 = select i1 %i.ba, i64 2, i64 1
  br label %.thread.thread17.i

.thread.thread17.i:                               ; preds = %.thread.i, %bb.i, %bb.j
  %.sink.i = phi i64 [ 0, %bb.i ], [ %spec.select171, %.thread.i ], [ 0, %bb.j ] ; 2 uses
  %sext.i = shl i64 %i.ao, 32
  %i.bb = ashr exact i64 %sext.i, 32
  %i.bc = invoke i64 @modp_b64_decode(ptr noundef nonnull %i.au, ptr noundef %.sroa.0133.0, i64 noundef %i.bb)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %.thread.thread17.i
  %i.bd = trunc i64 %i.bc to i32
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = add nuw nsw i64 %.sink.i, %i.bf
  %.not70 = icmp eq i64 %i.bg, %i.aq
  br i1 %.not70, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %.not81 = icmp eq ptr %i.bi, null
  br i1 %.not81, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !30
  store i8 0, ptr %i.bj, align 8, !tbaa !25
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bl = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bj
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.n:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114

bb.o:                                             ; preds = %.thread.thread17.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i113

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bj
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.p
  %i.bu = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i113

bb.q:                                             ; preds = %bb.k, %bb.h
  %.0 = phi i64 [ 0, %bb.h ], [ %.sink.i, %bb.k ]
  %.046 = phi i64 [ 0, %bb.h ], [ %i.bf, %bb.k ]  ; 3 uses
  %.not71 = icmp eq i64 %i.ar, 0
  br i1 %.not71, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.062 ; 2 uses
  %i.bx = and i64 %i.am, -4                       ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 %.046
  %.not170 = icmp eq i64 %i.bx, 0
  br i1 %.not170, label %.thread.thread17.i92, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr i8, ptr %i.bw, i64 %i.bx  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !25
  %i.cc = icmp eq i8 %i.cb, 61
  br i1 %i.cc, label %bb.t, label %.thread.thread17.i92

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr i8, ptr %i.bz, i64 -2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !25
  %i.cf = icmp eq i8 %i.ce, 61
  %spec.select = select i1 %i.cf, i64 2, i64 1
  br label %.thread.thread17.i92

.thread.thread17.i92:                             ; preds = %bb.t, %bb.r, %bb.s
  %.sink.i93 = phi i64 [ 0, %bb.r ], [ %spec.select, %bb.t ], [ 0, %bb.s ]
  %sext.i94 = shl i64 %i.bx, 32
  %i.cg = ashr exact i64 %sext.i94, 32
  %i.ch = invoke i64 @modp_b64_decode(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bw, i64 noundef %i.cg)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %.thread.thread17.i92
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %.046, %i.ck            ; 2 uses
  %i.cm = add nuw nsw i64 %.sink.i93, %.0
  %i.cn = add nuw nsw i64 %i.cm, %i.cl
  %.not72 = icmp eq i64 %i.cn, %i.at
  br i1 %.not72, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  %.not73 = icmp eq ptr %i.cp, null
  br i1 %.not73, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cq = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.y
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.z:                                             ; preds = %.thread.thread17.i92
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i113

bb.aa:                                            ; preds = %bb.w
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.ab:                                            ; preds = %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.ab
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !25
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.aa ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.cx, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i113

.critedge:                                        ; preds = %bb.q, %bb.u
  %.pre-phi = phi i64 [ %i.bx, %bb.u ], [ 0, %bb.q ]
  %.147 = phi i64 [ %i.cl, %bb.u ], [ %.046, %bb.q ]
  %i.dd = add i64 %.pre-phi, %.062                ; 2 uses
  %i.de = load i64, ptr %1, align 8, !tbaa !42
  %i.df = load i64, ptr %i.j, align 8, !tbaa !43
  %spec.select.i107 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.df, i64 %i.de) ; 2 uses
  %.not76 = icmp eq i64 %spec.select.i107, %i.dd
  br i1 %.not76, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  %i.dg = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dd
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 %spec.select.i107
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !46  ; 2 uses
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr %i.dn, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di)
          to label %bb.ae unwind label %bb.ad

end_hunk_0
