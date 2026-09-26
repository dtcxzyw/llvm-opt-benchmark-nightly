Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV8Decompressor?download=true
inline.NumInlined: 650
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS_10ByteStreamE:bb.a
.loopexit94:                                      ; preds = %_ZNKSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.w, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.critedge:                                        ; preds = %bb.v
  %.sroa.084.0.insert.ext = zext nneg i16 %spec.select.i.i.i.i.i.i66 to i64
  %i.bq = lshr exact i32 -65536, %i.az
  %i.br = sub nuw nsw i32 16, %i.az
  %i.bs = shl nuw nsw i32 %i.bi, %i.br
  %.sroa.9.0.insert.ext = zext nneg i32 %i.bo to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %i.bt = and i32 %i.bq, 65535
  %.sroa.8.0.insert.ext = zext nneg i32 %i.bt to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.9.0.insert.shift
  %i.bu = shl i32 %i.bs, 16
  %.sroa.786.0.insert.shift = zext i32 %i.bu to i64
  %.sroa.786.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.786.0.insert.shift
  %.sroa.084.0.insert.insert = or disjoint i64 %.sroa.786.0.insert.insert, %.sroa.084.0.insert.ext ; 2 uses
  %.not.i = icmp eq ptr %.sroa.12.0127, %.sroa.20.0128
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  store i64 %.sroa.084.0.insert.insert, ptr %.sroa.12.0127, align 2
  br label %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE12emplace_backIJRS4_EEES8_DpOT_.exit

bb.z:                                             ; preds = %.critedge
  %i.bv = ptrtoint ptr %.sroa.20.0128 to i64
  %i.bw = ptrtoint ptr %.sroa.087.0126 to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.aa, label %_ZNKSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %i.ca = icmp eq ptr %.sroa.20.0128, %.sroa.087.0126
  %.sroa.speculated.i.i.i = select i1 %i.ca, i64 1, i64 %i.bz
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #24
          to label %.noexc75 unwind label %.loopexit94 ; 4 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.bx ; 2 uses
  store i64 %.sroa.084.0.insert.insert, ptr %i.ch, align 2
  %i.ci = icmp sgt i64 %i.bx, 0
  br i1 %i.ci, label %bb.ab, label %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

bb.ab:                                            ; preds = %.noexc75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cg, ptr align 2 %.sroa.087.0126, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ab, %.noexc75
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.0126, i64 noundef %i.bx) #26
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  br label %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE12emplace_backIJRS4_EEES8_DpOT_.exit

_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE12emplace_backIJRS4_EEES8_DpOT_.exit: ; preds = %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.y
  %.sroa.087.4 = phi ptr [ %i.cg, %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.087.0126, %bb.y ] ; 6 uses
  %.pn = phi ptr [ %i.ch, %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.12.0127, %bb.y ] ; 2 uses
  %.sroa.20.4 = phi ptr [ %i.cj, %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.20.0128, %bb.y ] ; 3 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.035129, 1             ; 2 uses
  %.not = icmp eq i32 %i.ck, %i.q
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EED2Ev.exit: ; preds = %..loopexit_crit_edge, %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE6resizeEm.exit
  %i.cl = ptrtoint ptr %.sroa.20.4 to i64
  %i.cm = ptrtoint ptr %.sroa.087.4 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.4, i64 noundef %i.cn) #26
  ret void

.lr.ph134:                                        ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE6resizeEm.exit, %..loopexit_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %..loopexit_crit_edge ], [ 0, %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE6resizeEm.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv to i32
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph134, %.critedge52
  %.sroa.080.0132 = phi ptr [ %.sroa.087.4, %.lr.ph134 ], [ %i.db, %.critedge52 ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.080.0132, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !135
  %i.cs = zext i16 %i.cr to i32
  %i.ct = and i32 %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.080.0132, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !136
  %i.cw = zext i16 %i.cv to i32
  %.not44 = icmp eq i32 %i.ct, %i.cw
  br i1 %.not44, label %bb.ad, label %.critedge52

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load i8, ptr %.sroa.080.0132, align 2, !tbaa !137
  store i8 %i.cx, ptr %i.co, align 1, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.080.0132, i64 6
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !138
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !22
  br label %..loopexit_crit_edge

.critedge52:                                      ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.080.0132, i64 8
  %i.dc = icmp eq ptr %.sroa.080.0132, %.pn
  br i1 %i.dc, label %..loopexit_crit_edge, label %bb.ac

..loopexit_crit_edge:                             ; preds = %.critedge52, %bb.ad
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dd = and i64 %indvars.iv.next, 4294967295
  %i.de = icmp ugt i64 %i.aj, %i.dd
  br i1 %i.de, label %.lr.ph134, label %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EED2Ev.exit, !llvm.loop !125

bb.ae:                                            ; preds = %.loopexit94, %.loopexit.split-lp, %bb.o, %bb.u, %bb.j
  %.sroa.087.2 = phi ptr [ %.sroa.087.1, %bb.j ], [ %.sroa.087.0126, %bb.o ], [ %.sroa.087.0126, %bb.u ], [ %.sroa.087.0126, %.loopexit94 ], [ %.sroa.087.0126, %.loopexit.split-lp ] ; 3 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %bb.j ], [ %.sroa.20.0128, %bb.o ], [ %.sroa.20.0128, %bb.u ], [ %.sroa.20.0128, %.loopexit94 ], [ %.sroa.20.0128, %.loopexit.split-lp ]
  %.pn46.pn = phi { ptr, i32 } [ %i.al, %bb.j ], [ %i.bb, %bb.o ], [ %i.bm, %bb.u ], [ %lpad.loopexit, %.loopexit94 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %.sroa.087.2, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EED2Ev.exit78, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = ptrtoint ptr %.sroa.20.2 to i64
  %i.dg = ptrtoint ptr %.sroa.087.2 to i64
  %i.dh = sub i64 %i.df, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.2, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EED2Ev.exit78

_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EED2Ev.exit78: ; preds = %bb.af, %bb.ae, %bb.f
  %.pn49 = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn46.pn, %bb.ae ], [ %.pn46.pn, %bb.af ]
  %i.di = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EED2Ev.exit78
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !23
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #26
  br label %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS0_10ByteStreamEE5EntrySaIS4_EED2Ev.exit78, %bb.ag
  resume { ptr, i32 } %.pn49
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #27 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder11getOutRectsENS_8iPoint2DENS_10Array1DRefIKjEENS3_IKtEES7_(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.7") align 8 captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5, ptr nofree noundef readonly byval(%"class.rawspeed::Array1DRef.5") align 8 captures(none) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.093.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.599.0.extract.shift = lshr i64 %1, 32
  %.sroa.599.0.extract.trunc = trunc nuw i64 %.sroa.599.0.extract.shift to i32 ; 6 uses
  %i.a = icmp sgt i32 %.sroa.093.0.extract.trunc, 0
  %i.b = icmp sgt i32 %.sroa.599.0.extract.trunc, 0
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder11getOutRectsENS_8iPoint2DENS_10Array1DRefIKjEENS3_IKtEES7_) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %.sroa.093.0.extract.trunc, 1
  %.not = icmp eq i32 %i.d, 0
  %i.e = and i32 %.sroa.599.0.extract.trunc, 1
  %.not26 = icmp eq i32 %i.e, 0
  %or.cond = select i1 %.not, i1 %.not26, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder11getOutRectsENS_8iPoint2DENS_10Array1DRefIKjEENS3_IKtEES7_) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %3, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp sgt i32 %5, -1
  tail call void @llvm.assume(i1 %i.g)
  %.not27 = icmp eq i32 %5, %3
  br i1 %.not27, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !146  ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %.not28 = icmp eq i32 %i.i, %3
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder11getOutRectsENS_8iPoint2DENS_10Array1DRefIKjEENS3_IKtEES7_) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = icmp eq i32 %3, 0
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder11getOutRectsENS_8iPoint2DENS_10Array1DRefIKjEENS3_IKtEES7_) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %6, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = zext nneg i32 %3 to i64                  ; 2 uses
  br label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit: ; preds = %bb.j, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %i.p = phi ptr [ null, %bb.j ], [ %i.bc, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ] ; 5 uses
  %i.q = phi ptr [ null, %bb.j ], [ %i.bd, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ] ; 11 uses
  %i.r = icmp samesign ult i64 %indvars.iv, %i.o
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2, !tbaa !25   ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !25   ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26   ; 3 uses
  %i.y = and i32 %i.x, 65535                      ; 2 uses
  %i.z = lshr i32 %i.x, 16                        ; 2 uses
  %.sroa.447.0.insert.ext = zext i16 %i.v to i64
  %.sroa.447.0.insert.shift = shl nuw nsw i64 %.sroa.447.0.insert.ext, 32
  %.sroa.046.0.insert.ext = zext i16 %i.t to i64
  %.sroa.046.0.insert.insert = or disjoint i64 %.sroa.447.0.insert.shift, %.sroa.046.0.insert.ext ; 2 uses
  %.sroa.050.sroa.8.0.insert.ext = zext nneg i32 %i.z to i64
  %.sroa.050.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.050.sroa.8.0.insert.ext, 32
  %.sroa.050.sroa.0.0.insert.ext = zext nneg i32 %i.y to i64
  %.sroa.050.sroa.0.0.insert.insert = or disjoint i64 %.sroa.050.sroa.8.0.insert.shift, %.sroa.050.sroa.0.0.insert.ext ; 2 uses
  %.sroa.9.8.extract.trunc55 = zext i16 %i.t to i32
  %i.aa = add nuw nsw i32 %i.y, %.sroa.9.8.extract.trunc55
  %.sroa.9.12.extract.trunc60 = zext i16 %i.v to i32
  %i.ab = add nuw nsw i32 %i.z, %.sroa.9.12.extract.trunc60
  %.not.i8.i = icmp samesign ule i32 %i.aa, %.sroa.093.0.extract.trunc
  %i.ac = icmp samesign ule i32 %i.ab, %.sroa.599.0.extract.trunc
  %i.ad = select i1 %.not.i8.i, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.k, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke: ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit, %bb.m, %bb.l, %bb.k
  %i.ae = phi ptr [ @.str.11, %bb.m ], [ @.str.10, %bb.l ], [ @.str.9, %bb.k ], [ @.str.8, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit ]
  store ptr %i.q, ptr %0, align 8
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.ae, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder11getOutRectsENS_8iPoint2DENS_10Array1DRefIKjEENS3_IKtEES7_) #14
          to label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.cont unwind label %.loopexit.split-lp

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.cont: ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke
  unreachable

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %0, align 8
  br label %bb.w

.loopexit.split-lp:                               ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.k:                                             ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit
  %i.af = icmp ne i16 %i.t, 0
  %i.ag = icmp ne i16 %i.v, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.l, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke

bb.l:                                             ; preds = %bb.k
  %i.ai = and i32 %i.x, 65537
  %or.cond105 = icmp eq i32 %i.ai, 0
  br i1 %or.cond105, label %bb.m, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke

bb.m:                                             ; preds = %bb.l
  %i.aj = and i16 %i.t, 1
  %.not31 = icmp eq i16 %i.aj, 0
  %i.ak = and i16 %i.v, 1
  %.not32 = icmp eq i16 %i.ak, 0
  %or.cond106 = select i1 %.not31, i1 %.not32, i1 false
  br i1 %or.cond106, label %bb.n, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.thread.invoke

bb.n:                                             ; preds = %bb.m
  %7 = load ptr, ptr %i.n, align 8, !tbaa !149
  %.not.i = icmp eq ptr %i.p, %7
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.050.sroa.0.0.insert.insert, ptr %i.p, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.046.0.insert.insert, ptr %.sroa.9.0..sroa_idx, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.m, align 8, !tbaa !150
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.am = ptrtoint ptr %i.p to i64
  %i.an = ptrtoint ptr %i.q to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %bb.q, label %_ZNKSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  store ptr %i.q, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.aq = ashr exact i64 %i.ao, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 576460752303423487)
  %i.au = select i1 %i.as, i64 576460752303423487, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #24
          to label %.noexc38 unwind label %.loopexit ; 5 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i64 %.sroa.050.sroa.0.0.insert.insert, ptr %i.ax, align 4
  %.sroa.9.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.046.0.insert.insert, ptr %.sroa.9.0..sroa_idx52, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc38, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.aw, %.noexc38 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.q, %.noexc38 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !151, !alias.scope !152
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !142

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc38
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aw, %.noexc38 ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ao) #26
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ba, ptr %i.m, align 8, !tbaa !150
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bb, ptr %i.n, align 8, !tbaa !149
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.o
  %i.bc = phi ptr [ %i.ba, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.al, %bb.o ] ; 2 uses
  %i.bd = phi ptr [ %i.aw, %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.q, %bb.o ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %bb.s, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit, !llvm.loop !143

bb.s:                                             ; preds = %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  store ptr %i.bd, ptr %0, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 4                 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj)
  %.sroa.041.0.copyload.i = load i64, ptr %i.bd, align 4
  %i.bk = icmp eq i64 %.sroa.041.0.copyload.i, 0
  br i1 %i.bk, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i, label %.invoke

.invoke:                                          ; preds = %.critedge.i.i, %bb.u, %._crit_edge.i, %bb.s
  %i.bl = phi ptr [ @.str.25, %._crit_edge.i ], [ @.str.22, %bb.s ], [ @.str.24, %.critedge.i.i ], [ @.str.23, %bb.u ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.bl, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_116isValidImageGridENS_8iPoint2DENS_10Array1DRefIKNS_12iRectangle2DEEE) #14
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i: ; preds = %bb.s
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.11.8.extract.trunc.i = trunc i64 %.sroa.11.0.copyload.i to i32 ; 4 uses
  %.sroa.11.12.extract.shift.i = lshr i64 %.sroa.11.0.copyload.i, 32 ; 2 uses
  %.sroa.11.12.extract.trunc.i = trunc nuw nsw i64 %.sroa.11.12.extract.shift.i to i32 ; 2 uses
  %.not.i8.i.i = icmp samesign ule i32 %.sroa.11.8.extract.trunc.i, %.sroa.093.0.extract.trunc
  %i.bm = icmp sle i32 %.sroa.11.12.extract.trunc.i, %.sroa.599.0.extract.trunc
  tail call void @llvm.assume(i1 %.not.i8.i.i)
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp sgt i32 %.sroa.11.8.extract.trunc.i, 0
  %i.bo = icmp ne i64 %.sroa.11.12.extract.shift.i, 0
  tail call void @llvm.assume(i1 %i.bn)
  tail call void @llvm.assume(i1 %i.bo)
  %.not115.i = icmp eq i32 %i.bi, 1
  br i1 %.not115.i, label %._crit_edge.i, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i: ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i
  %i.bp = and i64 %i.bh, 2147483647
  br label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i

._crit_edge.i:                                    ; preds = %bb.v, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i
  %.sroa.11.12.extract.trunc57.pre-phi.i = phi i32 [ %.sroa.11.12.extract.trunc.i, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i ], [ %.sroa.7.12.extract.trunc.i, %bb.v ]
  %.sroa.11.8.extract.trunc51.pre-phi.i = phi i32 [ %.sroa.11.8.extract.trunc.i, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i ], [ %.sroa.7.8.extract.trunc.i, %bb.v ]
  %.sroa.041.sroa.9.0.lcssa.i = phi i32 [ 0, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i ], [ %.sroa.414.0.extract.trunc.i13.i, %bb.v ]
  %.sroa.041.sroa.0.0.lcssa.i = phi i32 [ 0, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit.i ], [ %.sroa.013.0.extract.trunc.i11.i, %bb.v ]
  %i.bq = add nsw i32 %.sroa.041.sroa.0.0.lcssa.i, %.sroa.11.8.extract.trunc51.pre-phi.i
  %i.br = add nsw i32 %.sroa.041.sroa.9.0.lcssa.i, %.sroa.11.12.extract.trunc57.pre-phi.i
  %i.bs = icmp eq i32 %i.bq, %.sroa.093.0.extract.trunc
  %i.bt = icmp eq i32 %i.br, %.sroa.599.0.extract.trunc
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %_ZN8rawspeed12_GLOBAL__N_116isValidImageGridENS_8iPoint2DENS_10Array1DRefIKNS_12iRectangle2DEEE.exit, label %.invoke

_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i: ; preds = %bb.v, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %.sroa.088.0119.i = phi i32 [ %.sroa.11.8.extract.trunc.i, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %.sroa.088.1.i, %bb.v ] ; 2 uses
  %.sroa.11.0118.i = phi i64 [ %.sroa.11.0.copyload.i, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %.sroa.7.0.copyload.i, %bb.v ] ; 2 uses
  %.sroa.041.sroa.0.0117.i = phi i32 [ 0, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %.sroa.013.0.extract.trunc.i11.i, %bb.v ]
  %.sroa.041.sroa.9.0116.i = phi i32 [ 0, %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.lr.ph.i ], [ %.sroa.414.0.extract.trunc.i13.i, %bb.v ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  %.sroa.023.0.copyload.i = load i64, ptr %i.bv, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.013.0.extract.trunc.i11.i = trunc i64 %.sroa.023.0.copyload.i to i32 ; 5 uses
  %.sroa.414.0.extract.shift.i12.i = lshr i64 %.sroa.023.0.copyload.i, 32 ; 2 uses
  %.sroa.414.0.extract.trunc.i13.i = trunc nuw nsw i64 %.sroa.414.0.extract.shift.i12.i to i32 ; 4 uses
  %i.bw = and i64 %.sroa.023.0.copyload.i, -9223372034707292160
  %i.bx = icmp eq i64 %i.bw, 0
  tail call void @llvm.assume(i1 %i.bx)
  %.sroa.7.8.extract.trunc.i = trunc i64 %.sroa.7.0.copyload.i to i32 ; 4 uses
  %i.by = add nuw nsw i32 %.sroa.7.8.extract.trunc.i, %.sroa.013.0.extract.trunc.i11.i
  %.sroa.7.12.extract.shift.i = lshr i64 %.sroa.7.0.copyload.i, 32 ; 2 uses
  %.sroa.7.12.extract.trunc.i = trunc nuw i64 %.sroa.7.12.extract.shift.i to i32 ; 2 uses
  %i.bz = add nsw i32 %.sroa.7.12.extract.trunc.i, %.sroa.414.0.extract.trunc.i13.i ; 2 uses
  %.not.i8.i19.i = icmp sle i32 %i.by, %.sroa.093.0.extract.trunc
  %i.ca = icmp sle i32 %i.bz, %.sroa.599.0.extract.trunc
  tail call void @llvm.assume(i1 %.not.i8.i19.i)
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp sgt i32 %.sroa.7.8.extract.trunc.i, 0
  %i.cc = icmp ne i64 %.sroa.7.12.extract.shift.i, 0
  tail call void @llvm.assume(i1 %i.cb)
  tail call void @llvm.assume(i1 %i.cc)
  %.sroa.041.sroa.9.0.insert.ext.i = zext i32 %.sroa.041.sroa.9.0116.i to i64
  %.sroa.9.8.extract.shift.i.i = lshr i64 %.sroa.11.0118.i, 32
  %.sroa.9.8.extract.trunc.i.i = trunc nuw i64 %.sroa.9.8.extract.shift.i.i to i32
  %i.cd = trunc i64 %.sroa.11.0118.i to i32
  %.sroa.017.0.extract.trunc.i.i = add i32 %.sroa.041.sroa.0.0117.i, %i.cd
  %i.ce = icmp eq i32 %.sroa.017.0.extract.trunc.i.i, %.sroa.013.0.extract.trunc.i11.i
  %i.cf = icmp eq i64 %.sroa.414.0.extract.shift.i12.i, %.sroa.041.sroa.9.0.insert.ext.i
  %i.cg = and i1 %i.ce, %i.cf
  %i.ch = add nsw i32 %.sroa.041.sroa.9.0116.i, %.sroa.9.8.extract.trunc.i.i ; 2 uses
  %i.ci = icmp eq i32 %i.ch, %i.bz
  %or.cond.i = select i1 %i.cg, i1 %i.ci, i1 false
  br i1 %or.cond.i, label %bb.t, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i
  %i.cj = icmp eq i32 %.sroa.013.0.extract.trunc.i11.i, 0
  %i.ck = icmp eq i32 %i.ch, %.sroa.414.0.extract.trunc.i13.i
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.u, label %.invoke

bb.t:                                             ; preds = %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i
  %i.cm = add nuw nsw i32 %.sroa.088.0119.i, %.sroa.7.8.extract.trunc.i
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.i
  %.not5.i = icmp eq i32 %.sroa.088.0119.i, %.sroa.093.0.extract.trunc
  br i1 %.not5.i, label %bb.v, label %.invoke

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.088.1.i = phi i32 [ %i.cm, %bb.t ], [ 0, %bb.u ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i39 = icmp eq i64 %indvars.iv.next.i, %i.bp
  br i1 %.not.i39, label %._crit_edge.i, label %_ZNK8rawspeed12iRectangle2D12isThisInsideERKS0_.exit20.i, !llvm.loop !144

.thread:                                          ; preds = %.invoke
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZN8rawspeed12_GLOBAL__N_116isValidImageGridENS_8iPoint2DENS_10Array1DRefIKNS_12iRectangle2DEEE.exit: ; preds = %._crit_edge.i
  ret void

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %.pn.pn.pn.pn.pn148 = phi { ptr, i32 } [ %i.cn, %.thread ], [ %.pn.pn.pn.pn.pn, %bb.w ]
  %i.co = phi ptr [ %i.bd, %.thread ], [ %i.q, %bb.w ] ; 2 uses
  %8 = load ptr, ptr %i.n, align 8, !tbaa !149
  %i.cp = ptrtoint ptr %8 to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cr) #26
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit: ; preds = %bb.w, %bb.x
  %.pn.pn.pn.pn.pn149 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.w ], [ %.pn.pn.pn.pn.pn148, %bb.x ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn149
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed23PanasonicV8DecompressorC2ENS_8RawImageENS0_18DecompressorParamsE(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 80)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef readonly byval(%"struct.rawspeed::PanasonicV8Decompressor::DecompressorParams") align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !156
  store ptr null, ptr %i.b, align 8, !tbaa !30
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !156
  store ptr null, ptr %1, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !160
  %i.e = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.g = load i32, ptr %i.f, align 8, !tbaa !105
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.b, label %.invoke

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 553
  %i.i = load i8, ptr %i.h, align 1, !tbaa !161
  %.not17 = icmp eq i8 %i.i, 0
  br i1 %.not17, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 596
  %i.k = load i32, ptr %i.j, align 4, !tbaa !162
  %.not18 = icmp eq i32 %i.k, 2
  br i1 %.not18, label %bb.e, label %.invoke

bb.d:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.n = load <2 x i32>, ptr %i.m, align 8
  %i.o = load <2 x i32>, ptr %i.d, align 8
  %i.p = icmp eq <2 x i32> %i.n, %i.o             ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.f, label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.e
  %i.t = phi ptr [ @.str.13, %bb.e ], [ @.str.12, %bb.c ], [ @.str.12, %bb.b ], [ @.str.12, %bb.a ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.t, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8DecompressorC2ENS_8RawImageENS0_18DecompressorParamsE) #14
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.06.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !159 ; 4 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %i.v = icmp sgt i32 %.sroa.27.0.copyload, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw i32 %.sroa.27.0.copyload, 1
  %.idx.i.i = zext i32 %i.w to i64
  %i.x = add nsw i64 %.idx.i.i, -2                ; 5 uses
  %i.y = lshr exact i64 %i.x, 1
  %i.z = add nuw i64 %i.y, 1                      ; 4 uses
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter = and i64 %i.z, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1", %.new
  %.sroa.05.010.i.i.i = phi i64 [ 0, %.new ], [ %.sroa.0.0.insert.insert.i.i.i.i.1, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1" ] ; 2 uses
  %.09.i.i.i = phi ptr [ %.sroa.06.0.copyload, %.new ], [ %i.aw, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1" ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1" ]
  %.0.val.i.i.i = load i8, ptr %.09.i.i.i, align 1, !tbaa !21 ; 3 uses
  %i.ab = getelementptr i8, ptr %.09.i.i.i, i64 1
  %.0.val7.i.i.i = load i8, ptr %i.ab, align 1    ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.05.010.i.i.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %.sroa.05.010.i.i.i, 32 ; 2 uses
  %i.ac = icmp eq i8 %.0.val.i.i.i, 7
  %i.ad = icmp eq i8 %.0.val7.i.i.i, 0
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.af = zext i8 %.0.val.i.i.i to i32
  %i.ag = icmp ne i8 %.0.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = zext i8 %.0.val7.i.i.i to i32
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i.i to i1
  %.sroa.speculated.i.i.i.i.i = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i.i.i, i32 range(i32 1, 511) %i.ai)
  %i.ak = select i1 %i.aj, i32 %.sroa.speculated.i.i.i.i.i, i32 %i.ai
  br label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i"

"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i": ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.4.0.i.i.i.i = phi i64 [ %.sroa.4.0.extract.shift.i.i.i.i, %.lr.ph.i.i.i ], [ 1, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i, %.lr.ph.i.i.i ], [ %i.ak, %bb.g ] ; 2 uses
  %.sroa.4.0.insert.shift.i.i.i.i = and i64 %.sroa.4.0.i.i.i.i, 255
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 2
  %.0.val.i.i.i.1 = load i8, ptr %i.al, align 1, !tbaa !21 ; 3 uses
  %i.am = getelementptr i8, ptr %.09.i.i.i, i64 3
  %.0.val7.i.i.i.1 = load i8, ptr %i.am, align 1  ; 2 uses
  %i.an = icmp eq i8 %.0.val.i.i.i.1, 7
  %i.ao = icmp eq i8 %.0.val7.i.i.i.1, 0
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1", label %bb.h

bb.h:                                             ; preds = %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i"
  %i.aq = zext i8 %.0.val.i.i.i.1 to i32
  %i.ar = icmp ne i8 %.0.val.i.i.i.1, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = zext i8 %.0.val7.i.i.i.1 to i32
  %i.at = add nuw nsw i32 %i.as, %i.aq            ; 2 uses
  %i.au = trunc i64 %.sroa.4.0.i.i.i.i to i1
  %.sroa.speculated.i.i.i.i.i.1 = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.i.i.i.i, i32 range(i32 1, 511) %i.at)
  %i.av = select i1 %i.au, i32 %.sroa.speculated.i.i.i.i.i.1, i32 %i.at
  br label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1"

"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1": ; preds = %bb.h, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i"
  %.sroa.4.0.i.i.i.i.1 = phi i64 [ %.sroa.4.0.insert.shift.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i" ], [ 1, %bb.h ]
  %.sroa.0.0.i.i.i.i.1 = phi i32 [ %.sroa.0.0.i.i.i.i, %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i" ], [ %i.av, %bb.h ] ; 2 uses
  %.sroa.4.0.insert.ext.i.i.i.i.1 = shl nuw nsw i64 %.sroa.4.0.i.i.i.i.1, 32
  %.sroa.0.0.insert.ext.i.i.i.i.1 = zext i32 %.sroa.0.0.i.i.i.i.1 to i64
  %.sroa.0.0.insert.insert.i.i.i.i.1 = or disjoint i64 %.sroa.4.0.insert.ext.i.i.i.i.1, %.sroa.0.0.insert.ext.i.i.i.i.1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !153

.unr-lcssa:                                       ; preds = %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.1"
  %i.ax = and i64 %i.x, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.epil.preheader, label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.epil"

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.unr-lcssa, %bb.f
  %.sroa.05.010.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.insert.insert.i.i.i.i.1, %.unr-lcssa ] ; 2 uses
  %.09.i.i.i.epil.init = phi ptr [ %.sroa.06.0.copyload, %bb.f ], [ %i.aw, %.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %.0.val.i.i.i.epil = load i8, ptr %.09.i.i.i.epil.init, align 1, !tbaa !21 ; 3 uses
  %i.ay = getelementptr i8, ptr %.09.i.i.i.epil.init, i64 1
  %.0.val7.i.i.i.epil = load i8, ptr %i.ay, align 1 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.epil = trunc i64 %.sroa.05.010.i.i.i.epil.init to i32 ; 2 uses
  %i.az = icmp eq i8 %.0.val.i.i.i.epil, 7
  %i.ba = icmp eq i8 %.0.val7.i.i.i.epil, 0
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.epil", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.bc = zext i8 %.0.val.i.i.i.epil to i32
  %i.bd = icmp ne i8 %.0.val.i.i.i.epil, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = zext i8 %.0.val7.i.i.i.epil to i32
  %i.bf = add nuw nsw i32 %i.be, %i.bc            ; 2 uses
  %i.bg = and i64 %.sroa.05.010.i.i.i.epil.init, 4294967296
  %.not58 = icmp eq i64 %i.bg, 0
  %.sroa.speculated.i.i.i.i.i.epil = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i.i.i.epil, i32 range(i32 1, 511) %i.bf)
  %i.bh = select i1 %.not58, i32 %i.bf, i32 %.sroa.speculated.i.i.i.i.i.epil
  br label %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.epil"

"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.epil": ; preds = %.lr.ph.i.i.i.epil.preheader, %bb.i, %.unr-lcssa
  %.sroa.0.0.i.i.i.i.lcssa = phi i32 [ %.sroa.0.0.i.i.i.i.1, %.unr-lcssa ], [ %.sroa.0.0.extract.trunc.i.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bi = icmp sgt i32 %.sroa.0.0.i.i.i.i.lcssa, 0
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ugt i32 %.sroa.0.0.i.i.i.i.lcssa, 32
  br i1 %i.bj, label %bb.j, label %.lr.ph.i.i.i26.preheader

.lr.ph.i.i.i26.preheader:                         ; preds = %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.epil"
  %i.bk = icmp eq i64 %i.x, 0
  br i1 %i.bk, label %.lr.ph.i.i.i26.epil.preheader, label %.lr.ph.i.i.i26.preheader.new

.lr.ph.i.i.i26.preheader.new:                     ; preds = %.lr.ph.i.i.i26.preheader
  %unroll_iter56 = and i64 %i.z, -2
  br label %.lr.ph.i.i.i26

bb.j:                                             ; preds = %"_ZZN8rawspeed12_GLOBAL__N_118bitsPerPixelNeededIZNS0_21maxBitsPerPixelNeededENS_10Array1DRefIKNS_23PanasonicV8Decompressor15DecoderLUTEntryEEEE3$_0EEiS6_T_ENKUlS8_RS5_E_clINS_8OptionalIiEEEEDaS8_S9_.exit.i.i.i.epil"
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV8DecompressorC2ENS_8RawImageENS0_18DecompressorParamsE) #14
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE17_M_default_appendEm:bb.a
  %min.iters.check44 = icmp ult i64 %1, 64
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %1, 56
  %n.vec = and i64 %1, -64                        ; 4 uses
  %i.q = shl i64 %n.vec, 1
  %i.r = getelementptr i8, ptr %i.b, i64 %i.q     ; 2 uses
  %i.s = and i64 %1, 63
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.t ; 4 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 32
  %i.v = getelementptr i8, ptr %next.gep, i64 64
  %i.w = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> splat (i16 7), ptr %next.gep, align 1
  store <16 x i16> splat (i16 7), ptr %i.u, align 1
  store <16 x i16> splat (i16 7), ptr %i.v, align 1
  store <16 x i16> splat (i16 7), ptr %i.w, align 1
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !211

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %1, -8                       ; 3 uses
  %i.y = shl i64 %n.vec46, 1
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 2 uses
  %i.aa = and i64 %1, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = shl i64 %index47, 1
  %next.gep48 = getelementptr i8, ptr %i.b, i64 %i.ab
  store <8 x i16> splat (i16 7), ptr %next.gep48, align 1
  %index.next49 = add nuw i64 %index47, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next49, %n.vec46
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !198

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %1, %n.vec46
  br i1 %cmp.n50, label %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.057.i.i.i.ph = phi i64 [ %1, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  store i16 7, ptr %.08.i.i.i, align 1
  %i.ad = add i64 %.057.i.i.i, -1                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !199

_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.ae, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !16
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.af = icmp ult i64 %i.n, %1
  br i1 %i.af, label %bb.d, label %iter.check66

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
  unreachable

iter.check66:                                     ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ag = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 4611686018427387903) ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #24 ; 9 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.f ; 6 uses
  %min.iters.check53 = icmp ult i64 %1, 8
  br i1 %min.iters.check53, label %.lr.ph.i.i.i30.preheader, label %vector.main.loop.iter.check54

vector.main.loop.iter.check54:                    ; preds = %iter.check66
  %min.iters.check55 = icmp ult i64 %1, 64
  br i1 %min.iters.check55, label %vec.epilog.ph70, label %vector.ph56

vector.ph56:                                      ; preds = %vector.main.loop.iter.check54
  %i.am = and i64 %1, 56
  %n.vec57 = and i64 %1, -64                      ; 4 uses
  %i.an = shl i64 %n.vec57, 1
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.an
  %i.ap = and i64 %1, 63
  br label %vector.body58

vector.body58:                                    ; preds = %vector.ph56, %vector.body58
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next61, %vector.body58 ] ; 2 uses
  %i.aq = shl i64 %index59, 1
  %next.gep60 = getelementptr i8, ptr %i.al, i64 %i.aq ; 4 uses
  %i.ar = getelementptr i8, ptr %next.gep60, i64 32
  %i.as = getelementptr i8, ptr %next.gep60, i64 64
  %i.at = getelementptr i8, ptr %next.gep60, i64 96
  store <16 x i16> splat (i16 7), ptr %next.gep60, align 1
  store <16 x i16> splat (i16 7), ptr %i.ar, align 1
  store <16 x i16> splat (i16 7), ptr %i.as, align 1
  store <16 x i16> splat (i16 7), ptr %i.at, align 1
  %index.next61 = add nuw i64 %index59, 64        ; 2 uses
  %i.au = icmp eq i64 %index.next61, %n.vec57
  br i1 %i.au, label %middle.block62, label %vector.body58, !llvm.loop !200

middle.block62:                                   ; preds = %vector.body58
  %cmp.n63 = icmp eq i64 %1, %n.vec57
  br i1 %cmp.n63, label %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit35, label %vec.epilog.iter.check68

vec.epilog.iter.check68:                          ; preds = %middle.block62
  %min.epilog.iters.check69 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check69, label %.lr.ph.i.i.i30.preheader, label %vec.epilog.ph70, !prof !211

vec.epilog.ph70:                                  ; preds = %vector.main.loop.iter.check54, %vec.epilog.iter.check68
  %vec.epilog.resume.val64 = phi i64 [ %n.vec57, %vec.epilog.iter.check68 ], [ 0, %vector.main.loop.iter.check54 ]
  %n.vec71 = and i64 %1, -8                       ; 3 uses
  %i.av = shl i64 %n.vec71, 1
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av
  %i.ax = and i64 %1, 7
  br label %vec.epilog.vector.body72

vec.epilog.vector.body72:                         ; preds = %vec.epilog.vector.body72, %vec.epilog.ph70
  %index73 = phi i64 [ %vec.epilog.resume.val64, %vec.epilog.ph70 ], [ %index.next75, %vec.epilog.vector.body72 ] ; 2 uses
  %i.ay = shl i64 %index73, 1
  %next.gep74 = getelementptr i8, ptr %i.al, i64 %i.ay
  store <8 x i16> splat (i16 7), ptr %next.gep74, align 1
  %index.next75 = add nuw i64 %index73, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next75, %n.vec71
  br i1 %i.az, label %vec.epilog.middle.block76, label %vec.epilog.vector.body72, !llvm.loop !201

vec.epilog.middle.block76:                        ; preds = %vec.epilog.vector.body72
  %cmp.n77 = icmp eq i64 %1, %n.vec71
  br i1 %cmp.n77, label %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %iter.check66, %vec.epilog.iter.check68, %vec.epilog.middle.block76
  %.08.i.i.i31.ph = phi ptr [ %i.al, %iter.check66 ], [ %i.ao, %vec.epilog.iter.check68 ], [ %i.aw, %vec.epilog.middle.block76 ]
  %.057.i.i.i32.ph = phi i64 [ %1, %iter.check66 ], [ %i.ap, %vec.epilog.iter.check68 ], [ %i.ax, %vec.epilog.middle.block76 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.ph, %.lr.ph.i.i.i30.preheader ] ; 2 uses
  %.057.i.i.i32 = phi i64 [ %i.ba, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.ph, %.lr.ph.i.i.i30.preheader ]
  store i16 7, ptr %.08.i.i.i31, align 1
  %i.ba = add i64 %.057.i.i.i32, -1               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 2
  %.not.i.i.i33 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !202

_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %vec.epilog.middle.block76, %middle.block62
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %iter.check97

iter.check97:                                     ; preds = %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit35
  %i.bc = add i64 %i.d, -2
  %i.bd = sub i64 %i.bc, %i.e                     ; 3 uses
  %i.be = lshr i64 %i.bd, 1
  %i.bf = add nuw i64 %i.be, 1                    ; 5 uses
  %min.iters.check80 = icmp ult i64 %i.bd, 14
  %i.bg = sub i64 %i.e, %i.ak
  %diff.check = icmp ugt i64 %i.bg, -128
  %or.cond = or i1 %min.iters.check80, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %iter.check97
  %min.iters.check82 = icmp ult i64 %i.bd, 126
  br i1 %min.iters.check82, label %vec.epilog.ph101, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check81
  %i.bh = and i64 %i.bf, 56
  %n.vec84 = and i64 %i.bf, -64                   ; 4 uses
  %i.bi = shl i64 %n.vec84, 1                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.aj, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.bi
  br label %vector.body85

vector.body85:                                    ; preds = %vector.ph83, %vector.body85
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next92, %vector.body85 ] ; 2 uses
  %i.bl = shl i64 %index86, 1                     ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.aj, i64 %i.bl ; 4 uses
  %next.gep88 = getelementptr i8, ptr %i.c, i64 %i.bl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.bm = getelementptr i8, ptr %next.gep88, i64 32
  %i.bn = getelementptr i8, ptr %next.gep88, i64 64
  %i.bo = getelementptr i8, ptr %next.gep88, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep88, align 1, !alias.scope !213, !noalias !212
  %wide.load89 = load <16 x i16>, ptr %i.bm, align 1, !alias.scope !213, !noalias !212
  %wide.load90 = load <16 x i16>, ptr %i.bn, align 1, !alias.scope !213, !noalias !212
  %wide.load91 = load <16 x i16>, ptr %i.bo, align 1, !alias.scope !213, !noalias !212
  %i.bp = getelementptr i8, ptr %next.gep87, i64 32
  %i.bq = getelementptr i8, ptr %next.gep87, i64 64
  %i.br = getelementptr i8, ptr %next.gep87, i64 96
  store <16 x i16> %wide.load, ptr %next.gep87, align 1, !alias.scope !212, !noalias !213
  store <16 x i16> %wide.load89, ptr %i.bp, align 1, !alias.scope !212, !noalias !213
  store <16 x i16> %wide.load90, ptr %i.bq, align 1, !alias.scope !212, !noalias !213
  store <16 x i16> %wide.load91, ptr %i.br, align 1, !alias.scope !212, !noalias !213
  %index.next92 = add nuw i64 %index86, 64        ; 2 uses
  %i.bs = icmp eq i64 %index.next92, %n.vec84
  br i1 %i.bs, label %middle.block93, label %vector.body85, !llvm.loop !206

middle.block93:                                   ; preds = %vector.body85
  %cmp.n94 = icmp eq i64 %i.bf, %n.vec84
  br i1 %cmp.n94, label %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %vec.epilog.iter.check99

vec.epilog.iter.check99:                          ; preds = %middle.block93
  %min.epilog.iters.check100 = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check100, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph101, !prof !211

vec.epilog.ph101:                                 ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check99
  %vec.epilog.resume.val95 = phi i64 [ %n.vec84, %vec.epilog.iter.check99 ], [ 0, %vector.main.loop.iter.check81 ]
  %n.vec102 = and i64 %i.bf, -8                   ; 3 uses
  %i.bt = shl i64 %n.vec102, 1                    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.aj, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.c, i64 %i.bt
  br label %vec.epilog.vector.body103

vec.epilog.vector.body103:                        ; preds = %vec.epilog.vector.body103, %vec.epilog.ph101
  %index104 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph101 ], [ %index.next108, %vec.epilog.vector.body103 ] ; 2 uses
  %i.bw = shl i64 %index104, 1                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.aj, i64 %i.bw
  %next.gep106 = getelementptr i8, ptr %i.c, i64 %i.bw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %wide.load107 = load <8 x i16>, ptr %next.gep106, align 1, !alias.scope !213, !noalias !212
  store <8 x i16> %wide.load107, ptr %next.gep105, align 1, !alias.scope !212, !noalias !213
  %index.next108 = add nuw i64 %index104, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next108, %n.vec102
  br i1 %i.bx, label %vec.epilog.middle.block109, label %vec.epilog.vector.body103, !llvm.loop !207

vec.epilog.middle.block109:                       ; preds = %vec.epilog.vector.body103
  %cmp.n110 = icmp eq i64 %i.bf, %n.vec102
  br i1 %cmp.n110, label %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check97, %vec.epilog.iter.check99, %vec.epilog.middle.block109
  %.012.i.i.i.ph = phi ptr [ %i.aj, %iter.check97 ], [ %i.bj, %vec.epilog.iter.check99 ], [ %i.bu, %vec.epilog.middle.block109 ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check97 ], [ %i.bk, %vec.epilog.iter.check99 ], [ %i.bv, %vec.epilog.middle.block109 ]
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i37 ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i37 ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.by = load i16, ptr %.0911.i.i.i, align 1, !alias.scope !213, !noalias !212
  store i16 %i.by, ptr %.012.i.i.i, align 1, !alias.scope !212, !noalias !213
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 2
  %.not.i.i.i38 = icmp eq ptr %i.bz, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !208

_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %middle.block93, %vec.epilog.middle.block109, %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cd) #26
  br label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.aj, ptr %0, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %1
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.cf, ptr %i.h, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !call_target !118, !inline_history !214
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !26   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !call_target !120, !inline_history !214
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #29
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !113
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { cold noreturn }
attributes #15 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { cold }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !119, file: !114, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTSN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryE", !12, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"short", !8, i64 0}
!20 = !{!"_ZTSN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryE", !8, i64 0, !8, i64 1}
!21 = !{!20, !8, i64 0}
!22 = !{!20, !8, i64 1}
!23 = !{!15, !14, i64 16}
!24 = !{!"p1 short", !12, i64 0}
!25 = !{!19, !19, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!"p1 _ZTSN8rawspeed12iRectangle2DE", !12, i64 0}
!28 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!29 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !12, i64 0}
!32 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0, !29, i64 8}
!33 = !{!32, !31, i64 0}
!34 = !{!"p1 _ZTSN8rawspeed10Array1DRefIKhEE", !12, i64 0}
!35 = !{!8, !8, i64 0}
!36 = !{!"_ZTSN8rawspeed5MutexE"}
!37 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !40, i64 0}
!42 = !{!"_ZTSN8rawspeed8ErrorLogE", !36, i64 0, !41, i64 8}
!43 = !{!"_ZTSN8rawspeed8iPoint2DE", !9, i64 0, !9, i64 4}
!44 = !{!"bool", !8, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !48, i64 0, !43, i64 24}
!50 = !{!"_ZTSSt5arrayIiLm4EE", !8, i64 0}
!51 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !8, i64 0, !44, i64 32}
!52 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !51, i64 0}
!53 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !52, i64 0}
!54 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !53, i64 0}
!55 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !54, i64 0}
!56 = !{!"_ZTSSt22_Optional_payload_baseIiE", !8, i64 0, !44, i64 4}
!57 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !57, i64 0}
!59 = !{!"_ZTSSt8optionalIiE", !58, i64 0}
!60 = !{!"_ZTSN8rawspeed8OptionalIiEE", !59, i64 0}
!61 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !12, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !64, i64 0}
!66 = !{!"p1 int", !12, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorIjSaIjEE", !69, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !73, i64 0}
!75 = !{!"double", !8, i64 0}
!76 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !8, i64 0, !44, i64 16}
!77 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !76, i64 0}
!78 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !77, i64 0}
!79 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !78, i64 0}
!80 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !79, i64 0}
!81 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !12, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !82, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !83, i64 0}
!85 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !84, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!87 = !{!"long", !8, i64 0}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !86, i64 0, !87, i64 8, !8, i64 16}
!89 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !75, i64 0, !80, i64 8, !85, i64 32, !9, i64 56, !43, i64 60, !88, i64 72, !88, i64 104, !88, i64 136, !88, i64 168, !88, i64 200, !88, i64 232, !88, i64 264, !9, i64 296}
!90 = !{!"_ZTSN8rawspeed12RawImageTypeE", !8, i64 0}
!91 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!92 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !91, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !92, i64 0, !93, i64 8}
!95 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !95, i64 0}
!97 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !12, i64 0}
!98 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !97, i64 0}
!99 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !98, i64 0}
!100 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !100, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !101, i64 0}
!103 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !102, i64 0}
!104 = !{!"_ZTSN8rawspeed12RawImageDataE", !42, i64 8, !43, i64 40, !9, i64 48, !9, i64 52, !44, i64 56, !49, i64 64, !9, i64 96, !50, i64 100, !55, i64 120, !60, i64 160, !65, i64 168, !70, i64 192, !74, i64 216, !9, i64 240, !44, i64 244, !89, i64 248, !36, i64 552, !90, i64 553, !96, i64 560, !9, i64 592, !9, i64 596, !43, i64 600, !43, i64 608, !103, i64 616}
!105 = !{!104, !9, i64 592}
!106 = !{!"_ZTSN8rawspeed10Array1DRefIKNS0_IKhEEEE", !34, i64 0, !9, i64 8}
!107 = !{!106, !9, i64 8}
!108 = !{!106, !34, i64 0}
!109 = !{!"_ZTSN8rawspeed10Array1DRefIKNS_12iRectangle2DEEE", !27, i64 0, !9, i64 8}
!110 = !{!109, !9, i64 8}
!111 = !{!109, !27, i64 0}
!112 = !{!"vtable pointer", !7, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !{null, !115}
!117 = !DISubroutineType(types: !116)
!118 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !0, file: !114, line: 139, type: !117, scopeLine: 139, containingType: !0, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!119 = !DINamespace(name: "std", scope: null)
!120 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !0, file: !114, line: 143, type: !117, scopeLine: 143, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!121 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!122 = !{!24, !24, i64 0}
!123 = !{!88, !13, i64 0}
!124 = distinct !{!124, !18}
!125 = distinct !{!125, !18}
!126 = !{!"_ZTSN8rawspeed6BufferE", !13, i64 0, !9, i64 8}
!127 = !{!"_ZTSN8rawspeed10EndiannessE", !8, i64 0}
!128 = !{!"_ZTSN8rawspeed10DataBufferE", !126, i64 0, !127, i64 12}
!129 = !{!"_ZTSN8rawspeed10ByteStreamE", !128, i64 0, !9, i64 16}
!130 = !{!129, !9, i64 16}
!131 = !{!126, !9, i64 8}
!132 = !{!128, !127, i64 12}
!133 = !{!126, !13, i64 0}
!134 = !{!"_ZTSZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilder13getDecoderLUTENS_10ByteStreamEE5Entry", !8, i64 0, !19, i64 2, !19, i64 4, !8, i64 6}
!135 = !{!134, !19, i64 4}
!136 = !{!134, !19, i64 2}
!137 = !{!134, !8, i64 0}
!138 = !{!134, !8, i64 6}
!139 = distinct !{!139, !"_ZSt19__relocate_object_aIN8rawspeed12iRectangle2DES1_SaIS1_EEvPT_PT0_RT1_"}
!140 = distinct !{!140, !139, !"_ZSt19__relocate_object_aIN8rawspeed12iRectangle2DES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!141 = distinct !{!141, !139, !"_ZSt19__relocate_object_aIN8rawspeed12iRectangle2DES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!142 = distinct !{!142, !18}
!143 = distinct !{!143, !18}
!144 = distinct !{!144, !18}
!145 = !{!"_ZTSN8rawspeed10Array1DRefIKtEE", !24, i64 0, !9, i64 8}
!146 = !{!145, !9, i64 8}
!147 = !{!145, !24, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12iRectangle2DESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!149 = !{!148, !27, i64 16}
!150 = !{!148, !27, i64 8}
!151 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26}
!152 = !{!141, !140}
!153 = distinct !{!153, !18}
!154 = distinct !{!154, !18}
!155 = distinct !{!155, !18}
!156 = !{!12, !12, i64 0}
!157 = !{!34, !34, i64 0}
!158 = !{!27, !27, i64 0}
!159 = !{!14, !14, i64 0}
!160 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 8, !157, i64 16, i64 4, !26, i64 24, i64 8, !158, i64 32, i64 4, !26, i64 40, i64 8, !159, i64 48, i64 4, !26, i64 56, i64 8, !35}
!161 = !{!104, !90, i64 553}
!162 = !{!104, !9, i64 596}
!163 = distinct !{null, null, null}
!164 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!165 = !{!164, !9, i64 8}
!166 = !{!164, !9, i64 12}
!167 = distinct !{!167, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!168 = distinct !{!168, !167, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!169 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "runtime_error", scope: !119, file: !177, line: 219, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt13runtime_error")
!170 = distinct !{!170, !18}
!171 = !{!168}
!172 = !{!104, !9, i64 608}
!173 = !{!104, !9, i64 612}
!174 = !{!104, !9, i64 48}
!175 = !{!93, !13, i64 0}
!176 = !{!13, !13, i64 0}
!177 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/stdexcept", directory: "")
!178 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!183 = !{!180, !182}
!184 = !DISubroutineType(types: !183)
!185 = !DISubprogram(name: "what", linkageName: "_ZNKSt13runtime_error4whatEv", scope: !169, file: !177, line: 249, type: !184, scopeLine: 249, containingType: !169, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!186 = distinct !{!186, !18}
!187 = distinct !{!187, !18}
!188 = !{!"_ZTSN8rawspeed10Array1DRefItEE", !24, i64 0, !9, i64 8}
!189 = !{!"_ZTSN8rawspeed10Array2DRefItEE", !188, i64 0, !9, i64 16, !9, i64 20, !9, i64 24}
!190 = !{!189, !9, i64 20}
!191 = !{!189, !9, i64 24}
!192 = !{!189, !9, i64 16}
!193 = !{!"_ZTSN8rawspeed10Array1DRefIKSt4byteEE", !12, i64 0, !9, i64 8}
!194 = !{!193, !9, i64 8}
!195 = !{!86, !13, i64 0}
!196 = !{!88, !87, i64 8}
!197 = distinct !{!197, !18, !209, !210}
!198 = distinct !{!198, !18, !209, !210}
!199 = distinct !{!199, !18, !210, !209}
!200 = distinct !{!200, !18, !209, !210}
!201 = distinct !{!201, !18, !209, !210}
!202 = distinct !{!202, !18, !210, !209}
!203 = distinct !{!203, !"_ZSt19__relocate_object_aIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryES2_SaIS2_EEvPT_PT0_RT1_"}
!204 = distinct !{!204, !203, !"_ZSt19__relocate_object_aIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!205 = distinct !{!205, !203, !"_ZSt19__relocate_object_aIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!206 = distinct !{!206, !18, !209, !210}
!207 = distinct !{!207, !18, !209, !210}
!208 = distinct !{!208, !18, !209}
!209 = !{!"llvm.loop.isvectorized", i32 1}
!210 = !{!"llvm.loop.unroll.runtime.disable"}
!211 = !{!"branch_weights", i32 8, i32 56}
!212 = !{!204}
!213 = !{!205}
!214 = distinct !{null}
end_hunk_1
