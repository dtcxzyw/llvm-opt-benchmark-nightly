Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/o3dgcTriangleFans?download=true
inline.NumInlined: 124
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5o3dgc12LoadIntACEGCERNS_6VectorIlEEmRKNS_12BinaryStreamERm:bb.a
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit45

bb.h:                                             ; preds = %bb.f
  %i.ej = zext i8 %i.dl to i64
  %i.ek = add i64 %i.dd, 2                        ; 2 uses
  store i64 %i.ek, ptr %3, align 8
  %i.el = load ptr, ptr %2, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.di
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 8
  %i.eq = or disjoint i64 %i.ep, %i.ej
  %i.er = add i64 %i.dd, 3                        ; 2 uses
  store i64 %i.er, ptr %3, align 8
  %i.es = load ptr, ptr %2, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ek
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 16
  %i.ex = or disjoint i64 %i.eq, %i.ew
  %i.ey = add i64 %i.dd, 4                        ; 2 uses
  store i64 %i.ey, ptr %3, align 8
  %i.ez = load ptr, ptr %2, align 8               ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 24
  %i.fe = sext i32 %i.fd to i64
  %i.ff = or disjoint i64 %i.ex, %i.fe
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit45

_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit45: ; preds = %bb.g, %bb.h
  %i.fg = phi ptr [ %i.ee, %bb.g ], [ %i.ez, %bb.h ]
  %i.fh = phi i64 [ %i.ed, %bb.g ], [ %i.ey, %bb.h ] ; 2 uses
  %.0.i44 = phi i64 [ %i.ei, %bb.g ], [ %i.ff, %bb.h ]
  %i.fi = add nsw i64 %.0.i44, -2147483647
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  %i.fk = add i64 %i.fh, %i.df
  store i64 %i.fk, ptr %3, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = icmp ugt i64 %.0.i42, %i.fm
  br i1 %i.fn, label %bb.i, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

bb.i:                                             ; preds = %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit45
  store i64 %.0.i42, ptr %i.fl, align 8
  %i.fo = icmp ugt i64 %.0.i42, 2305843009213693951
  %i.fp = shl nuw nsw i64 %.0.i42, 3
  %i.fq = select i1 %i.fo, i64 -1, i64 %i.fp
  %i.fr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fq) #7 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ft = load i64, ptr %i.fs, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fu = load ptr, ptr %0, align 8               ; 3 uses
  %i.fv = shl i64 %i.ft, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr align 8 %i.fu, i64 %i.fv, i1 false)
  %i.fw = icmp eq ptr %i.fu, null
  br i1 %i.fw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.fu) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  store ptr %i.fr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

_ZN5o3dgc6VectorIlE8AllocateEm.exit:              ; preds = %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit45, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %4)
  %i.fx = trunc i64 %i.df to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %4, i32 noundef %i.fx, ptr noundef %i.fj)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44) %4)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.fy = trunc i64 %1 to i32
  %i.fz = add i32 %i.fy, 2
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %5, i32 noundef %i.fz)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  invoke void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.preheader54 unwind label %bb.u

.preheader54:                                     ; preds = %bb.p
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ah

bb.r:                                             ; preds = %bb.m, %_ZN5o3dgc6VectorIlE8AllocateEm.exit
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.n
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.t:                                             ; preds = %bb.o
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.p
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.v:                                             ; preds = %.preheader54, %bb.ac
  %.055 = phi i64 [ 0, %.preheader54 ], [ %i.hm, %bb.ac ]
  %i.gf = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(52) %5)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = icmp eq i64 %1, %i.gg
  br i1 %i.gh, label %.preheader, label %bb.x

.preheader:                                       ; preds = %bb.w, %.noexc
  %.014.i = phi i32 [ %.115.i, %.noexc ], [ 0, %bb.w ] ; 2 uses
  %.012.i = phi i32 [ %.113.i, %.noexc ], [ 0, %bb.w ]
  %i.gi = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader
  %i.gj = icmp eq i32 %i.gi, 1                    ; 2 uses
  %i.gk = shl nuw i32 1, %.014.i
  %i.gl = zext i1 %i.gj to i32
  %.115.i = add nuw nsw i32 %.014.i, %i.gl        ; 3 uses
  %i.gm = select i1 %i.gj, i32 %i.gk, i32 0
  %.113.i = add nsw i32 %i.gm, %.012.i            ; 2 uses
  %.not.i46 = icmp eq i32 %i.gi, 0
  br i1 %.not.i46, label %.preheader.i, label %.preheader, !llvm.loop !27

.preheader.i:                                     ; preds = %.noexc
  %.not1617.i = icmp eq i32 %.115.i, 0
  br i1 %.not1617.i, label %.loopexit50, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc47
  %.019.i = phi i32 [ %.1.i, %.noexc47 ], [ 0, %.preheader.i ]
  %.218.i = phi i32 [ %i.go, %.noexc47 ], [ %.115.i, %.preheader.i ]
  %i.gn = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.noexc47 unwind label %.loopexit

.noexc47:                                         ; preds = %.lr.ph.i
  %i.go = add nsw i32 %.218.i, -1                 ; 3 uses
  %i.gp = icmp eq i32 %i.gn, 1
  %i.gq = shl nuw i32 1, %i.go
  %i.gr = select i1 %i.gp, i32 %i.gq, i32 0
  %.1.i = or i32 %i.gr, %.019.i                   ; 2 uses
  %.not16.i = icmp eq i32 %i.go, 0
  br i1 %.not16.i, label %.loopexit50, label %.lr.ph.i, !llvm.loop !28

.loopexit50:                                      ; preds = %.noexc47, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %.noexc47 ]
  %i.gs = add nsw i32 %.0.lcssa.i, %.113.i
  %i.gt = zext i32 %i.gs to i64
  %i.gu = add nuw nsw i64 %1, %i.gt
  br label %bb.x

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.preheader
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.v
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit50, %bb.w
  %.026 = phi i64 [ %i.gu, %.loopexit50 ], [ %i.gg, %bb.w ]
  %i.gv = add nsw i64 %i.fi, %.026
  %i.gw = load i64, ptr %i.ga, align 8            ; 3 uses
  %i.gx = load i64, ptr %i.fl, align 8
  %i.gy = icmp eq i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.y, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.x
  %.pre.i = load ptr, ptr %0, align 8
  br label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.gz = shl i64 %i.gw, 1                        ; 2 uses
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.gz, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.fl, align 8
  %i.ha = icmp ugt i64 %i.gz, 2305843009213693951
  %i.hb = shl i64 %spec.select.i, 3
  %i.hc = select i1 %i.ha, i64 -1, i64 %i.hb
  %i.hd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hc) #7
          to label %.noexc49 unwind label %bb.ad  ; 3 uses

.noexc49:                                         ; preds = %bb.y
  %i.he = load i64, ptr %i.ga, align 8            ; 3 uses
  %.not.i48 = icmp eq i64 %i.he, 0
  br i1 %.not.i48, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.noexc49
  %i.hf = load ptr, ptr %0, align 8               ; 3 uses
  %i.hg = shl i64 %i.he, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hd, ptr align 8 %i.hf, i64 %i.hg, i1 false)
  %i.hh = icmp eq ptr %i.hf, null
  br i1 %i.hh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.hf) #8
  %.pre6.pre.i = load i64, ptr %i.ga, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.noexc49
  %.pre6.i = phi i64 [ %i.he, %bb.z ], [ %.pre6.pre.i, %bb.aa ], [ 0, %.noexc49 ]
  store ptr %i.hd, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.hi = phi i64 [ %i.gw, %._crit_edge.i ], [ %.pre6.i, %bb.ab ] ; 2 uses
  %i.hj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.hd, %bb.ab ]
  %i.hk = add i64 %i.hi, 1
  store i64 %i.hk, ptr %i.ga, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hi
  store i64 %i.gv, ptr %i.hl, align 8
  %i.hm = add nuw i64 %.055, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.hm, %.0.i42
  br i1 %exitcond.not, label %bb.q, label %bb.v, !llvm.loop !29

bb.ad:                                            ; preds = %bb.y
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ad, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.u ], [ %i.hn, %bb.ad ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit51, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.loopexit.split-lp ], [ %i.gd, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %5) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ae ], [ %i.gc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.r
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.af ], [ %i.gb, %bb.r ]
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.ah:                                            ; preds = %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit43, %bb.q
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc9LoadBinACERNS_6VectorIlEERKNS_12BinaryStreamERm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 9 uses
  %4 = alloca %"class.o3dgc::Adaptive_Bit_Model", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i64, ptr %2, align 8                ; 8 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  store i64 %i.e, ptr %2, align 8
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw i32 %i.i, 24
  %i.k = sext i32 %i.j to i64
  %i.l = add i64 %i.d, 2                          ; 2 uses
  store i64 %i.l, ptr %2, align 8
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 16
  %i.r = or disjoint i64 %i.q, %i.k
  %i.s = add i64 %i.d, 3                          ; 2 uses
  store i64 %i.s, ptr %2, align 8
  %i.t = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 8
  %i.y = or disjoint i64 %i.x, %i.r
  %i.z = add i64 %i.d, 4                          ; 2 uses
  store i64 %i.z, ptr %2, align 8
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.y, %i.ad
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit

bb.c:                                             ; preds = %bb.a
  %i.af = zext i8 %i.h to i64
  %i.ag = add i64 %i.d, 2                         ; 2 uses
  store i64 %i.ag, ptr %2, align 8
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.e
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 8
  %i.am = or disjoint i64 %i.al, %i.af
  %i.an = add i64 %i.d, 3                         ; 2 uses
  store i64 %i.an, ptr %2, align 8
  %i.ao = load ptr, ptr %1, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 16
  %i.at = or disjoint i64 %i.am, %i.as
  %i.au = add i64 %i.d, 4                         ; 2 uses
  store i64 %i.au, ptr %2, align 8
  %i.av = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 24
  %i.ba = sext i32 %i.az to i64
  %i.bb = or disjoint i64 %i.at, %i.ba
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit

_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit:  ; preds = %bb.b, %bb.c
  %i.bc = phi i64 [ %i.z, %bb.b ], [ %i.au, %bb.c ] ; 8 uses
  %.0.i = phi i64 [ %i.ae, %bb.b ], [ %i.bb, %bb.c ]
  %i.bd = load i32, ptr %i.a, align 8
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = add i64 %i.bc, 1                        ; 3 uses
  store i64 %i.bf, ptr %2, align 8
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw i32 %i.bj, 24
  %i.bl = sext i32 %i.bk to i64
  %i.bm = add i64 %i.bc, 2                        ; 2 uses
  store i64 %i.bm, ptr %2, align 8
  %i.bn = load ptr, ptr %1, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 16
  %i.bs = or disjoint i64 %i.br, %i.bl
  %i.bt = add i64 %i.bc, 3                        ; 2 uses
  store i64 %i.bt, ptr %2, align 8
  %i.bu = load ptr, ptr %1, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = or disjoint i64 %i.by, %i.bs
  %i.ca = add i64 %i.bc, 4                        ; 2 uses
  store i64 %i.ca, ptr %2, align 8
  %i.cb = load ptr, ptr %1, align 8               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.bz, %i.ce
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit26

bb.e:                                             ; preds = %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit
  %i.cg = zext i8 %i.bi to i64
end_hunk_0
