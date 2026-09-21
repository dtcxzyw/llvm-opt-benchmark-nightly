Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmRLECodec?download=true
inline.NumInlined: 816
inline.NumDeleted: 407
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4gdcm8RLECodec6DecodeERKNS_11DataElementERS1_:bb.a

bb.t:                                             ; preds = %bb.s, %bb.r, %.thread15.i.i.i
  %.sroa.4.0.i712.i.i.i = phi i64 [ 0, %bb.r ], [ %i.ao, %bb.s ], [ 0, %.thread15.i.i.i ]
  %.018.i.i.i.i.i = phi ptr [ %i.bb, %bb.r ], [ %.017.i.i.i.i.i, %bb.s ], [ %i.ai, %.thread15.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i, i64 %.sroa.4.0.i712.i.i.i
  store i8 0, ptr %i.bc, align 1, !tbaa !47
  %i.bd = load i8, ptr %5, align 8                ; 2 uses
  %i.be = trunc i8 %i.bd to i1                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i8 %i.bd, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = select i1 %i.be, i64 %i.bg, i64 %i.bi
  %i.bk = icmp eq i64 %i.bj, %i.l
  br i1 %i.bk, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @.str.2)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.aw unwind label %bb.y

bb.w:                                             ; preds = %.thread.i.i.i.i.i, %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit77

bb.x:                                             ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bl) #25
  br label %bb.ad

bb.y:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.z:                                             ; preds = %bb.t
  %i.bp = trunc i64 %i.l to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bt = select i1 %i.be, ptr %i.br, ptr %i.bs
  invoke void @_ZN4gdcm11DataElement12SetByteValueEPKcNS_2VLE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.bt, i32 %i.bp)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bu = load i8, ptr %5, align 8
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.ab, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !47
  %i.bx = load i64, ptr %5, align 8
  %i.by = and i64 %i.bx, -2
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.by) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ac ], [ %i.bo, %bb.y ], [ %i.bn, %bb.x ] ; 2 uses
  %i.ca = load i8, ptr %5, align 8
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %bb.ae, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit77

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.ce = load i64, ptr %5, align 8
  %i.cf = and i64 %i.ce, -2
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cf) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit77

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit77: ; preds = %bb.ae, %bb.ad, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.w ], [ %.pn, %bb.ad ], [ %.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ai

bb.af:                                            ; preds = %bb.f, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.cg = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 3 uses
  store ptr %i.cg, ptr %4, align 8, !tbaa !12
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24    ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %4, i64 %i.cj
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !12
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8 ; 2 uses
  store ptr %i.cl, ptr %i.p, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.cm, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8
  %i.cp = trunc i8 %i.co to i1
  br i1 %i.cp, label %bb.ag, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !47
  %i.cs = load i64, ptr %i.cn, align 8
  %i.ct = and i64 %i.cs, -2
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.ct) #26
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %bb.af, %bb.ag
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.cm) #25
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.cu) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  store ptr %i.cg, ptr %3, align 8, !tbaa !12
  %i.cv = load i64, ptr %i.ci, align 8
  %i.cw = getelementptr inbounds i8, ptr %3, i64 %i.cv
  store ptr %i.ch, ptr %i.cw, align 8, !tbaa !12
  store ptr %i.cl, ptr %i.m, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.cx, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 8
  %i.da = trunc i8 %i.cz to i1
  br i1 %i.da, label %bb.ah, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit78

bb.ah:                                            ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !47
  %i.dd = load i64, ptr %i.cy, align 8
  %i.de = and i64 %i.dd, -2
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.de) #26
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit78

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit78: ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %bb.ah
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.cx) #25
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.df) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.au

bb.ai:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit77, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit77 ], [ %i.w, %bb.i ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ai ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.g
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aj ], [ %i.u, %bb.g ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.av

bb.al:                                            ; preds = %bb.a
  %i.dg = load i32, ptr %1, align 8, !tbaa !47
  store i32 %i.dg, ptr %2, align 8, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dh, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !58
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_5ValueEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.dl) ; 0 uses
  %i.dn = tail call noundef ptr @_ZNK4gdcm11DataElement22GetSequenceOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 3 uses
  %.not = icmp eq ptr %i.dn, null
  br i1 %.not, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !92 ; 4 uses
  %i.dq = tail call noundef i64 @_ZNK4gdcm19SequenceOfFragments20GetNumberOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dn) ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !59
  %i.dt = zext i32 %i.ds to i64
  %.not67 = icmp eq i64 %i.dq, %i.dt
  br i1 %.not67, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.du = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dp) #24 ; 3 uses
  %i.dv = udiv i64 %i.dp, %i.dq                   ; 3 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %i.dw = icmp eq i64 %i.eb, %i.dp
  %or.cond = select i1 %spec.select, i1 true, i1 %i.dw
  br i1 %or.cond, label %bb.at, label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.ap
  %i.dx = phi i64 [ 0, %bb.an ], [ %indvars.iv.next, %bb.ap ] ; 2 uses
  %.04681 = phi i1 [ false, %bb.an ], [ %spec.select, %bb.ap ]
  %.04780 = phi i64 [ 0, %bb.an ], [ %i.eb, %bb.ap ] ; 2 uses
  %i.dy = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4gdcm19SequenceOfFragments11GetFragmentEm(ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i64 noundef %i.dx)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %.04780
  %i.ea = tail call noundef i64 @_ZN4gdcm8RLECodec14DecodeFragmentERKNS_8FragmentEPcm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull %i.dz, i64 noundef %i.dv)
  %.not68 = icmp ne i64 %i.ea, %i.dv
  %spec.select = select i1 %.not68, i1 true, i1 %.04681 ; 3 uses
  %i.eb = add i64 %.04780, %i.dv                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %i.dx, 1     ; 2 uses
  %i.ec = icmp samesign ugt i64 %i.dq, %indvars.iv.next
  br i1 %i.ec, label %bb.ap, label %bb.ao, !llvm.loop !264

bb.aq:                                            ; preds = %bb.ao
  %i.ed = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 729, ptr noundef nonnull @.str.2)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @__cxa_throw(ptr nonnull %i.ed, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ed) #25
  br label %bb.av

bb.at:                                            ; preds = %bb.ao
  %i.ef = trunc i64 %i.dp to i32
  tail call void @_ZN4gdcm11DataElement12SetByteValueEPKcNS_2VLE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.du, i32 %i.ef)
  tail call void @_ZdaPv(ptr noundef nonnull %i.du) #26
  %i.eg = xor i1 %spec.select, true
  br label %bb.au

bb.au:                                            ; preds = %bb.a, %bb.al, %bb.am, %bb.at, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit78, %bb.b
  %.460 = phi i1 [ false, %bb.am ], [ false, %bb.b ], [ %i.t, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit78 ], [ false, %bb.al ], [ %i.eg, %bb.at ], [ false, %bb.a ]
  ret i1 %.460

bb.av:                                            ; preds = %bb.as, %bb.ak
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ak ], [ %i.ee, %bb.as ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

bb.aw:                                            ; preds = %bb.v
  unreachable
}

declare noundef ptr @_ZNK4gdcm11DataElement22GetSequenceOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4gdcm19SequenceOfFragments11WriteBufferERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i64 @_ZNK4gdcm19SequenceOfFragments20GetNumberOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4gdcm19SequenceOfFragments11GetFragmentEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZThn8_N4gdcm8RLECodec6DecodeERKNS_11DataElementERS1_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef zeroext i1 @_ZN4gdcm8RLECodec6DecodeERKNS_11DataElementERS1_(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm8RLECodec12DecodeExtentEPcjjjjjjRNSt3__113basic_istreamIcNS2_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8 ; 6 uses
  %10 = alloca %"class.std::__1::basic_stringstream", align 8 ; 13 uses
  %11 = alloca %"class.gdcm::BasicOffsetTable", align 8 ; 8 uses
  %12 = alloca %"class.std::__1::basic_stringstream", align 8 ; 20 uses
  %13 = alloca %"class.gdcm::Fragment", align 8   ; 9 uses
  %14 = alloca %"class.std::__1::vector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store i32 -536805378, ptr %11, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4gdcm16BasicOffsetTable4ReadINS_11SwapperNoOpEEERNSt3__113basic_istreamIcNS3_11char_traitsIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.f = load i16, ptr %i.e, align 2, !tbaa !60
  %i.g = and i16 %i.f, 7
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 752, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.e:                                             ; preds = %.invoke, %bb.m, %bb.k, %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.i) #25
  br label %bb.cl

bb.g:                                             ; preds = %bb.b
  %i.m = invoke noundef i32 @_ZNK4gdcm11PixelFormat13GetScalarTypeEv(ptr noundef nonnull align 2 dereferenceable(10) %i.d)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.not155 = icmp eq i32 %i.m, 13
  br i1 %.not155, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.n = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 753, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #25
  br label %bb.cl

bb.k:                                             ; preds = %bb.h
  %i.p = invoke noundef i32 @_ZNK4gdcm11PixelFormat13GetScalarTypeEv(ptr noundef nonnull align 2 dereferenceable(10) %i.d)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  %.not156 = icmp eq i32 %i.p, 2
  br i1 %.not156, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = invoke noundef i32 @_ZNK4gdcm11PixelFormat13GetScalarTypeEv(ptr noundef nonnull align 2 dereferenceable(10) %i.d)
          to label %bb.n unwind label %bb.e

bb.n:                                             ; preds = %bb.m
  %.not157 = icmp eq i32 %i.q, 3
  br i1 %.not157, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.r = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 754, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.p

.invoke:                                          ; preds = %bb.c, %bb.o, %bb.i
  %i.s = phi ptr [ %i.n, %bb.i ], [ %i.r, %bb.o ], [ %i.i, %bb.c ]
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.r) #25
  br label %bb.cl

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store i32 -536805378, ptr %13, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  %.not188 = icmp eq i32 %6, 0
  br i1 %.not188, label %.preheader159, label %.lr.ph

.preheader159:                                    ; preds = %bb.u, %bb.r
  %.not178 = icmp ugt i32 %6, %7                  ; 2 uses
  br i1 %.not178, label %.critedge127, label %.lr.ph181

.lr.ph181:                                        ; preds = %.preheader159
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.lr.ph:                                           ; preds = %bb.r, %bb.u
  %.080177 = phi i32 [ %i.ad, %bb.u ], [ 0, %bb.r ]
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4gdcm8Fragment12ReadPreValueINS_11SwapperNoOpEEERNSt3__113basic_istreamIcNS3_11char_traitsIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.t unwind label %bb.v       ; 0 uses

bb.t:                                             ; preds = %.lr.ph
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !50
  %i.ab = zext i32 %i.aa to i64
  %i.ac = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.ab, i32 noundef 1)
          to label %bb.u unwind label %bb.w       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ad = add nuw i32 %.080177, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %6
  br i1 %exitcond.not, label %.preheader159, label %.lr.ph, !llvm.loop !270

bb.v:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4gdcm8RLECodec12DecodeExtentEPcjjjjjjRNSt3__113basic_istreamIcNS2_11char_traitsIcEEEE:bb.a

.loopexit.split-lp161:                            ; preds = %bb.ax
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.at, %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ai
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bf) #25
  br label %.body

bb.am:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.am
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.x, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !91
  %i.bo = and i32 %i.bn, 5
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %bb.an, label %bb.at

bb.an:                                            ; preds = %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !93 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke { i64, i64 } %i.bt(ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 noundef -1, i32 noundef 1, i32 noundef 16)
          to label %bb.ao unwind label %bb.ar, !inline_history !271

bb.ao:                                            ; preds = %bb.an
  %i.bv = extractvalue { i64, i64 } %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %i.x, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !91
  %i.cd = or i32 %i.cc, 4
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.ca, i32 noundef %i.cd)
          to label %bb.at unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn7.i = phi { ptr, i32 } [ %i.ce, %bb.aq ], [ %i.cf, %bb.ar ]
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body

bb.at:                                            ; preds = %bb.ap, %bb.ao, %.noexc
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext 0)
          to label %bb.au unwind label %.loopexit ; 0 uses

bb.au:                                            ; preds = %bb.at
  %.pre = load i32, ptr %i.u, align 4, !tbaa !50
  %i.ch = xor i64 %i.ai, -1
  %.pre192.a = add i64 %i.ay, %i.ch
  %.pre193 = zext i32 %.pre to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ag
  %.pre-phi194 = phi i64 [ %.pre193, %bb.au ], [ %i.bb, %bb.ag ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre192.a, %bb.au ], [ %i.az, %bb.ag ] ; 3 uses
  %i.ci = icmp eq i64 %.pre-phi, %.pre-phi194
  %i.cj = add i64 %.pre-phi, 1
  %i.ck = icmp eq i64 %i.cj, %.pre-phi194
  %or.cond = or i1 %i.ci, %i.ck
  br i1 %or.cond, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cl = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 787, ptr noundef nonnull @.str.2)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.cm unwind label %.loopexit.split-lp161

bb.ay:                                            ; preds = %bb.aw
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cl) #25
  br label %.body

bb.az:                                            ; preds = %bb.av
  %i.cn = and i64 %.pre-phi, -9223372036854775807
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.cp = invoke noundef i32 @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.bb unwind label %.loopexit160 ; 0 uses

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.cq = add i32 %.079179, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.cq, %7
  br i1 %.not, label %.critedge127, label %bb.x, !llvm.loop !272

.critedge127:                                     ; preds = %bb.bb, %.preheader159
  %i.cr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0, i32 noundef 0)
          to label %bb.bc unwind label %bb.bf     ; 0 uses

bb.bc:                                            ; preds = %.critedge127
  %i.cs = load ptr, ptr %12, align 8, !tbaa !12
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %12, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !91
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cz = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 796, ptr noundef nonnull @.str.2)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  invoke void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.cm unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.critedge127
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %bb.bd
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cz) #25
  br label %.body

bb.bh:                                            ; preds = %bb.bc
  %reass.sub = sub i32 %5, %4
  %i.dc = add i32 %reass.sub, 1
  %i.dd = invoke noundef zeroext i8 @_ZNK4gdcm11PixelFormat12GetPixelSizeEv(ptr noundef nonnull align 2 dereferenceable(10) %i.d)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.de = sub i32 %3, %2
  %i.df = add i32 %i.de, 1
  %i.dg = zext i8 %i.dd to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.dh = mul i32 %i.df, %i.dg                    ; 3 uses
  %i.di = zext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.not158 = icmp eq i32 %i.dh, 0
  br i1 %.not158, label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %i.di)
          to label %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit_crit_edge unwind label %bb.bp

._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit_crit_edge: ; preds = %bb.bj
  %.pre190 = load ptr, ptr %14, align 8, !tbaa !40
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit: ; preds = %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit_crit_edge, %bb.bi
  %i.dk = phi ptr [ %.pre190, %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit_crit_edge ], [ null, %bb.bi ] ; 4 uses
  br i1 %.not178, label %._crit_edge187, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit
  %.not114182 = icmp ugt i32 %4, %5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 52
  br i1 %.not114182, label %._crit_edge187, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.0186 = phi i32 [ %i.eg, %._crit_edge ], [ %6, %.preheader.lr.ph ] ; 3 uses
  %i.dm = sub nuw i32 %.0186, %6                  ; 2 uses
  %i.dn = mul i32 %i.dm, %i.dc
  %invariant.op = sub i32 %i.dn, %4
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader, %bb.bn
  %.077183 = phi i32 [ %4, %.preheader ], [ %i.ec, %bb.bn ] ; 3 uses
  %i.do = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgENS_4fposI11__mbstate_tEE(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 0, i64 0)
          to label %bb.bl unwind label %bb.bq     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.dp = load i32, ptr %i.dl, align 4, !tbaa !59
  %i.dq = mul i32 %i.dp, %i.dm
  %i.dr = load i32, ptr %i.c, align 8, !tbaa !59
  %i.ds = add i32 %i.dq, %.077183
  %i.dt = mul i32 %i.ds, %i.dr
  %i.du = add i32 %i.dt, %2
  %i.dv = mul i32 %i.du, %i.dg
  %i.dw = zext i32 %i.dv to i64
  %i.dx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgENS_4fposI11__mbstate_tEE(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 0, i64 %i.dw)
          to label %bb.bm unwind label %bb.bq     ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.dy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.dk, i64 noundef %i.di)
          to label %bb.bn unwind label %bb.bq     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %reass.add.reass = add i32 %.077183, %invariant.op
  %i.dz = mul i32 %i.dh, %reass.add.reass
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ea
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.dk, i64 %i.di, i1 false)
  %i.ec = add i32 %.077183, 1                     ; 2 uses
  %.not114 = icmp ugt i32 %i.ec, %5
  br i1 %.not114, label %._crit_edge, label %bb.bk, !llvm.loop !273

bb.bo:                                            ; preds = %bb.bh
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bp:                                            ; preds = %bb.bj
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

._crit_edge:                                      ; preds = %bb.bn
  %i.eg = add i32 %.0186, 1
  %exitcond190.not = icmp eq i32 %.0186, %7
  br i1 %exitcond190.not, label %._crit_edge187.loopexit189, label %.preheader, !llvm.loop !274

._crit_edge187.loopexit189:                       ; preds = %._crit_edge
  %.pre191 = load ptr, ptr %14, align 8, !tbaa !40
  br label %._crit_edge187

._crit_edge187:                                   ; preds = %.preheader.lr.ph, %._crit_edge187.loopexit189, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit
  %i.eh = phi ptr [ %.pre191, %._crit_edge187.loopexit189 ], [ %i.dk, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit ], [ %i.dk, %.preheader.lr.ph ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit, label %bb.br

bb.br:                                            ; preds = %._crit_edge187
  store ptr %i.eh, ptr %i.dj, align 8, !tbaa !41
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !42
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #26
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit: ; preds = %._crit_edge187, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %.pn115 = phi { ptr, i32 } [ %i.ef, %bb.bq ], [ %i.ee, %bb.bp ]
  %i.en = load ptr, ptr %14, align 8, !tbaa !40   ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.en, null
  br i1 %.not.i.i131, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit132, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.en, ptr %i.dj, align 8, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !42
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #26
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit132

_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit132: ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body

.critedge:                                        ; preds = %bb.ab, %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit
  %.not176 = phi i1 [ true, %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit ], [ false, %bb.ab ]
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !58 ; 4 uses
  %.not.i.i134 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i134, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %.critedge
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !55 ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ey = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.noexc.i unwind label %bb.ca

.noexc.i:                                         ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ey) #25
  br label %.body.i

bb.by:                                            ; preds = %bb.bu
  %i.fa = add nsw i64 %i.ew, -1                   ; 2 uses
  store i64 %i.fa, ptr %i.ev, align 8, !tbaa !55
  %.not.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i.i, label %bb.bz, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.bz:                                            ; preds = %bb.by
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #25, !inline_history !0
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.ca:                                            ; preds = %bb.bw
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.ca, %bb.bx
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fe, %bb.ca ], [ %i.ez, %bb.bx ]
  %i.ff = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.ff) #28
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit:      ; preds = %.critedge, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.fg = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 3 uses
  store ptr %i.fg, ptr %12, align 8, !tbaa !12
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 -24    ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %12, i64 %i.fj
  store ptr %i.fh, ptr %i.fk, align 8, !tbaa !12
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.fn, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8
  %i.fq = trunc i8 %i.fp to i1
  br i1 %i.fq, label %bb.cb, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.cb:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !47
  %i.ft = load i64, ptr %i.fo, align 8
  %i.fu = and i64 %i.ft, -2
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #26
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, %bb.cb
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.fn) #25
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %12, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.fv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !58 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i135, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit140, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !55 ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 0
  br i1 %i.ga, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gb = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.gb, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_throw(ptr nonnull %i.gb, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.noexc.i138 unwind label %bb.ci

.noexc.i138:                                      ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.gb) #25
  br label %.body.i136

bb.cg:                                            ; preds = %bb.cc
  %i.gd = add nsw i64 %i.fz, -1                   ; 2 uses
  store i64 %i.gd, ptr %i.fy, align 8, !tbaa !55
  %.not.i.i.i139 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i.i139, label %bb.ch, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit140

bb.ch:                                            ; preds = %bb.cg
  %i.ge = load ptr, ptr %i.fx, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #25, !inline_history !0
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit140

bb.ci:                                            ; preds = %bb.ce
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i136

.body.i136:                                       ; preds = %bb.ci, %bb.cf
  %eh.lpad-body.i137 = phi { ptr, i32 } [ %i.gh, %bb.ci ], [ %i.gc, %bb.cf ]
  %i.gi = extractvalue { ptr, i32 } %eh.lpad-body.i137, 0
  call void @__clang_call_terminate(ptr %i.gi) #28
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit140:   ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store ptr %i.fg, ptr %10, align 8, !tbaa !12
  %i.gj = load i64, ptr %i.fi, align 8
  %i.gk = getelementptr inbounds i8, ptr %10, i64 %i.gj
  store ptr %i.fh, ptr %i.gk, align 8, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.fl, ptr %i.gl, align 8, !tbaa !12
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.gm, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 8
  %i.gp = trunc i8 %i.go to i1
  br i1 %i.gp, label %bb.cj, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit133

end_hunk_1
