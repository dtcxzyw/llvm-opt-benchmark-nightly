Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/NikonDecompressor?download=true
inline.NumInlined: 1176
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj:.noexc

.lr.ph107:                                        ; preds = %.preheader
  %i.ed = zext i32 %.068 to i64                   ; 3 uses
  %xtraiter = and i64 %i.bj, 1
  %i.ee = icmp eq i32 %i.bi, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.lr.ph107
  %unroll_iter = and i64 %i.bj, 4294967294
  br label %bb.k

.lr.ph104.split:                                  ; preds = %.lr.ph104.split.preheader243, %bb.i
  %indvars.iv122 = phi i64 [ %i.ef, %bb.i ], [ %indvars.iv122.ph, %.lr.ph104.split.preheader243 ] ; 2 uses
  %.067103 = phi i64 [ %i.el, %bb.i ], [ %.067103.ph, %.lr.ph104.split.preheader243 ] ; 2 uses
  %i.ef = add nuw nsw i64 %indvars.iv122, 2       ; 3 uses
  %.not.i.i.i.i.i.i76 = icmp samesign ugt i64 %i.ef, %i.al
  br i1 %.not.i.i.i.i.i.i76, label %.split.us, label %bb.i

.split.us:                                        ; preds = %.lr.ph104.split, %.lr.ph104.split.us
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #16
          to label %.noexc79 unwind label %bb.j

.noexc79:                                         ; preds = %.split.us
  unreachable

bb.i:                                             ; preds = %.lr.ph104.split
  %i.eg = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv122
  %.0.copyload.i.i.i.i.i.i77 = load i16, ptr %i.eg, align 1
  %i.eh = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i77)
  %i.ei = trunc nuw i64 %i.ef to i32
  store i32 %i.ei, ptr %i.af, align 8, !tbaa !25
  %i.ej = mul nuw nsw i64 %.067103, %i.bm
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ej
  store i16 %i.eh, ptr %i.ek, align 2, !tbaa !16
  %i.el = add nuw nsw i64 %.067103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond125.not, label %.preheader, label %.lr.ph104.split, !llvm.loop !54

bb.j:                                             ; preds = %.split.us
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

._crit_edge108.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge108, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge108.loopexit.unr-lcssa, %.lr.ph107
  %.066106.epil.init = phi i64 [ 0, %.lr.ph107 ], [ %i.gw, %._crit_edge108.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod247 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.en = urem i64 %.066106.epil.init, %i.ed      ; 2 uses
  %i.eo = trunc nuw i64 %i.en to i32              ; 2 uses
  %i.ep = sub nuw i64 %.066106.epil.init, %i.en   ; 2 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = add i32 %.068, %i.eq
  %i.es = sub i32 %.068, %i.eo
  %i.et = and i64 %i.ep, 4294967295
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !16
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul i32 %i.es, %i.ew
  %i.ey = zext i32 %i.er to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !16
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul i32 %i.fb, %i.eo
  %i.fd = add i32 %i.fc, %i.ex
  %i.fe = udiv i32 %i.fd, %.068
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.066106.epil.init
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !16
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %.epil.preheader, %._crit_edge108.loopexit.unr-lcssa, %.preheader
  store i32 562, ptr %i.af, align 8, !tbaa !25
  %.not.i.i = icmp samesign ult i32 %i.ak, 562
  br i1 %.not.i.i, label %.invoke, label %_ZN8rawspeed10ByteStream11setPositionEj.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph107.new
  %.066106 = phi i64 [ 0, %.lr.ph107.new ], [ %i.gw, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph107.new ], [ %niter.next.1, %bb.k ]
  %i.fh = urem i64 %.066106, %i.ed                ; 2 uses
  %i.fi = trunc nuw i64 %i.fh to i32              ; 2 uses
  %i.fj = sub nuw i64 %.066106, %i.fh             ; 2 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = add i32 %.068, %i.fk
  %i.fm = sub i32 %.068, %i.fi
  %i.fn = and i64 %i.fj, 4294967295
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !16
  %i.fq = zext i16 %i.fp to i32
  %i.fr = mul i32 %i.fm, %i.fq
  %i.fs = zext i32 %i.fl to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !16
  %i.fv = zext i16 %i.fu to i32
  %i.fw = mul i32 %i.fv, %i.fi
  %i.fx = add i32 %i.fw, %i.fr
  %i.fy = udiv i32 %i.fx, %.068
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.066106
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !16
  %i.gb = or disjoint i64 %.066106, 1             ; 3 uses
  %i.gc = urem i64 %i.gb, %i.ed                   ; 2 uses
  %i.gd = trunc nuw i64 %i.gc to i32              ; 2 uses
  %i.ge = sub nuw i64 %i.gb, %i.gc                ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = add i32 %.068, %i.gf
  %i.gh = sub i32 %.068, %i.gd
  %i.gi = and i64 %i.ge, 4294967295
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !16
  %i.gl = zext i16 %i.gk to i32
  %i.gm = mul i32 %i.gh, %i.gl
  %i.gn = zext i32 %i.gg to i64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !16
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul i32 %i.gq, %i.gd
  %i.gs = add i32 %i.gr, %i.gm
  %i.gt = udiv i32 %i.gs, %.068
  %i.gu = trunc i32 %i.gt to i16
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gb
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !16
  %i.gw = add nuw i64 %.066106, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge108.loopexit.unr-lcssa, label %bb.k, !llvm.loop !55

_ZN8rawspeed10ByteStream11setPositionEj.exit:     ; preds = %._crit_edge108
  %.not.i.i.i.i.i.i82 = icmp samesign ult i32 %i.ak, 564
  br i1 %.not.i.i.i.i.i.i82, label %.invoke, label %bb.l

.invoke:                                          ; preds = %._crit_edge, %_ZN8rawspeed10ByteStream11setPositionEj.exit, %._crit_edge108
  %i.gx = phi ptr [ @.str.9, %._crit_edge108 ], [ @.str.7, %_ZN8rawspeed10ByteStream11setPositionEj.exit ], [ @.str.7, %._crit_edge ]
  %i.gy = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %._crit_edge108 ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %_ZN8rawspeed10ByteStream11setPositionEj.exit ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %._crit_edge ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.gx, ptr noundef nonnull %i.gy) #16
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.as, i64 562
  %.0.copyload.i.i.i.i.i.i83 = load i16, ptr %i.gz, align 1 ; 2 uses
  %i.ha = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i83)
  %spec.select.i.i.i.i.i.i84 = select i1 %i.ar, i16 %.0.copyload.i.i.i.i.i.i83, i16 %i.ha
  store i32 564, ptr %i.af, align 8, !tbaa !25
  %i.hb = zext i16 %spec.select.i.i.i.i.i.i84 to i32
  store i32 %i.hb, ptr %5, align 4, !tbaa !56
  br label %.loopexit

bb.m:                                             ; preds = %bb.e
  %.not = icmp eq i32 %3, 70
  br i1 %.not, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.f, %bb.m
  %i.hc = add i16 %spec.select.i.i.i.i.i.i, -16386
  %or.cond7 = icmp ult i16 %i.hc, -16385
  br i1 %or.cond7, label %.invoke157, label %bb.n

.invoke157:                                       ; preds = %.thread, %bb.g
  %i.hd = phi ptr [ @.str, %bb.g ], [ @.str.1, %.thread ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.hd, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj, i32 noundef %i.ay) #16
          to label %.cont158 unwind label %bb.d

.cont158:                                         ; preds = %.invoke157
  unreachable

bb.n:                                             ; preds = %.thread
  %narrow = add nuw nsw i16 %spec.select.i.i.i.i.i.i, 1
  %i.he = zext nneg i16 %narrow to i64            ; 4 uses
  %i.hf = icmp samesign ult i64 %i.u, %i.he
  br i1 %i.hf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hg = sub nuw nsw i64 %i.he, %i.u
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.hg)
          to label %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge unwind label %bb.d

._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge:    ; preds = %bb.o
  %.pre131.pre = load ptr, ptr %0, align 8
  br label %.lr.ph102

bb.p:                                             ; preds = %bb.n
  %i.hh = icmp samesign ugt i64 %i.u, %i.he
  br i1 %i.hh, label %bb.q, label %.lr.ph102

bb.q:                                             ; preds = %bb.p
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.he ; 2 uses
  %.not.i.i87 = icmp eq ptr %.0.i.i.i.i.i153, %i.hi
  br i1 %.not.i.i87, label %.lr.ph102, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.q
  store ptr %i.hi, ptr %i.v, align 8, !tbaa !18
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i, %bb.q, %bb.p, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge
  %.pre.a = phi ptr [ %.pre131.pre, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge ], [ %i.j, %bb.p ], [ %i.j, %bb.q ], [ %i.j, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.hj = load i32, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp sgt i32 %i.hj, -1
  %.promoted = load i32, ptr %i.af, align 8, !tbaa !25
  %i.hm = zext i32 %.promoted to i64
  %wide.trip.count = zext nneg i16 %spec.select.i.i.i.i.i.i to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph102, %bb.t
  %indvars.iv116 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next117, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ %i.hm, %.lr.ph102 ], [ %i.hn, %bb.t ] ; 2 uses
  %i.hn = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %.not.i.i.i.i.i.i89 = icmp samesign ugt i64 %i.hn, %i.hk
  br i1 %.not.i.i.i.i.i.i89, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #16
          to label %.noexc92 unwind label %bb.u

.noexc92:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ho = load i16, ptr %i.ap, align 4, !tbaa !33
  %i.hp = icmp eq i16 %i.ho, -8531
  %i.hq = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @llvm.assume(i1 %i.hl)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %indvars.iv
  %.0.copyload.i.i.i.i.i.i90 = load i16, ptr %i.hr, align 1 ; 2 uses
  %i.hs = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i90)
  %spec.select.i.i.i.i.i.i91 = select i1 %i.hp, i16 %.0.copyload.i.i.i.i.i.i90, i16 %i.hs
  %6 = trunc nuw i64 %i.hn to i32
  store i32 %6, ptr %i.af, align 8, !tbaa !25
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.pre.a, i64 %indvars.iv116
  store i16 %spec.select.i.i.i.i.i.i91, ptr %i.ht, align 2, !tbaa !16
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond121.not, label %.loopexit, label %bb.r, !llvm.loop !57

bb.u:                                             ; preds = %bb.s
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit:                                        ; preds = %bb.t, %bb.m, %bb.l
  %i.hv = phi ptr [ %i.j, %bb.m ], [ %i.j, %bb.l ], [ %.pre.a, %bb.t ] ; 3 uses
  %i.hw = load ptr, ptr %i.v, align 8, !tbaa !18  ; 3 uses
  %i.hx = icmp eq ptr %i.hw, %i.hv
  br i1 %i.hx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef -1)
          to label %_ZNSt6vectorItSaItEE6resizeEm.exit97 unwind label %bb.d

bb.w:                                             ; preds = %.loopexit
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = getelementptr i8, ptr %i.hv, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 -2     ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.hw, %i.ic
  br i1 %.not.i.i94, label %_ZNSt6vectorItSaItEE6resizeEm.exit97, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95:      ; preds = %bb.w
  store ptr %i.ic, ptr %i.v, align 8, !tbaa !18
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit97

bb.x:                                             ; preds = %bb.u, %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.be, %bb.d ], [ %i.em, %bb.j ], [ %i.hu, %bb.u ]
  %i.id = load ptr, ptr %0, align 8, !tbaa !11    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ie = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.if, %i.ig
  tail call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ih) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEE6resizeEm.exit97:             ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95, %bb.w, %bb.v
  ret void

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.y, %bb.x
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEET_j(ptr dead_on_unwind noalias writable sret(%"class.rawspeed::PrefixCodeLUTDecoder") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rawspeed::PrefixCode", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::HuffmanCode", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @_ZN8rawspeed17NikonDecompressor10nikon_treeE, i64 %i.a ; 2 uses
  %i.c = invoke noundef i32 @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %i.b, i32 16)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = icmp sgt i32 %i.c, -1
  call void @llvm.assume(i1 %i.e)
  invoke void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13setCodeValuesENS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %i.d, i32 %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEcvNS_10PrefixCodeIS1_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.rawspeed::PrefixCode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.f, align 1, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load <4 x ptr>, ptr %2, align 8, !tbaa !78
  store <4 x ptr> %i.h, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load <4 x ptr>, ptr %i.j, align 8, !tbaa !78
  store <4 x ptr> %i.k, ptr %i.i, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79
  store ptr %i.n, ptr %i.l, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  invoke void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !80   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %3, align 8, !tbaa !82     ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit

_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.j:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  call void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !80   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  %i.j = icmp ult i64 %i.i, 17
  br i1 %i.j, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@_ZN8rawspeed17NikonDecompressor10decompressENS_10Array1DRefIKhEEb:bb.a
bb.s:                                             ; preds = %bb.r
  %i.it = lshr i32 %i.ir, 4
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.iu = zext nneg i16 %i.io to i32              ; 3 uses
  %i.iv = icmp slt i32 %i.im, %i.iu
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t
  %i.iw = zext i16 %i.in to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 8, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.u ] ; 3 uses
  %.04453.i.i.i.i.i = phi i32 [ %i.iu, %.lr.ph.i.i.i.i.i ], [ %i.jd, %bb.u ]
  %i.ix = icmp samesign ult i64 %indvars.iv.i.i.i.i.i, 16
  call void @llvm.assume(i1 %i.ix)
  %i.iy = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.iz = xor i32 %i.iy, 15
  %i.ja = lshr i32 %i.iw, %i.iz
  %i.jb = and i32 %i.ja, 1
  %i.jc = shl i32 %.04453.i.i.i.i.i, 1
  %i.jd = or disjoint i32 %i.jb, %i.jc            ; 3 uses
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i.i.i.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !56, !alias.scope !238
  %i.jg = icmp sgt i32 %i.jd, %i.jf
  br i1 %i.jg, label %bb.u, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !262

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.u
  %i.jh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.t
  %.046.lcssa.i.i.i.i.i = phi i32 [ 8, %bb.t ], [ %i.jh, %._crit_edge.loopexit.i.i.i.i.i ]
  %.044.lcssa.i.i.i.i.i = phi i32 [ %i.iu, %bb.t ], [ %i.jd, %._crit_edge.loopexit.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i64 [ 8, %bb.t ], [ %indvars.iv.next.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %.lcssa.i.i.i.i.i
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !16, !alias.scope !238 ; 2 uses
  %i.jk = icmp eq i16 %i.jj, 255
  br i1 %i.jk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  store i32 255, ptr %i.jl, align 4, !tbaa !56
  br label %bb.ae

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.jm = sext i16 %i.jj to i32
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %.lcssa.i.i.i.i.i
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !16, !alias.scope !238
  %i.jp = zext i16 %i.jo to i32
  %i.jq = add i32 %.044.lcssa.i.i.i.i.i, %i.jm
  %i.jr = sub i32 %i.jq, %i.jp
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !56, !alias.scope !238
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.047.i.i.i.i.i = phi i32 [ %i.it, %bb.s ], [ %i.ju, %bb.w ] ; 5 uses
  %.1.i.i.i.i.i = phi i32 [ %i.is, %bb.s ], [ %.046.lcssa.i.i.i.i.i, %bb.w ] ; 3 uses
  %i.jv = icmp eq i32 %.047.i.i.i.i.i, 16
  br i1 %i.jv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  %i.jx = or disjoint i32 %.1.i.i.i.i.i, -8388608
  store i32 %i.jx, ptr %i.jw, align 4, !tbaa !56
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.jy = add i32 %.1.i.i.i.i.i, %.047.i.i.i.i.i  ; 4 uses
  %i.jz = icmp ugt i32 %i.jy, 14
  br i1 %i.jz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  store i32 255, ptr %i.ka, align 4, !tbaa !56
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %.not50.i.i.i.i.i = icmp eq i32 %.047.i.i.i.i.i, 0
  br i1 %.not50.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kb = sub nuw nsw i32 16, %i.jy
  %i.kc = icmp ne i32 %i.jy, 0
  call void @llvm.assume(i1 %i.kc)
  %i.kd = zext i16 %i.in to i32
  %i.ke = lshr i32 %i.kd, %i.kb
  %notmask.i.i.i.i.i = shl nsw i32 -1, %.047.i.i.i.i.i
  %i.kf = xor i32 %notmask.i.i.i.i.i, -1          ; 2 uses
  %i.kg = and i32 %i.ke, %i.kf                    ; 2 uses
  %i.kh = add nsw i32 %.047.i.i.i.i.i, -1
  %i.ki = shl nuw i32 1, %i.kh
  %i.kj = and i32 %i.kg, %i.ki
  %i.kk = icmp eq i32 %i.kj, 0
  %i.kl = select i1 %i.kk, i32 %i.kf, i32 0
  %spec.select.i.i.i.i.i = sub nsw i32 %i.kg, %i.kl
  %i.km = shl i32 %spec.select.i.i.i.i.i, 8
  %i.kn = or disjoint i32 %i.km, %i.jy
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !56
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  store i32 %.1.i.i.i.i.i, ptr %i.kp, align 4, !tbaa !56
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.v
  %indvars.iv.next62.i.i.i.i.i = add nuw nsw i64 %indvars.iv61.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next62.i.i.i.i.i, 16384
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i, label %bb.r, !llvm.loop !263

bb.af:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %.invoke.i.i
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !108, !alias.scope !238 ; 3 uses
  %.not.i.i.i.i.i9.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i9.i.i, label %.body, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kr = getelementptr inbounds nuw i8, ptr %7, i64 2288
  %.val5.i.i = load ptr, ptr %i.kr, align 8, !alias.scope !238
  %i.ks = ptrtoint ptr %.val5.i.i to i64
  %i.kt = ptrtoint ptr %.val.i.i to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ku) #24
  br label %.body

_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !238
  %i.kv = load ptr, ptr %0, align 8, !tbaa !128   ; 6 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 568
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !264, !noalias !265
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 592
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !141, !noalias !265
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 608
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !268, !noalias !265
  %i.lc = mul nsw i32 %i.lb, %i.kz                ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !269, !noalias !265
  %i.lf = ashr i32 %i.le, 1                       ; 2 uses
  %i.lg = icmp sgt i32 %i.lc, -1
  call void @llvm.assume(i1 %i.lg)
  %i.lh = icmp sge i32 %i.lf, %i.lc
  call void @llvm.assume(i1 %i.lh)
  %i.li = and i32 %i.lc, 1
  %i.lj = icmp eq i32 %i.li, 0
  call void @llvm.assume(i1 %i.lj)
  %i.lk = icmp ne i32 %i.lc, 0
  call void @llvm.assume(i1 %i.lk)
  %i.ll = icmp slt i32 %i.aa, %i.ad
  br i1 %i.ll, label %.lr.ph.i, label %_ZN8rawspeed17NikonDecompressor10decompressINS_12_GLOBAL__N_120NikonLASDecompressorEEEvRNS_14BitStreamerMSBEii.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kv, i64 612
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !270, !noalias !265
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kv, i64 616
  %i.lq = zext i32 %i.aa to i64
  %i.lr = zext nneg i32 %i.lf to i64
  %i.ls = zext nneg i32 %i.lc to i64
  %i.lt = zext nneg i32 %i.ln to i64
  %i.lu = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !271 ; 8 uses
  %i.lv = icmp sgt i32 %i.lu, 3
  call void @llvm.assume(i1 %i.lv)
  %i.lw = add nuw nsw i32 %i.lu, 8                ; 2 uses
  %.promoted19 = load i32, ptr %i.g, align 8, !tbaa !233
  %.promoted = load i32, ptr %i.i, align 8, !tbaa !234
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i
  %.promoted1825 = phi i32 [ %.promoted, %.lr.ph.i ], [ %.promoted1821, %bb.ai ] ; 2 uses
  %.promoted20 = phi i32 [ %.promoted19, %.lr.ph.i ], [ %i.qq, %bb.ai ]
  %indvars.iv80.i = phi i64 [ %i.lq, %.lr.ph.i ], [ %indvars.iv.next81.i, %bb.ai ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.lx = and i64 %indvars.iv80.i, 1
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lx ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 4, !tbaa !85
  store i64 %i.lz, ptr %8, align 8, !tbaa !85
  %i.ma = icmp samesign ult i64 %indvars.iv80.i, %i.lt
  %i.mb = mul nuw nsw i64 %indvars.iv80.i, %i.lr
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.mb
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 4 uses
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %i.md = trunc nuw nsw i64 %indvars.iv.next81.i to i32
  %i.me = icmp sgt i32 %i.ad, %i.md
  br i1 %i.me, label %bb.ah, label %_ZN8rawspeed17NikonDecompressor10decompressINS_12_GLOBAL__N_120NikonLASDecompressorEEEvRNS_14BitStreamerMSBEii.exit, !llvm.loop !272

bb.aj:                                            ; preds = %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i, %bb.ah
  %.promoted1824 = phi i32 [ %.promoted1825, %bb.ah ], [ %.promoted1821, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ]
  %i.mf = phi i32 [ %.promoted1825, %bb.ah ], [ %i.qp, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 5 uses
  %i.mg = phi i32 [ %.promoted20, %bb.ah ], [ %i.qq, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next.i, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 4 uses
  %i.mh = icmp samesign ult i32 %i.mg, 65
  call void @llvm.assume(i1 %i.mh)
  %.not.i.i.i7 = icmp samesign ult i32 %i.mg, 32
  br i1 %.not.i.i.i7, label %bb.ak, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i: ; preds = %bb.aj
  %.pre.i.i = load i64, ptr %10, align 8, !tbaa !231
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.mi = add nuw nsw i32 %i.mf, 4                ; 4 uses
  %.not.i.i.i24.i = icmp samesign ugt i32 %i.mi, %i.lu
  br i1 %.not.i.i.i24.i, label %bb.am, label %bb.al, !prof !224

bb.al:                                            ; preds = %bb.ak
  %i.mj = zext nneg i32 %i.mf to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.mj
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ml = icmp samesign ugt i32 %i.mf, %i.lw
  br i1 %i.ml, label %.invoke.i, label %bb.an, !prof !224

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lu, i32 %i.mf) ; 3 uses
  %i.mm = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lu, i32 %i.mm)
  %i.mn = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.mo = icmp samesign ult i32 %i.mn, 5
  call void @llvm.assume(i1 %i.mo)
  %i.mp = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.mp
  %i.mr = zext nneg i32 %i.mn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.mq, i64 %i.mr, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i: ; preds = %bb.an, %bb.al
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.an ], [ %i.mk, %bb.al ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %.promoted8.i.i.i.i = load i64, ptr %10, align 8
  %i.ms = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i)
  %i.mt = zext i32 %i.ms to i64
  %i.mu = or disjoint i32 %i.mg, 32
  %i.mv = sub nuw nsw i32 32, %i.mg
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw i64 %i.mt, %i.mw
  %i.my = or i64 %i.mx, %.promoted8.i.i.i.i
  store i32 %i.mi, ptr %i.i, align 8, !tbaa !234
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i
  %.promoted1823 = phi i32 [ %.promoted1824, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.mi, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 3 uses
  %i.mz = phi i32 [ %i.mf, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.mi, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 7 uses
  %i.na = phi i64 [ %.pre.i.i, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.my, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 5 uses
  %i.nb = phi i32 [ %i.mg, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.mu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 3 uses
  %i.nc = lshr i64 %i.na, 50
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !56 ; 2 uses
  %i.nf = and i32 %i.ne, 255                      ; 4 uses
  %.not.i.i8 = icmp eq i32 %i.nf, 255
  br i1 %.not.i.i8, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.ng = icmp samesign ult i32 %i.nf, 33
  call void @llvm.assume(i1 %i.ng)
  %i.nh = sub nuw nsw i32 %i.nb, %i.nf            ; 2 uses
  store i32 %i.nh, ptr %i.g, align 8, !tbaa !233
  %i.ni = zext nneg i32 %i.nf to i64
  %i.nj = shl i64 %i.na, %i.ni
  store i64 %i.nj, ptr %10, align 8, !tbaa !231
  %i.nk = ashr i32 %i.ne, 8
  br label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i

bb.ap:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.nl = lshr i64 %i.na, 56                      ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !56 ; 2 uses
  %i.no = and i32 %i.nn, 15                       ; 3 uses
  %.not46.i.i = icmp eq i32 %i.no, 0
  br i1 %.not46.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.np = sub nuw nsw i32 %i.nb, %i.no            ; 2 uses
  store i32 %i.np, ptr %i.g, align 8, !tbaa !233
  %i.nq = zext nneg i32 %i.no to i64
  %i.nr = shl i64 %i.na, %i.nq                    ; 2 uses
  store i64 %i.nr, ptr %10, align 8, !tbaa !231
  %i.ns = ashr i32 %i.nn, 4
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.nt = trunc nuw nsw i64 %i.nl to i32          ; 3 uses
  %i.nu = add nsw i32 %i.nb, -8                   ; 3 uses
  store i32 %i.nu, ptr %i.g, align 8, !tbaa !233
  %i.nv = shl i64 %i.na, 8                        ; 3 uses
  store i64 %i.nv, ptr %10, align 8, !tbaa !231
  %i.nw = icmp slt i32 %i.im, %i.nt
  br i1 %i.nw, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 8, %bb.ar ] ; 2 uses
  %i.nx = phi i64 [ %i.oe, %.lr.ph.i.i ], [ %i.nv, %bb.ar ] ; 2 uses
  %i.ny = phi i32 [ %i.od, %.lr.ph.i.i ], [ %i.nu, %bb.ar ] ; 3 uses
  %.04053.i.i = phi i32 [ %i.og, %.lr.ph.i.i ], [ %i.nt, %bb.ar ]
  %i.nz = icmp samesign ult i32 %i.ny, 65
  call void @llvm.assume(i1 %i.nz)
  %i.oa = icmp ne i32 %i.ny, 0
  call void @llvm.assume(i1 %i.oa)
  %i.ob = lshr i64 %i.nx, 63
  %i.oc = trunc nuw nsw i64 %i.ob to i32
  %i.od = add nsw i32 %i.ny, -1                   ; 3 uses
  %i.oe = shl i64 %i.nx, 1                        ; 3 uses
  %i.of = shl i32 %.04053.i.i, 1
  %i.og = or disjoint i32 %i.of, %i.oc            ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !56
  %i.oj = icmp sgt i32 %i.og, %i.oi
  br i1 %i.oj, label %.lr.ph.i.i, label %bb.as, !llvm.loop !273

bb.as:                                            ; preds = %.lr.ph.i.i
  store i32 %i.od, ptr %i.g, align 8, !tbaa !233
  store i64 %i.oe, ptr %10, align 8, !tbaa !231
  %i.ok = icmp samesign ugt i64 %indvars.iv.i.i, 15
  br i1 %i.ok, label %bb.at, label %.thread.i.i

bb.at:                                            ; preds = %bb.as
  %i.ol = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE, i32 noundef %i.ol) #16
          to label %.noexc25.i unwind label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i

.noexc25.i:                                       ; preds = %bb.at
  unreachable

.thread.i.i:                                      ; preds = %bb.as, %bb.ar
  %.lcssa82.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.as ], [ 8, %bb.ar ] ; 2 uses
  %.040.lcssa81.i.i = phi i32 [ %i.og, %bb.as ], [ %i.nt, %bb.ar ]
  %i.om = phi i32 [ %i.od, %bb.as ], [ %i.nu, %bb.ar ]
  %.pre.i6480.i.i = phi i64 [ %i.oe, %bb.as ], [ %i.nv, %bb.ar ]
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %.lcssa82.i.i
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !16
  %i.op = sext i16 %i.oo to i32
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %.lcssa82.i.i
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !16
  %i.os = zext i16 %i.or to i32
  %i.ot = add i32 %.040.lcssa81.i.i, %i.op
  %i.ou = sub i32 %i.ot, %i.os
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !56
  br label %bb.au

bb.au:                                            ; preds = %.thread.i.i, %bb.aq
  %.promoted8.i.i.i.i.i = phi i64 [ %i.nr, %bb.aq ], [ %.pre.i6480.i.i, %.thread.i.i ] ; 2 uses
  %i.oy = phi i32 [ %i.np, %bb.aq ], [ %i.om, %.thread.i.i ] ; 5 uses
  %.042.i.i = phi i32 [ %i.ns, %bb.aq ], [ %i.ox, %.thread.i.i ] ; 3 uses
  %i.oz = icmp eq i32 %.042.i.i, 16
  br i1 %i.oz, label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pa = and i32 %.042.i.i, 15                   ; 4 uses
  %i.pb = ashr i32 %.042.i.i, 4                   ; 4 uses
  %i.pc = sub nsw i32 %i.pa, %i.pb                ; 5 uses
  %i.pd = icmp ne i32 %i.pa, %i.pb
  call void @llvm.assume(i1 %i.pd)
  %i.pe = icmp samesign ult i32 %i.pc, 33
  call void @llvm.assume(i1 %i.pe)
  %.not.i.i50.i.i = icmp samesign ult i32 %i.oy, %i.pc
  br i1 %.not.i.i50.i.i, label %bb.aw, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.pf = add nuw nsw i32 %i.mz, 4                ; 4 uses
  %.not.i.i.i.i23.i = icmp samesign ugt i32 %i.pf, %i.lu
  br i1 %.not.i.i.i.i23.i, label %bb.ay, label %bb.ax, !prof !224

bb.ax:                                            ; preds = %bb.aw
  %i.pg = zext nneg i32 %i.mz to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.pg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.pi = icmp samesign ugt i32 %i.mz, %i.lw
  br i1 %i.pi, label %.invoke.i, label %bb.az, !prof !224

.invoke.i:                                        ; preds = %bb.ay, %bb.am
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #16
          to label %.cont.i unwind label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %.sroa.0.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lu, i32 %i.mz) ; 3 uses
  %i.pj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lu, i32 %i.pj)
  %i.pk = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i ; 2 uses
  %i.pl = icmp samesign ult i32 %i.pk, 5
end_hunk_1
