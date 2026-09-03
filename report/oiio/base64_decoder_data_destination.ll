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
  %i.a = load i64, ptr %1, align 8, !tbaa !42     ; 5 uses
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
  %i.k = load i64, ptr %i.j, align 8, !tbaa !43   ; 2 uses
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
  %.pre172 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.a) ; 2 uses
  br i1 %i.t, label %._crit_edge171.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = and i64 %i.w, 3
  %i.y = sub nuw nsw i64 4, %i.x
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %.pre172) ; 3 uses
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
  br label %._crit_edge171.a

._crit_edge171.a:                                 ; preds = %bb.d, %._crit_edge
  %spec.select.i88.pre-phi = phi i64 [ %spec.select.i87, %._crit_edge ], [ %.pre172, %bb.d ]
  %.sroa.15.0 = phi i64 [ %i.al, %._crit_edge ], [ 0, %bb.d ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.af, %._crit_edge ], [ 0, %bb.d ]
  %.sroa.0133.0 = phi ptr [ %i.ab, %._crit_edge ], [ null, %bb.d ] ; 8 uses
  %.062 = phi i64 [ %.sroa.speculated, %._crit_edge ], [ 0, %bb.d ] ; 3 uses
  %i.am = sub i64 %spec.select.i88.pre-phi, %.062 ; 2 uses
  %i.an = ptrtoint ptr %.sroa.0133.0 to i64       ; 3 uses
  %i.ao = sub i64 %.sroa.11.0, %i.an              ; 5 uses
  %i.ap = lshr i64 %i.ao, 2                       ; 3 uses
  %i.aq = mul nuw i64 %i.ap, 3
  %i.ar = lshr i64 %i.am, 2                       ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, %i.ap
  %i.at = mul i64 %i.as, 3                        ; 2 uses
  %i.au = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #12
          to label %bb.g unwind label %bb.o       ; 5 uses

bb.g:                                             ; preds = %._crit_edge171.a
  %.not69 = icmp eq i64 %i.ap, 0
  br i1 %.not69, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = icmp ugt i64 %i.ao, 2
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %.sroa.0133.0, i64 %i.ao ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !25
  %i.az = icmp eq i8 %i.ay, 61
  br i1 %i.az, label %bb.j, label %.thread.thread17.i

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %i.aw, i64 -2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25
  %i.bc = icmp eq i8 %i.bb, 61
  br i1 %i.bc, label %.thread.thread17.i, label %.thread.thread.i

bb.k:                                             ; preds = %bb.h
  %i.bd = icmp eq i64 %i.ao, 2
  br i1 %i.bd, label %.thread.i, label %.thread.thread17.i

.thread.i:                                        ; preds = %bb.k
  %.phi.trans.insert15.i = getelementptr i8, ptr %.sroa.0133.0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert15.i, align 1, !tbaa !25
  %i.be = icmp eq i8 %.pre.i, 61
  br i1 %i.be, label %.thread.thread.i, label %.thread.thread17.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.j
  br label %.thread.thread17.i

.thread.thread17.i:                               ; preds = %.thread.thread.i, %.thread.i, %bb.k, %bb.j, %bb.i
  %.sink.i = phi i64 [ 1, %.thread.thread.i ], [ 2, %bb.j ], [ 0, %bb.i ], [ 0, %.thread.i ], [ 0, %bb.k ] ; 2 uses
  %sext.i = shl i64 %i.ao, 32
  %i.bf = ashr exact i64 %sext.i, 32
  %i.bg = invoke i64 @modp_b64_decode(ptr noundef nonnull %i.au, ptr noundef %.sroa.0133.0, i64 noundef %i.bf)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %.thread.thread17.i
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = add nuw nsw i64 %.sink.i, %i.bj
  %.not70 = icmp eq i64 %i.bk, %i.aq
  br i1 %.not70, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !26 ; 2 uses
  %.not81 = icmp eq ptr %i.bm, null
  br i1 %.not81, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bn, ptr %3, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !30
  store i8 0, ptr %i.bn, align 8, !tbaa !25
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bp = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bn
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.o:                                             ; preds = %._crit_edge171.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit114

bb.p:                                             ; preds = %.thread.thread17.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i113

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bn
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.q
  %i.by = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i113

bb.r:                                             ; preds = %bb.l, %bb.g
  %.0 = phi i64 [ 0, %bb.g ], [ %.sink.i, %bb.l ]
  %.046 = phi i64 [ 0, %bb.g ], [ %i.bj, %bb.l ]  ; 3 uses
  %.not71 = icmp eq i64 %i.ar, 0
  br i1 %.not71, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 %.062 ; 2 uses
  %i.cb = and i64 %i.am, -4                       ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 %.046
  %.not170 = icmp eq i64 %i.cb, 0
  br i1 %.not170, label %.thread.thread17.i92, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr i8, ptr %i.ca, i64 %i.cb  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !25
  %i.cg = icmp eq i8 %i.cf, 61
  br i1 %i.cg, label %bb.u, label %.thread.thread17.i92

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr i8, ptr %i.cd, i64 -2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !25
  %i.cj = icmp eq i8 %i.ci, 61
  %spec.select = select i1 %i.cj, i64 2, i64 1
  br label %.thread.thread17.i92

.thread.thread17.i92:                             ; preds = %bb.u, %bb.s, %bb.t
  %.sink.i93 = phi i64 [ 0, %bb.s ], [ %spec.select, %bb.u ], [ 0, %bb.t ]
  %sext.i94 = shl i64 %i.cb, 32
  %i.ck = ashr exact i64 %sext.i94, 32
  %i.cl = invoke i64 @modp_b64_decode(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.ca, i64 noundef %i.ck)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %.thread.thread17.i92
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = add nuw nsw i64 %.046, %i.co            ; 2 uses
  %i.cq = add nuw nsw i64 %.sink.i93, %.0
  %i.cr = add nuw nsw i64 %i.cq, %i.cp
  %.not72 = icmp eq i64 %i.cr, %i.at
  br i1 %.not72, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !26 ; 2 uses
  %.not73 = icmp eq ptr %i.ct, null
  br i1 %.not73, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cu = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.z
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !25
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.aa:                                            ; preds = %.thread.thread17.i92
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i113

end_hunk_0
