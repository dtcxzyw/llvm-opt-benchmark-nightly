inline.NumInlined: 641
inline.NumDeleted: 336
begin_hunk_0_@_ZN6Assimp32SplitLargeMeshesProcess_Triangle7ExecuteEP7aiScene:bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.i, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 4 uses
  %i.p = icmp eq i64 %i.o, %.lcssa
  br i1 %i.p, label %bb.f, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = trunc nuw i64 %indvars.iv to i32
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.t, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.f, align 8              ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !3

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.pre41 = load ptr, ptr %2, align 8
  br label %bb.r

bb.f:                                             ; preds = %._crit_edge
  %i.y = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull @.str.1)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.m, %._crit_edge36, %bb.k, %bb.g, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.g, %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = trunc i64 %i.o to i32
  store i32 %i.ad, ptr %i.f, align 8
  %i.ae = icmp ugt i64 %i.o, 2305843009213693951
  %i.af = ashr exact i64 %i.n, 1
  %i.ag = select i1 %i.ae, i64 -1, i64 %i.af
  %i.ah = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #17
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  store ptr %i.ah, ptr %i.aa, align 8
  %.not37 = icmp eq ptr %i.k, %i.j
  br i1 %.not37, label %._crit_edge36, label %.lr.ph35

._crit_edge36:                                    ; preds = %.lr.ph35, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS7_EE(ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.m unwind label %bb.h

.lr.ph35:                                         ; preds = %bb.l, %.lr.ph35
  %i.ak = phi i64 [ %i.aq, %.lr.ph35 ], [ 0, %bb.l ] ; 2 uses
  %.033 = phi i32 [ %i.ap, %.lr.ph35 ], [ 0, %bb.l ]
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.aa, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ak
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = add i32 %.033, 1                        ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp ugt i64 %i.o, %i.aq
  br i1 %i.ar, label %.lr.ph35, label %._crit_edge36, !llvm.loop !5

bb.m:                                             ; preds = %._crit_edge36
  %i.as = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull @.str.2)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aw) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.h, %bb.e
  %i.ax = phi ptr [ %.pre41, %bb.e ], [ %i.j, %bb.h ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.z, %bb.h ]
  %.not.i.i.i27 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit28: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.be

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.5)
  %i.g = load i32, ptr %i.a, align 8              ; 2 uses
  %i.h = load i32, ptr %i.c, align 8
  %i.i = udiv i32 %i.g, %i.h                      ; 3 uses
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = udiv i32 %i.g, %i.j                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.o = mul i32 %i.i, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit
  %indvars.iv = phi i32 [ 0, %bb.b ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit ] ; 3 uses
  %.0118330 = phi i32 [ 0, %bb.b ], [ %i.jw, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit ] ; 3 uses
  %i.ax = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #17 ; 62 uses
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 224 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1272
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 1312
  store ptr null, ptr %i.bd, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ba, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.bb, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bc, i8 0, i64 36, i1 false)
  store i32 %i.k, ptr %i.az, align 8
  %i.be = load i32, ptr %i.l, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  store i32 %i.be, ptr %i.bf, align 8
  %i.bg = icmp eq ptr %i.ax, %2
  br i1 %i.bg, label %_ZN8aiStringaSERKS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 236
  %i.bi = load i32, ptr %i.m, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 240 ; 2 uses
  %i.bk = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr nonnull align 4 %i.n, i64 %i.bk, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  store i8 0, ptr %i.bl, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.c, %bb.d
  %i.bm = icmp eq i32 %.0118330, %i.i
  br i1 %i.bm, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.bn = load i32, ptr %i.a, align 8
  %.reass = sub i32 %i.bn, %i.o                   ; 2 uses
  store i32 %.reass, ptr %i.az, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN8aiStringaSERKS_.exit, %bb.e
  %i.bo = phi i32 [ %.reass, %bb.e ], [ %i.k, %_ZN8aiStringaSERKS_.exit ] ; 5 uses
  %i.bp = zext i32 %i.bo to i64                   ; 5 uses
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = or disjoint i64 %i.bq, 8
  %i.bs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.br) #17 ; 2 uses
  store i64 %i.bp, ptr %i.bs, align 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = icmp eq i32 %i.bo, 0                    ; 2 uses
  br i1 %i.bu, label %.loopexit278, label %bb.f

bb.f:                                             ; preds = %thread-pre-split
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bp
  %i.bw = add nuw nsw i64 %i.bp, 1152921504606846975
  %i.bx = and i64 %i.bw, 1152921504606846975
  %xtraiter = and i64 %i.bp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %i.by = phi ptr [ %i.ca, %.prol.preheader ], [ %i.bt, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.f ]
  store i32 0, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr null, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !6

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.unr = phi ptr [ %i.bt, %bb.f ], [ %i.ca, %.prol.preheader ]
  %i.cb = icmp samesign ult i64 %i.bx, 7
  br i1 %i.cb, label %.loopexit278, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.cc = phi ptr [ %i.cs, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr null, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i32 0, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr null, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i32 0, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store ptr null, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store i32 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store ptr null, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store i32 0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  store ptr null, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  store i32 0, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store ptr null, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  store i32 0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  store ptr null, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 112
  store i32 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  store ptr null, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 128 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bv
  br i1 %i.ct, label %.loopexit278, label %.new

.loopexit278:                                     ; preds = %.prol.loopexit, %.new, %thread-pre-split
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 208 ; 4 uses
  store ptr %i.bt, ptr %i.cu, align 8
  %i.cv = mul i32 %.0118330, %i.k                 ; 3 uses
  %i.cw = add i32 %i.bo, %i.cv
  %i.cx = icmp ult i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit278
  %i.cy = load ptr, ptr %i.p, align 8             ; 9 uses
  %i.cz = zext i32 %indvars.iv to i64             ; 3 uses
  %i.da = add i32 %i.bo, %indvars.iv
  %4 = add i32 %i.bo, -1                          ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %n.mod.vf = and i64 %6, 7                       ; 2 uses
  %7 = icmp eq i64 %n.mod.vf, 0
  %8 = select i1 %7, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %6, %8                     ; 2 uses
  %9 = add nsw i64 %n.vec, %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %42, %vector.body ]
  %vec.phi465 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %43, %vector.body ]
  %10 = add i64 %index, %i.cz                     ; 8 uses
  %11 = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %10
  %12 = getelementptr [16 x i8], ptr %i.cy, i64 %10
  %13 = getelementptr i8, ptr %12, i64 16
  %14 = getelementptr [16 x i8], ptr %i.cy, i64 %10
  %15 = getelementptr i8, ptr %14, i64 32
  %16 = getelementptr [16 x i8], ptr %i.cy, i64 %10
  %17 = getelementptr i8, ptr %16, i64 48
  %18 = getelementptr [16 x i8], ptr %i.cy, i64 %10
  %19 = getelementptr i8, ptr %18, i64 64
  %20 = getelementptr [16 x i8], ptr %i.cy, i64 %10
  %21 = getelementptr i8, ptr %20, i64 80
  %22 = getelementptr [16 x i8], ptr %i.cy, i64 %10
  %23 = getelementptr i8, ptr %22, i64 96
  %i.db = getelementptr [16 x i8], ptr %i.cy, i64 %10
  %24 = getelementptr i8, ptr %i.db, i64 112
  %25 = load i32, ptr %11, align 8
  %26 = load i32, ptr %13, align 8
  %27 = load i32, ptr %15, align 8
  %28 = load i32, ptr %17, align 8
  %29 = insertelement <4 x i32> poison, i32 %25, i64 0
  %30 = insertelement <4 x i32> %29, i32 %26, i64 1
  %31 = insertelement <4 x i32> %30, i32 %27, i64 2
  %32 = insertelement <4 x i32> %31, i32 %28, i64 3
  %33 = load i32, ptr %19, align 8
  %34 = load i32, ptr %21, align 8
  %35 = load i32, ptr %23, align 8
  %i.dc = load i32, ptr %24, align 8
  %36 = insertelement <4 x i32> poison, i32 %33, i64 0
  %37 = insertelement <4 x i32> %36, i32 %34, i64 1
  %38 = insertelement <4 x i32> %37, i32 %35, i64 2
  %39 = insertelement <4 x i32> %38, i32 %i.dc, i64 3
  %40 = freeze <4 x i32> %32
  %41 = freeze <4 x i32> %39
  %42 = add <4 x i32> %40, %vec.phi               ; 2 uses
  %43 = add <4 x i32> %41, %vec.phi465            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %43, %42
  %44 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv354.ph = phi i64 [ %i.cz, %.lr.ph ], [ %9, %middle.block ]
  %.0120299.ph = phi i32 [ 0, %.lr.ph ], [ %44, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %.loopexit278
  %.0120.lcssa = phi i32 [ 0, %.loopexit278 ], [ %i.dh, %scalar.ph ] ; 8 uses
  store i32 %.0120.lcssa, ptr %i.ay, align 4
  %i.de = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.de, null
  br i1 %.not, label %bb.h, label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %scalar.ph ], [ %indvars.iv354.ph, %scalar.ph.preheader ] ; 2 uses
  %.0120299.a = phi i32 [ %i.dh, %scalar.ph ], [ %.0120299.ph, %scalar.ph.preheader ]
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %indvars.iv354
  %i.dg = load i32, ptr %i.df, align 8
  %.fr.a = freeze i32 %i.dg
  %i.dh = add i32 %.fr.a, %.0120299.a             ; 2 uses
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next355 to i32
  %exitcond.not = icmp eq i32 %i.da, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !11

bb.g:                                             ; preds = %._crit_edge
  %i.di = zext i32 %.0120.lcssa to i64
  %i.dj = mul nuw nsw i64 %i.di, 12               ; 2 uses
  %i.dk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #17 ; 2 uses
  %i.dl = icmp eq i32 %.0120.lcssa, 0
  br i1 %i.dl, label %.loopexit277, label %.loopexit277.loopexit

.loopexit277.loopexit:                            ; preds = %bb.g
  %i.dm = add nsw i64 %i.dj, -12                  ; 2 uses
  %i.dn = urem i64 %i.dm, 12
  %i.do = sub nuw nsw i64 %i.dm, %i.dn
  %i.dp = add nsw i64 %i.do, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dk, i8 0, i64 %i.dp, i1 false)
  br label %.loopexit277

.loopexit277:                                     ; preds = %.loopexit277.loopexit, %bb.g
  store ptr %i.dk, ptr %i.ba, align 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit277, %._crit_edge
  %i.dq = load ptr, ptr %i.r, align 8
  %.not.i = icmp ne ptr %i.dq, null
  %i.dr = load i32, ptr %i.s, align 4
  %i.ds = icmp ne i32 %i.dr, 0                    ; 18 uses
  %i.dt = select i1 %.not.i, i1 %i.ds, i1 false
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.du = zext i32 %.0120.lcssa to i64
  %i.dv = mul nuw nsw i64 %i.du, 12               ; 2 uses
  %i.dw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dv) #17 ; 2 uses
  %i.dx = icmp eq i32 %.0120.lcssa, 0
  br i1 %i.dx, label %.loopexit276, label %.loopexit276.loopexit

.loopexit276.loopexit:                            ; preds = %bb.i
  %i.dy = add nsw i64 %i.dv, -12                  ; 2 uses
  %i.dz = urem i64 %i.dy, 12
  %i.ea = sub nuw nsw i64 %i.dy, %i.dz
  %i.eb = add nsw i64 %i.ea, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dw, i8 0, i64 %i.eb, i1 false)
  br label %.loopexit276

.loopexit276:                                     ; preds = %.loopexit276.loopexit, %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.dw, ptr %i.ec, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit276, %bb.h
  %i.ed = load ptr, ptr %i.t, align 8
  %.not.i146 = icmp ne ptr %i.ed, null
  %i.ee = load ptr, ptr %i.u, align 8
  %.not1.i = icmp ne ptr %i.ee, null
  %or.cond.i.not269 = select i1 %.not.i146, i1 %.not1.i, i1 false
  %brmerge.not = select i1 %or.cond.i.not269, i1 %i.ds, i1 false
  %i.ef = zext i32 %.0120.lcssa to i64            ; 2 uses
  %i.eg = mul nuw nsw i64 %i.ef, 12               ; 13 uses
  br i1 %brmerge.not, label %bb.k, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.eh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #17 ; 3 uses
  %i.ei = icmp eq i32 %.0120.lcssa, 0
  br i1 %i.ei, label %.thread, label %.loopexit275.loopexit

.thread:                                          ; preds = %bb.k
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.eh, ptr %i.ej, align 8
  %i.ek = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #17
  br label %.loopexit275

.loopexit275.loopexit:                            ; preds = %bb.k
  %i.el = add nsw i64 %i.eg, -12                  ; 2 uses
  %i.em = urem i64 %i.el, 12
  %i.en = sub nuw nsw i64 %i.el, %i.em
  %i.eo = add nsw i64 %i.en, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eh, i8 0, i64 %i.eo, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.eh, ptr %i.ep, align 8
  %i.eq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eq, i8 0, i64 %i.eo, i1 false)
  br label %.loopexit275

.loopexit275:                                     ; preds = %.loopexit275.loopexit, %.thread
  %i.er = phi ptr [ %i.ek, %.thread ], [ %i.eq, %.loopexit275.loopexit ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.er, ptr %i.es, align 8
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.j, %.loopexit275
  %i.et = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %i.eu = icmp eq i32 %.0120.lcssa, 0             ; 16 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ax, i64 112 ; 2 uses
  %i.ew = add nsw i64 %i.eg, -12                  ; 2 uses
  %i.ex = urem i64 %i.ew, 12
  %i.ey = sub nsw i64 %i.ew, %i.ex
  %i.ez = add nsw i64 %i.ey, 12                   ; 8 uses
  %i.fa = load i32, ptr %i.v, align 8
  store i32 %i.fa, ptr %i.et, align 8
  %i.fb = load ptr, ptr %i.w, align 8
  %.not.i147 = icmp ne ptr %i.fb, null
  %i.fc = select i1 %.not.i147, i1 %i.ds, i1 false
  br i1 %i.fc, label %bb.l, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

bb.l:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.fd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit273, label %.loopexit273.loopexit

.loopexit273.loopexit:                            ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fd, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit273

.loopexit273:                                     ; preds = %.loopexit273.loopexit, %bb.l
  store ptr %i.fd, ptr %i.ev, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, %.loopexit273
  %i.fe = load i32, ptr %i.ac, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ax, i64 180
  store i32 %i.fe, ptr %i.ff, align 4
  %i.fg = load ptr, ptr %i.ad, align 8
  %.not.i147.1 = icmp ne ptr %i.fg, null
  %i.fh = select i1 %.not.i147.1, i1 %i.ds, i1 false
  br i1 %i.fh, label %bb.m, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

bb.m:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.fi = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit273.1, label %.loopexit273.loopexit.1

.loopexit273.loopexit.1:                          ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fi, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit273.1

.loopexit273.1:                                   ; preds = %.loopexit273.loopexit.1, %bb.m
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  store ptr %i.fi, ptr %i.fj, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %.loopexit273.1, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.fk = load i32, ptr %i.ae, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  store i32 %i.fk, ptr %i.fl, align 8
  %i.fm = load ptr, ptr %i.af, align 8
  %.not.i147.2 = icmp ne ptr %i.fm, null
  %i.fn = select i1 %.not.i147.2, i1 %i.ds, i1 false
  br i1 %i.fn, label %bb.n, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

bb.n:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.fo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit273.2, label %.loopexit273.loopexit.2

.loopexit273.loopexit.2:                          ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fo, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit273.2

.loopexit273.2:                                   ; preds = %.loopexit273.loopexit.2, %bb.n
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store ptr %i.fo, ptr %i.fp, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %.loopexit273.2, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.fq = load i32, ptr %i.ag, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ax, i64 188
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = load ptr, ptr %i.ah, align 8
  %.not.i147.3 = icmp ne ptr %i.fs, null
  %i.ft = select i1 %.not.i147.3, i1 %i.ds, i1 false
  br i1 %i.ft, label %bb.o, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

bb.o:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.fu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit273.3, label %.loopexit273.loopexit.3

.loopexit273.loopexit.3:                          ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fu, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit273.3

.loopexit273.3:                                   ; preds = %.loopexit273.loopexit.3, %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  store ptr %i.fu, ptr %i.fv, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %.loopexit273.3, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.fw = load i32, ptr %i.ai, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  store i32 %i.fw, ptr %i.fx, align 8
  %i.fy = load ptr, ptr %i.aj, align 8
  %.not.i147.4 = icmp ne ptr %i.fy, null
  %i.fz = select i1 %.not.i147.4, i1 %i.ds, i1 false
  br i1 %i.fz, label %bb.p, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

bb.p:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.ga = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit273.4, label %.loopexit273.loopexit.4

.loopexit273.loopexit.4:                          ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ga, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit273.4

.loopexit273.4:                                   ; preds = %.loopexit273.loopexit.4, %bb.p
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
end_hunk_0
begin_hunk_1_@_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %.loopexit272.1, %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.hd = load ptr, ptr %i.ar, align 8
  %.not.i149.2 = icmp ne ptr %i.hd, null
  %i.he = select i1 %.not.i149.2, i1 %i.ds, i1 false
  br i1 %i.he, label %bb.v, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

bb.v:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.hf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit272.2, label %.loopexit272.loopexit.2

.loopexit272.loopexit.2:                          ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hf, i8 0, i64 %i.gu, i1 false)
  br label %.loopexit272.2

.loopexit272.2:                                   ; preds = %.loopexit272.loopexit.2, %bb.v
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %i.hf, ptr %i.hg, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %.loopexit272.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.hh = load ptr, ptr %i.as, align 8
  %.not.i149.3 = icmp ne ptr %i.hh, null
  %i.hi = select i1 %.not.i149.3, i1 %i.ds, i1 false
  br i1 %i.hi, label %bb.w, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

bb.w:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.hj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit272.3, label %.loopexit272.loopexit.3

.loopexit272.loopexit.3:                          ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hj, i8 0, i64 %i.gu, i1 false)
  br label %.loopexit272.3

.loopexit272.3:                                   ; preds = %.loopexit272.loopexit.3, %bb.w
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr %i.hj, ptr %i.hk, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %.loopexit272.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.hl = load ptr, ptr %i.at, align 8
  %.not.i149.4 = icmp ne ptr %i.hl, null
  %i.hm = select i1 %.not.i149.4, i1 %i.ds, i1 false
  br i1 %i.hm, label %bb.x, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

bb.x:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.hn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit272.4, label %.loopexit272.loopexit.4

.loopexit272.loopexit.4:                          ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hn, i8 0, i64 %i.gu, i1 false)
  br label %.loopexit272.4

.loopexit272.4:                                   ; preds = %.loopexit272.loopexit.4, %bb.x
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr %i.hn, ptr %i.ho, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %.loopexit272.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.hp = load ptr, ptr %i.au, align 8
  %.not.i149.5 = icmp ne ptr %i.hp, null
  %i.hq = select i1 %.not.i149.5, i1 %i.ds, i1 false
  br i1 %i.hq, label %bb.y, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

bb.y:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.hr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit272.5, label %.loopexit272.loopexit.5

.loopexit272.loopexit.5:                          ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hr, i8 0, i64 %i.gu, i1 false)
  br label %.loopexit272.5

.loopexit272.5:                                   ; preds = %.loopexit272.loopexit.5, %bb.y
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.hr, ptr %i.hs, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %.loopexit272.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.ht = load ptr, ptr %i.av, align 8
  %.not.i149.6 = icmp ne ptr %i.ht, null
  %i.hu = select i1 %.not.i149.6, i1 %i.ds, i1 false
  br i1 %i.hu, label %bb.z, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

bb.z:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.hv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit272.6, label %.loopexit272.loopexit.6

.loopexit272.loopexit.6:                          ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hv, i8 0, i64 %i.gu, i1 false)
  br label %.loopexit272.6

.loopexit272.6:                                   ; preds = %.loopexit272.loopexit.6, %bb.z
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store ptr %i.hv, ptr %i.hw, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %.loopexit272.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.hx = load ptr, ptr %i.aw, align 8
  %.not.i149.7 = icmp ne ptr %i.hx, null
  %i.hy = select i1 %.not.i149.7, i1 %i.ds, i1 false
  br i1 %i.hy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.hz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #17 ; 2 uses
  br i1 %i.eu, label %.loopexit272.7, label %.loopexit272.loopexit.7

.loopexit272.loopexit.7:                          ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hz, i8 0, i64 %i.gu, i1 false)
  br label %.loopexit272.7

.loopexit272.7:                                   ; preds = %.loopexit272.loopexit.7, %bb.aa
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr %i.hz, ptr %i.ia, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit272.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.ib = load ptr, ptr %i.y, align 8
  %.not.i148 = icmp ne ptr %i.ib, null
  %i.ic = load i32, ptr %i.z, align 8             ; 2 uses
  %i.id = icmp ne i32 %i.ic, 0
  %i.ie = select i1 %.not.i148, i1 %i.id, i1 false
  br i1 %i.ie, label %._crit_edge315, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

._crit_edge315:                                   ; preds = %bb.ab
  %i.if = zext i32 %i.ic to i64
  %i.ig = shl nuw nsw i64 %i.if, 3
  %i.ih = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ig) #17
  store ptr %i.ih, ptr %i.bb, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit:   ; preds = %._crit_edge315, %bb.ab
  br i1 %i.bu, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.il = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.im = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.in = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.io = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  %i.is = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.it = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  br label %bb.ag

._crit_edge329:                                   ; preds = %._crit_edge324, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
  %i.iz = load ptr, ptr %i.aa, align 8            ; 6 uses
  %i.ja = load ptr, ptr %i.ab, align 8
  %.not.i159 = icmp eq ptr %i.iz, %i.ja
  br i1 %.not.i159, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge329
  store ptr %i.ax, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 %1, ptr %i.jb, align 8
  %i.jc = load ptr, ptr %i.aa, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store ptr %i.jd, ptr %i.aa, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.ad:                                            ; preds = %._crit_edge329
  %i.je = load ptr, ptr %3, align 8               ; 5 uses
  %i.jf = ptrtoint ptr %i.iz to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg                    ; 4 uses
  %i.ji = icmp eq i64 %i.jh, 9223372036854775792
  br i1 %i.ji, label %bb.ae, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.jj = ashr exact i64 %i.jh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i160 = tail call i64 @llvm.umax.i64(i64 %i.jj, i64 1)
  %i.jk = add nsw i64 %.sroa.speculated.i.i.i160, %i.jj ; 2 uses
  %i.jl = icmp ult i64 %i.jk, %i.jj
  %i.jm = tail call i64 @llvm.umin.i64(i64 %i.jk, i64 576460752303423487)
  %i.jn = select i1 %i.jl, i64 576460752303423487, i64 %i.jm ; 3 uses
  %.not.i.i.i161 = icmp ne i64 %i.jn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i161)
  %i.jo = shl nuw nsw i64 %i.jn, 4
  %i.jp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jo) #17 ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jh ; 2 uses
  store ptr %i.ax, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i32 %1, ptr %i.jr, align 8
  %.not10.i.i.i.i.i162 = icmp eq ptr %i.je, %i.iz
  br i1 %.not10.i.i.i.i.i162, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i163

.lr.ph.i.i.i.i.i163:                              ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i163
  %.012.i.i.i.i.i164 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i163 ], [ %i.jp, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i165 = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i163 ], [ %i.je, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i165, i64 16, i1 false), !alias.scope !12
  %i.js = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i165, i64 16 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i164, i64 16 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq ptr %i.js, %i.iz
  br i1 %.not.i.i.i.i.i166, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i163, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i163, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i167 = phi ptr [ %i.jp, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.jt, %.lr.ph.i.i.i.i.i163 ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i167, i64 16
  %.not.i34.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jh) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.jp, ptr %3, align 8
  store ptr %i.ju, ptr %i.aa, align 8
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %i.jn
  store ptr %i.jv, ptr %i.ab, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit: ; preds = %bb.ac, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.jw = add nuw i32 %.0118330, 1                ; 2 uses
  %i.jx = icmp ult i32 %i.jw, %i.j
  %indvars.iv.next = add i32 %indvars.iv, %i.k
  br i1 %i.jx, label %bb.c, label %bb.bd, !llvm.loop !17

bb.ag:                                            ; preds = %.lr.ph328, %._crit_edge324
  %indvars.iv383 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next384, %._crit_edge324 ] ; 5 uses
  %.0125326 = phi i32 [ 0, %.lr.ph328 ], [ %.1.lcssa, %._crit_edge324 ] ; 2 uses
  %i.jy = load ptr, ptr %i.cu, align 8
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %indvars.iv383
  store i32 3, ptr %i.jz, align 8
  %i.ka = trunc nuw i64 %indvars.iv383 to i32
  %i.kb = add i32 %i.cv, %i.ka
  %i.kc = load ptr, ptr %i.p, align 8
  %i.kd = zext i32 %i.kb to i64                   ; 2 uses
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 8            ; 4 uses
  %i.kg = load ptr, ptr %i.cu, align 8
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %indvars.iv383
  store i32 %i.kf, ptr %i.kh, align 8
  %i.ki = load ptr, ptr %i.p, align 8
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.ki, i64 %i.kd
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = zext i32 %i.kf to i64                   ; 2 uses
  %i.kn = shl nuw nsw i64 %i.km, 2
  %i.ko = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kn) #17 ; 2 uses
  %i.kp = load ptr, ptr %i.cu, align 8
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %indvars.iv383
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store ptr %i.ko, ptr %i.kr, align 8
  %i.ks = load i32, ptr %i.ax, align 8            ; 2 uses
  %switch.tableidx = add i32 %i.kf, -1            ; 2 uses
  %i.kt = icmp ult i32 %switch.tableidx, 3
  br i1 %i.kt, label %switch.lookup, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ku = or i32 %i.ks, 8
  store i32 %i.ku, ptr %i.ax, align 8
  %.not335 = icmp eq i32 %i.kf, 0
  br i1 %.not335, label %._crit_edge324, label %.lr.ph323.preheader

.lr.ph323.preheader:                              ; preds = %switch.lookup, %bb.ah
  br label %.lr.ph323

switch.lookup:                                    ; preds = %bb.ag
  %i.kv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE, i64 %i.kv
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.kw = or i32 %i.ks, %switch.ext
  store i32 %i.kw, ptr %i.ax, align 8
  br label %.lr.ph323.preheader

._crit_edge324:                                   ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, %bb.ah
  %.1.lcssa = phi i32 [ %.0125326, %bb.ah ], [ %i.lc, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ]
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.kx = load i32, ptr %i.az, align 8
  %i.ky = zext i32 %i.kx to i64
  %i.kz = icmp samesign ult i64 %indvars.iv.next384, %i.ky
  br i1 %i.kz, label %bb.ag, label %._crit_edge329, !llvm.loop !18

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ], [ 0, %.lr.ph323.preheader ] ; 3 uses
  %.1320 = phi i32 [ %i.lc, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread ], [ %.0125326, %.lr.ph323.preheader ] ; 6 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv379
  %i.lb = load i32, ptr %i.la, align 4            ; 4 uses
  %i.lc = add i32 %.1320, 1                       ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv379
  store i32 %.1320, ptr %i.ld, align 4
  %i.le = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not143 = icmp eq ptr %i.le, null
  br i1 %.not143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph323
  %i.lf = zext i32 %i.lb to i64
  %i.lg = getelementptr inbounds nuw [12 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load ptr, ptr %i.ba, align 8
  %i.li = zext i32 %.1320 to i64
  %i.lj = getelementptr inbounds nuw [12 x i8], ptr %i.lh, i64 %i.li
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lj, ptr noundef nonnull align 4 dereferenceable(12) %i.lg, i64 12, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph323
  %i.lk = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i168 = icmp ne ptr %i.lk, null
  %i.ll = load i32, ptr %i.s, align 4             ; 2 uses
  %i.lm = icmp ne i32 %i.ll, 0
  %i.ln = select i1 %.not.i168, i1 %i.lm, i1 false
  br i1 %i.ln, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lo = zext i32 %i.lb to i64
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %i.lk, i64 %i.lo
  %i.lq = load ptr, ptr %i.ii, align 8
  %i.lr = zext i32 %.1320 to i64
  %i.ls = getelementptr inbounds nuw [12 x i8], ptr %i.lq, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ls, ptr noundef nonnull align 4 dereferenceable(12) %i.lp, i64 12, i1 false)
  %.pre386.pre = load i32, ptr %i.s, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre386 = phi i32 [ %.pre386.pre, %bb.ak ], [ %i.ll, %bb.aj ] ; 2 uses
  %i.lt = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i169 = icmp eq ptr %i.lt, null
  %i.lu = load ptr, ptr %i.u, align 8
  %.not1.i170 = icmp eq ptr %i.lu, null
  %or.cond.i171 = select i1 %.not.i169, i1 true, i1 %.not1.i170
  br i1 %or.cond.i171, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172:  ; preds = %bb.al
  %.not270 = icmp eq i32 %.pre386, 0
  br i1 %.not270, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, label %bb.am

bb.am:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172
  %i.lv = zext i32 %i.lb to i64                   ; 2 uses
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %i.lt, i64 %i.lv
  %i.lx = load ptr, ptr %i.ij, align 8
  %i.ly = zext i32 %.1320 to i64                  ; 2 uses
  %i.lz = getelementptr inbounds nuw [12 x i8], ptr %i.lx, i64 %i.ly
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lz, ptr noundef nonnull align 4 dereferenceable(12) %i.lw, i64 12, i1 false)
  %i.ma = load ptr, ptr %i.u, align 8
  %i.mb = getelementptr inbounds nuw [12 x i8], ptr %i.ma, i64 %i.lv
  %i.mc = load ptr, ptr %i.ik, align 8
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.mc, i64 %i.ly
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.md, ptr noundef nonnull align 4 dereferenceable(12) %i.mb, i64 12, i1 false)
  %.pre = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread: ; preds = %bb.al, %bb.am
  %i.me = phi i32 [ %.pre386, %bb.al ], [ %.pre, %bb.am ] ; 2 uses
  %i.mf = zext i32 %i.lb to i64                   ; 16 uses
  %i.mg = zext i32 %.1320 to i64                  ; 16 uses
  %i.mh = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i173 = icmp ne ptr %i.mh, null
  %i.mi = icmp ne i32 %i.me, 0
  %i.mj = select i1 %.not.i173, i1 %i.mi, i1 false
  br i1 %i.mj, label %bb.an, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

bb.an:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread
  %i.mk = getelementptr inbounds nuw [12 x i8], ptr %i.mh, i64 %i.mf
  %i.ml = load ptr, ptr %i.ev, align 8
  %i.mm = getelementptr inbounds nuw [12 x i8], ptr %i.ml, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mm, ptr noundef nonnull align 4 dereferenceable(12) %i.mk, i64 12, i1 false)
  %.pre387 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

_ZNK6aiMesh16HasTextureCoordsEj.exit175.1:        ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, %bb.an
  %i.mn = phi i32 [ %i.me, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread ], [ %.pre387, %bb.an ] ; 2 uses
  %i.mo = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i173.1 = icmp ne ptr %i.mo, null
  %i.mp = icmp ne i32 %i.mn, 0
  %i.mq = select i1 %.not.i173.1, i1 %i.mp, i1 false
  br i1 %i.mq, label %bb.ao, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

bb.ao:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.mr = getelementptr inbounds nuw [12 x i8], ptr %i.mo, i64 %i.mf
  %i.ms = load ptr, ptr %i.il, align 8
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %i.ms, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mt, ptr noundef nonnull align 4 dereferenceable(12) %i.mr, i64 12, i1 false)
  %.pre388 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

_ZNK6aiMesh16HasTextureCoordsEj.exit175.2:        ; preds = %bb.ao, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.mu = phi i32 [ %.pre388, %bb.ao ], [ %i.mn, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1 ] ; 2 uses
  %i.mv = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i173.2 = icmp ne ptr %i.mv, null
  %i.mw = icmp ne i32 %i.mu, 0
  %i.mx = select i1 %.not.i173.2, i1 %i.mw, i1 false
  br i1 %i.mx, label %bb.ap, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

bb.ap:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.my = getelementptr inbounds nuw [12 x i8], ptr %i.mv, i64 %i.mf
  %i.mz = load ptr, ptr %i.im, align 8
  %i.na = getelementptr inbounds nuw [12 x i8], ptr %i.mz, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.na, ptr noundef nonnull align 4 dereferenceable(12) %i.my, i64 12, i1 false)
  %.pre389 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

_ZNK6aiMesh16HasTextureCoordsEj.exit175.3:        ; preds = %bb.ap, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.nb = phi i32 [ %.pre389, %bb.ap ], [ %i.mu, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2 ] ; 2 uses
  %i.nc = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i173.3 = icmp ne ptr %i.nc, null
  %i.nd = icmp ne i32 %i.nb, 0
  %i.ne = select i1 %.not.i173.3, i1 %i.nd, i1 false
  br i1 %i.ne, label %bb.aq, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

bb.aq:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.nc, i64 %i.mf
  %i.ng = load ptr, ptr %i.in, align 8
  %i.nh = getelementptr inbounds nuw [12 x i8], ptr %i.ng, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nh, ptr noundef nonnull align 4 dereferenceable(12) %i.nf, i64 12, i1 false)
  %.pre390 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

_ZNK6aiMesh16HasTextureCoordsEj.exit175.4:        ; preds = %bb.aq, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.ni = phi i32 [ %.pre390, %bb.aq ], [ %i.nb, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3 ] ; 2 uses
  %i.nj = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i173.4 = icmp ne ptr %i.nj, null
  %i.nk = icmp ne i32 %i.ni, 0
  %i.nl = select i1 %.not.i173.4, i1 %i.nk, i1 false
  br i1 %i.nl, label %bb.ar, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5

bb.ar:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4
  %i.nm = getelementptr inbounds nuw [12 x i8], ptr %i.nj, i64 %i.mf
  %i.nn = load ptr, ptr %i.io, align 8
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.no, ptr noundef nonnull align 4 dereferenceable(12) %i.nm, i64 12, i1 false)
  %.pre391 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5

_ZNK6aiMesh16HasTextureCoordsEj.exit175.5:        ; preds = %bb.ar, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4
  %i.np = phi i32 [ %.pre391, %bb.ar ], [ %i.ni, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4 ] ; 2 uses
  %i.nq = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i173.5 = icmp ne ptr %i.nq, null
  %i.nr = icmp ne i32 %i.np, 0
  %i.ns = select i1 %.not.i173.5, i1 %i.nr, i1 false
  br i1 %i.ns, label %bb.as, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6

bb.as:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %i.mf
  %i.nu = load ptr, ptr %i.ip, align 8
  %i.nv = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nv, ptr noundef nonnull align 4 dereferenceable(12) %i.nt, i64 12, i1 false)
  %.pre392 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6

_ZNK6aiMesh16HasTextureCoordsEj.exit175.6:        ; preds = %bb.as, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5
  %i.nw = phi i32 [ %.pre392, %bb.as ], [ %i.np, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5 ] ; 2 uses
  %i.nx = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i173.6 = icmp ne ptr %i.nx, null
  %i.ny = icmp ne i32 %i.nw, 0
  %i.nz = select i1 %.not.i173.6, i1 %i.ny, i1 false
  br i1 %i.nz, label %bb.at, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7

bb.at:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6
  %i.oa = getelementptr inbounds nuw [12 x i8], ptr %i.nx, i64 %i.mf
  %i.ob = load ptr, ptr %i.iq, align 8
  %i.oc = getelementptr inbounds nuw [12 x i8], ptr %i.ob, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.oc, ptr noundef nonnull align 4 dereferenceable(12) %i.oa, i64 12, i1 false)
  %.pre393 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7

_ZNK6aiMesh16HasTextureCoordsEj.exit175.7:        ; preds = %bb.at, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6
  %i.od = phi i32 [ %.pre393, %bb.at ], [ %i.nw, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6 ] ; 2 uses
  %i.oe = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i173.7 = icmp ne ptr %i.oe, null
  %i.of = icmp ne i32 %i.od, 0
  %i.og = select i1 %.not.i173.7, i1 %i.of, i1 false
  br i1 %i.og, label %bb.au, label %.preheader

bb.au:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7
  %i.oh = getelementptr inbounds nuw [12 x i8], ptr %i.oe, i64 %i.mf
  %i.oi = load ptr, ptr %i.ir, align 8
  %i.oj = getelementptr inbounds nuw [12 x i8], ptr %i.oi, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.oj, ptr noundef nonnull align 4 dereferenceable(12) %i.oh, i64 12, i1 false)
  %.pre394 = load i32, ptr %i.s, align 4
  br label %.preheader

.preheader:                                       ; preds = %bb.au, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7
  %i.ok = phi i32 [ %.pre394, %bb.au ], [ %i.od, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7 ] ; 2 uses
  %i.ol = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i176 = icmp ne ptr %i.ol, null
  %i.om = icmp ne i32 %i.ok, 0
  %i.on = select i1 %.not.i176, i1 %i.om, i1 false
  br i1 %i.on, label %bb.av, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.1

bb.av:                                            ; preds = %.preheader
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.ol, i64 %i.mf
  %i.op = load ptr, ptr %i.gv, align 8
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oq, ptr noundef nonnull align 4 dereferenceable(16) %i.oo, i64 16, i1 false)
  %.pre395 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.1

_ZNK6aiMesh15HasVertexColorsEj.exit178.1:         ; preds = %.preheader, %bb.av
  %i.or = phi i32 [ %i.ok, %.preheader ], [ %.pre395, %bb.av ] ; 2 uses
  %i.os = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i176.1 = icmp ne ptr %i.os, null
  %i.ot = icmp ne i32 %i.or, 0
  %i.ou = select i1 %.not.i176.1, i1 %i.ot, i1 false
  br i1 %i.ou, label %bb.aw, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.2

bb.aw:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.1
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.os, i64 %i.mf
  %i.ow = load ptr, ptr %i.is, align 8
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.ow, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ox, ptr noundef nonnull align 4 dereferenceable(16) %i.ov, i64 16, i1 false)
  %.pre396 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.2

_ZNK6aiMesh15HasVertexColorsEj.exit178.2:         ; preds = %bb.aw, %_ZNK6aiMesh15HasVertexColorsEj.exit178.1
  %i.oy = phi i32 [ %.pre396, %bb.aw ], [ %i.or, %_ZNK6aiMesh15HasVertexColorsEj.exit178.1 ] ; 2 uses
  %i.oz = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i176.2 = icmp ne ptr %i.oz, null
  %i.pa = icmp ne i32 %i.oy, 0
  %i.pb = select i1 %.not.i176.2, i1 %i.pa, i1 false
  br i1 %i.pb, label %bb.ax, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.3

bb.ax:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.2
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.oz, i64 %i.mf
  %i.pd = load ptr, ptr %i.it, align 8
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pe, ptr noundef nonnull align 4 dereferenceable(16) %i.pc, i64 16, i1 false)
  %.pre397 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.3

_ZNK6aiMesh15HasVertexColorsEj.exit178.3:         ; preds = %bb.ax, %_ZNK6aiMesh15HasVertexColorsEj.exit178.2
  %i.pf = phi i32 [ %.pre397, %bb.ax ], [ %i.oy, %_ZNK6aiMesh15HasVertexColorsEj.exit178.2 ] ; 2 uses
  %i.pg = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i176.3 = icmp ne ptr %i.pg, null
  %i.ph = icmp ne i32 %i.pf, 0
  %i.pi = select i1 %.not.i176.3, i1 %i.ph, i1 false
  br i1 %i.pi, label %bb.ay, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.4

bb.ay:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.3
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.pg, i64 %i.mf
  %i.pk = load ptr, ptr %i.iu, align 8
  %i.pl = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pl, ptr noundef nonnull align 4 dereferenceable(16) %i.pj, i64 16, i1 false)
  %.pre398 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.4

_ZNK6aiMesh15HasVertexColorsEj.exit178.4:         ; preds = %bb.ay, %_ZNK6aiMesh15HasVertexColorsEj.exit178.3
  %i.pm = phi i32 [ %.pre398, %bb.ay ], [ %i.pf, %_ZNK6aiMesh15HasVertexColorsEj.exit178.3 ] ; 2 uses
  %i.pn = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i176.4 = icmp ne ptr %i.pn, null
  %i.po = icmp ne i32 %i.pm, 0
  %i.pp = select i1 %.not.i176.4, i1 %i.po, i1 false
  br i1 %i.pp, label %bb.az, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.5

bb.az:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.4
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.pn, i64 %i.mf
  %i.pr = load ptr, ptr %i.iv, align 8
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ps, ptr noundef nonnull align 4 dereferenceable(16) %i.pq, i64 16, i1 false)
  %.pre399 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.5

_ZNK6aiMesh15HasVertexColorsEj.exit178.5:         ; preds = %bb.az, %_ZNK6aiMesh15HasVertexColorsEj.exit178.4
  %i.pt = phi i32 [ %.pre399, %bb.az ], [ %i.pm, %_ZNK6aiMesh15HasVertexColorsEj.exit178.4 ] ; 2 uses
  %i.pu = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i176.5 = icmp ne ptr %i.pu, null
  %i.pv = icmp ne i32 %i.pt, 0
  %i.pw = select i1 %.not.i176.5, i1 %i.pv, i1 false
  br i1 %i.pw, label %bb.ba, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.6

bb.ba:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.5
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.mf
  %i.py = load ptr, ptr %i.iw, align 8
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.py, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pz, ptr noundef nonnull align 4 dereferenceable(16) %i.px, i64 16, i1 false)
  %.pre400 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.6

_ZNK6aiMesh15HasVertexColorsEj.exit178.6:         ; preds = %bb.ba, %_ZNK6aiMesh15HasVertexColorsEj.exit178.5
  %i.qa = phi i32 [ %.pre400, %bb.ba ], [ %i.pt, %_ZNK6aiMesh15HasVertexColorsEj.exit178.5 ] ; 2 uses
  %i.qb = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i176.6 = icmp ne ptr %i.qb, null
  %i.qc = icmp ne i32 %i.qa, 0
  %i.qd = select i1 %.not.i176.6, i1 %i.qc, i1 false
  br i1 %i.qd, label %bb.bb, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7

bb.bb:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.6
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.qb, i64 %i.mf
  %i.qf = load ptr, ptr %i.ix, align 8
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.qf, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qg, ptr noundef nonnull align 4 dereferenceable(16) %i.qe, i64 16, i1 false)
  %.pre401 = load i32, ptr %i.s, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7

_ZNK6aiMesh15HasVertexColorsEj.exit178.7:         ; preds = %bb.bb, %_ZNK6aiMesh15HasVertexColorsEj.exit178.6
  %i.qh = phi i32 [ %.pre401, %bb.bb ], [ %i.qa, %_ZNK6aiMesh15HasVertexColorsEj.exit178.6 ]
  %i.qi = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i176.7 = icmp ne ptr %i.qi, null
  %i.qj = icmp ne i32 %i.qh, 0
  %i.qk = select i1 %.not.i176.7, i1 %i.qj, i1 false
  br i1 %i.qk, label %bb.bc, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread

bb.bc:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit178.7
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %i.mf
  %i.qm = load ptr, ptr %i.iy, align 8
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qn, ptr noundef nonnull align 4 dereferenceable(16) %i.ql, i64 16, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread

_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread:  ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172, %bb.bc, %_ZNK6aiMesh15HasVertexColorsEj.exit178.7
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next380, %i.km
  br i1 %exitcond382.not, label %._crit_edge324, label %.lr.ph323, !llvm.loop !19

bb.bd:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %2) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 1320) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192

bb.be:                                            ; preds = %bb.a
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.qp = load ptr, ptr %i.qo, align 8            ; 6 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8
  %.not.i179 = icmp eq ptr %i.qp, %i.qr
  br i1 %.not.i179, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %2, ptr %i.qp, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store i32 %1, ptr %i.qs, align 8
  %i.qt = load ptr, ptr %i.qo, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store ptr %i.qu, ptr %i.qo, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192

bb.bg:                                            ; preds = %bb.be
  %i.qv = load ptr, ptr %3, align 8               ; 5 uses
  %i.qw = ptrtoint ptr %i.qp to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx                    ; 4 uses
  %i.qz = icmp eq i64 %i.qy, 9223372036854775792
  br i1 %i.qz, label %bb.bh, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180: ; preds = %bb.bg
  %i.ra = ashr exact i64 %i.qy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i181 = tail call i64 @llvm.umax.i64(i64 %i.ra, i64 1)
  %i.rb = add nsw i64 %.sroa.speculated.i.i.i181, %i.ra ; 2 uses
  %i.rc = icmp ult i64 %i.rb, %i.ra
  %i.rd = tail call i64 @llvm.umin.i64(i64 %i.rb, i64 576460752303423487)
  %i.re = select i1 %i.rc, i64 576460752303423487, i64 %i.rd ; 3 uses
  %.not.i.i.i182 = icmp ne i64 %i.re, 0
  tail call void @llvm.assume(i1 %.not.i.i.i182)
  %i.rf = shl nuw nsw i64 %i.re, 4
  %i.rg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rf) #17 ; 5 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.qy ; 2 uses
  store ptr %2, ptr %i.rh, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i32 %1, ptr %i.ri, align 8
  %.not10.i.i.i.i.i183 = icmp eq ptr %i.qv, %i.qp
  br i1 %.not10.i.i.i.i.i183, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188, label %.lr.ph.i.i.i.i.i184

.lr.ph.i.i.i.i.i184:                              ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180, %.lr.ph.i.i.i.i.i184
  %.012.i.i.i.i.i185 = phi ptr [ %i.rk, %.lr.ph.i.i.i.i.i184 ], [ %i.rg, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180 ] ; 2 uses
  %.0911.i.i.i.i.i186 = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i184 ], [ %i.qv, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i185, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i186, i64 16, i1 false), !alias.scope !20
  %i.rj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i186, i64 16 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i185, i64 16 ; 2 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.rj, %i.qp
  br i1 %.not.i.i.i.i.i187, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188, label %.lr.ph.i.i.i.i.i184, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188: ; preds = %.lr.ph.i.i.i.i.i184, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180
  %.0.lcssa.i.i.i.i.i189 = phi ptr [ %i.rg, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i180 ], [ %i.rk, %.lr.ph.i.i.i.i.i184 ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i189, i64 16
  %.not.i34.i.i190 = icmp eq ptr %i.qv, null
  br i1 %.not.i34.i.i190, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i191, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.qy) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i191

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i191: ; preds = %bb.bi, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i188
  store ptr %i.rg, ptr %3, align 8
  store ptr %i.rl, ptr %i.qo, align 8
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.rg, i64 %i.re
  store ptr %i.rm, ptr %i.qq, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit192: ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i191, %bb.bf, %bb.bd
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS7_EE(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.4)
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.preheader52.lr.ph, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #17
          to label %_ZNSt6vectorIjSaIjEE7reserveEm.exit unwind label %bb.d ; 4 uses

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %.not87 = icmp eq i32 %i.d, 0
  br i1 %.not87, label %._crit_edge77, label %.preheader52.lr.ph

.preheader52.lr.ph:                               ; preds = %bb.c, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.sroa.19.5113 = phi ptr [ %i.i, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %bb.c ]
  %.sroa.12.3112 = phi ptr [ %i.h, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %.pre = load ptr, ptr %i.j, align 8
  %.pre102 = load ptr, ptr %1, align 8
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.lr.ph, %._crit_edge
  %i.l = phi i32 [ %i.d, %.preheader52.lr.ph ], [ %i.s, %._crit_edge ]
  %i.m = phi ptr [ %.pre102, %.preheader52.lr.ph ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.n = phi ptr [ %.pre, %.preheader52.lr.ph ], [ %i.u, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.preheader52.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.0.075 = phi ptr [ %.sroa.12.3112, %.preheader52.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.19.074 = phi ptr [ %.sroa.19.5113, %.preheader52.lr.ph ], [ %.sroa.19.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.12.073 = phi ptr [ %.sroa.12.3112, %.preheader52.lr.ph ], [ %.sroa.12.1.lcssa, %._crit_edge ] ; 2 uses
  %.not88 = icmp eq ptr %i.n, %i.m
  br i1 %.not88, label %._crit_edge, label %.lr.ph

._crit_edge77:                                    ; preds = %._crit_edge, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.sroa.12.0.lcssa = phi ptr [ %i.h, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.12.1.lcssa, %._crit_edge ]
  %.sroa.19.0.lcssa = phi ptr [ %i.i, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.19.2.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.h, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %.sroa.0.2.lcssa, %._crit_edge ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.l, label %bb.k

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.l
  %.sroa.19.1 = phi ptr [ %.sroa.19.0.lcssa, %bb.l ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.lcssa, %bb.l ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre103 = load i32, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader52
  %i.s = phi i32 [ %i.l, %.preheader52 ], [ %.pre103, %._crit_edge.loopexit ] ; 2 uses
  %i.t = phi ptr [ %i.m, %.preheader52 ], [ %i.az, %._crit_edge.loopexit ]
  %i.u = phi ptr [ %i.m, %.preheader52 ], [ %i.ay, %._crit_edge.loopexit ]
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.073, %.preheader52 ], [ %.sroa.12.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.074, %.preheader52 ], [ %.sroa.19.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.2.lcssa = phi ptr [ %.sroa.0.075, %.preheader52 ], [ %.sroa.0.3, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = zext i32 %i.s to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.preheader52, label %._crit_edge77, !llvm.loop !24

.lr.ph:                                           ; preds = %.preheader52, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.x = phi ptr [ %i.az, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.m, %.preheader52 ]
  %i.y = phi i64 [ %i.ax, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %.preheader52 ]
  %storemerge70 = phi i32 [ %i.aw, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %.preheader52 ] ; 3 uses
  %.sroa.0.269 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.0.075, %.preheader52 ] ; 8 uses
  %.sroa.19.268 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.19.074, %.preheader52 ] ; 6 uses
  %.sroa.12.167 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.12.073, %.preheader52 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.e:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.12.167, %.sroa.19.268
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %storemerge70, ptr %.sroa.12.167, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.12.167, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %.sroa.19.268 to i64
  %i.ai = ptrtoint ptr %.sroa.0.269 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775804
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.al = ashr exact i64 %i.aj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #17
          to label %.noexc34 unwind label %.loopexit ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store i32 %storemerge70, ptr %i.as, align 4
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc34
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %.sroa.0.269, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc34
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0.269, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.269, i64 noundef %i.aj) #16
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.f, %.lr.ph
  %.sroa.12.2 = phi ptr [ %.sroa.12.167, %.lr.ph ], [ %i.au, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.268, %.lr.ph ], [ %i.av, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.19.268, %bb.f ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.269, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0.269, %bb.f ] ; 2 uses
  %i.aw = add i32 %storemerge70, 1                ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.az = load ptr, ptr %1, align 8               ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4
  %i.be = icmp ugt i64 %i.bd, %i.ax
  br i1 %i.be, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !25

bb.k:                                             ; preds = %._crit_edge77
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge77
  %i.bf = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.bg = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr exact i64 %i.bh, 2
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  store i32 %i.bj, ptr %i.c, align 8
  %i.bk = and i64 %i.bh, 17179869180
  %i.bl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #17
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  store ptr %i.bl, ptr %i.o, align 8
  %.not89 = icmp eq i32 %i.bj, 0
  br i1 %.not89, label %.preheader, label %.lr.ph83

.preheader:                                       ; preds = %.lr.ph83, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %.not90 = icmp eq i32 %i.bn, 0
  br i1 %.not90, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.o

.lr.ph83:                                         ; preds = %bb.m, %.lr.ph83
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.lr.ph83 ], [ 0, %bb.m ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv96
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = load ptr, ptr %i.o, align 8
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv96
  store i32 %i.bq, ptr %i.bs, align 4
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.bt = load i32, ptr %i.c, align 8
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next97, %i.bu
  br i1 %i.bv, label %.lr.ph83, label %.preheader, !llvm.loop !26

._crit_edge86:                                    ; preds = %bb.p, %.preheader
  %.not.i.i.i35 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge86
  %i.bw = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.bx = sub i64 %i.bw, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bx) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.o:                                             ; preds = %.lr.ph85, %bb.p
  %indvars.iv99 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next100, %bb.p ] ; 2 uses
  %i.by = load ptr, ptr %i.bo, align 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv99
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS7_EE(ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.cb = load i32, ptr %i.bm, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp samesign ult i64 %indvars.iv.next100, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge86, !llvm.loop !27

bb.q:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.n, %._crit_edge86, %bb.b
  ret void

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.d
  %.sroa.19.4 = phi ptr [ %.sroa.19.1, %bb.d ], [ %.sroa.19.0.lcssa, %bb.q ], [ %.sroa.19.268, %.loopexit ], [ %.sroa.19.268, %.loopexit.split-lp ]
  %.sroa.0.4 = phi ptr [ %.sroa.0.1, %bb.d ], [ %.sroa.0.0.lcssa, %bb.q ], [ %.sroa.0.269, %.loopexit ], [ %.sroa.0.269, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ce, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i36 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIjSaIjEED2Ev.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = ptrtoint ptr %.sroa.19.4 to i64
  %i.cg = ptrtoint ptr %.sroa.0.4 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.ch) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit37

_ZNSt6vectorIjSaIjEED2Ev.exit37:                  ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((24, 28)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i32 noundef 1000000)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.a, ptr %i.b, align 8
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ae) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 9 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.ah, label %.preheader47.preheader

bb.z:                                             ; preds = %.preheader47.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 1028) #16
  %.pre = load ptr, ptr %i.am, align 8
  br label %.preheader47.1

.preheader47.1:                                   ; preds = %.preheader47.preheader, %bb.z
  %i.ao = phi ptr [ %i.an, %.preheader47.preheader ], [ %.pre, %bb.z ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.preheader47.2, label %bb.aa

bb.aa:                                            ; preds = %.preheader47.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 1028) #16
  %.pre69 = load ptr, ptr %i.am, align 8
  br label %.preheader47.2

end_hunk_1
begin_hunk_2_@_ZN6aiMeshD2Ev:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.preheader47.4, label %bb.ac

bb.ac:                                            ; preds = %.preheader47.3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 1028) #16
  %.pre71 = load ptr, ptr %i.am, align 8
  br label %.preheader47.4

.preheader47.4:                                   ; preds = %bb.ac, %.preheader47.3
  %i.ba = phi ptr [ %.pre71, %bb.ac ], [ %i.aw, %.preheader47.3 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.preheader47.5, label %bb.ad

bb.ad:                                            ; preds = %.preheader47.4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 1028) #16
  %.pre72 = load ptr, ptr %i.am, align 8
  br label %.preheader47.5

.preheader47.5:                                   ; preds = %bb.ad, %.preheader47.4
  %i.be = phi ptr [ %.pre72, %bb.ad ], [ %i.ba, %.preheader47.4 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.preheader47.6, label %bb.ae

bb.ae:                                            ; preds = %.preheader47.5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 1028) #16
  %.pre73 = load ptr, ptr %i.am, align 8
  br label %.preheader47.6

.preheader47.6:                                   ; preds = %bb.ae, %.preheader47.5
  %i.bi = phi ptr [ %.pre73, %bb.ae ], [ %i.be, %.preheader47.5 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.preheader47.7, label %bb.af

bb.af:                                            ; preds = %.preheader47.6
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 1028) #16
  %.pre74 = load ptr, ptr %i.am, align 8
  br label %.preheader47.7

.preheader47.7:                                   ; preds = %bb.af, %.preheader47.6
  %i.bm = phi ptr [ %.pre74, %bb.af ], [ %i.bi, %.preheader47.6 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %.preheader47.7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 1028) #16
  %.pre75 = load ptr, ptr %i.am, align 8          ; 2 uses
  %i.bq = icmp eq ptr %.pre75, null
  br i1 %i.bq, label %bb.ah, label %.thread

.thread:                                          ; preds = %.preheader47.7, %bb.ag
  %i.br = phi ptr [ %.pre75, %bb.ag ], [ %i.bm, %.preheader47.7 ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.br) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread, %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %i.bt) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZdaPv(ptr noundef nonnull %i.bw) #16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %i.bz) #16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZdaPv(ptr noundef nonnull %i.cc) #16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZdaPv(ptr noundef nonnull %i.cf) #16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZdaPv(ptr noundef nonnull %i.ci) #16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #16
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZdaPv(ptr noundef nonnull %i.co) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %.not37 = icmp eq i32 %i.cr, 0
  br i1 %.not37, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not38 = icmp eq ptr %i.ct, null
  br i1 %.not38, label %bb.bh, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.cu, ptr %2, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 1, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ba
  %.pre77 = load ptr, ptr %i.cw, align 8          ; 2 uses
  %.not4552 = icmp eq ptr %.pre77, null
  br i1 %.not4552, label %._crit_edge56, label %.lr.ph55

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ba
  %i.cz = phi i32 [ %i.cr, %.lr.ph.preheader ], [ %i.de, %bb.ba ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ba ] ; 2 uses
  %i.da = load ptr, ptr %i.cs, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %.not41 = icmp eq ptr %i.dc, null
  br i1 %.not41, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %2, ptr %1, align 8
  %i.dd = invoke { ptr, i8 } @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE6insertERKS2_.exit unwind label %bb.bq ; 0 uses

_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE6insertERKS2_.exit: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.pre76 = load i32, ptr %i.cq, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE6insertERKS2_.exit, %.lr.ph
  %i.de = phi i32 [ %.pre76, %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EE6insertERKS2_.exit ], [ %i.cz, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge56:                                    ; preds = %bb.bd, %._crit_edge
  %i.dh = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.bf, label %bb.be

.lr.ph55:                                         ; preds = %._crit_edge, %bb.bd
  %.sroa.042.053 = phi ptr [ %i.dp, %bb.bd ], [ %.pre77, %._crit_edge ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.042.053, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph55
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1048
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN6aiBoneD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #16
  br label %_ZN6aiBoneD2Ev.exit

_ZN6aiBoneD2Ev.exit:                              ; preds = %bb.bb, %bb.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 1120) #16
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN6aiBoneD2Ev.exit, %.lr.ph55
  %i.dp = load ptr, ptr %.sroa.042.053, align 8   ; 2 uses
  %.not45 = icmp eq ptr %i.dp, null
  br i1 %.not45, label %._crit_edge56, label %.lr.ph55

bb.be:                                            ; preds = %._crit_edge56
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge56
  %i.dq = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bf, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.dq, %bb.bf ] ; 2 uses
  %i.dr = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #16
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.bf
  %i.ds = load ptr, ptr %2, align 8
  %i.dt = load i64, ptr %i.cv, align 8
  %i.du = shl i64 %i.dt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ds, i8 0, i64 %i.du, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  %i.dv = load ptr, ptr %2, align 8               ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.cu
  br i1 %i.dw, label %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.dx = load i64, ptr %i.cv, align 8
  %i.dy = shl i64 %i.dx, 3
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #16
  br label %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit

_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt13unordered_setIPK6aiBoneSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit, %bb.ay, %bb.ax
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8            ; 2 uses
  %.not39 = icmp eq i32 %i.ea, 0
  br i1 %.not39, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not40 = icmp eq ptr %i.ec, null
  br i1 %.not40, label %bb.bm, label %.lr.ph58

._crit_edge59:                                    ; preds = %bb.bk
  %.pre79 = load ptr, ptr %i.eb, align 8          ; 2 uses
  %i.ed = icmp eq ptr %.pre79, null
  br i1 %i.ed, label %bb.bm, label %bb.bl

.lr.ph58:                                         ; preds = %bb.bi, %bb.bk
  %i.ee = phi i32 [ %i.ej, %bb.bk ], [ %i.ea, %bb.bi ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.bk ], [ 0, %bb.bi ] ; 2 uses
  %i.ef = load ptr, ptr %i.eb, align 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv66
  %i.eh = load ptr, ptr %i.eg, align 8            ; 3 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph58
  call void @_ZN10aiAnimMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1200) dereferenceable(1200) %i.eh) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 1200) #16
  %.pre78 = load i32, ptr %i.dz, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph58, %bb.bj
  %i.ej = phi i32 [ %i.ee, %.lr.ph58 ], [ %.pre78, %bb.bj ] ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next67, %i.ek
  br i1 %i.el, label %.lr.ph58, label %._crit_edge59, !llvm.loop !30

bb.bl:                                            ; preds = %._crit_edge59
  call void @_ZdaPv(ptr noundef nonnull %.pre79) #16
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge59, %bb.bl, %bb.bi, %bb.bh
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.en = load ptr, ptr %i.em, align 8            ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %.idx = shl i64 %i.eq, 4                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bn
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN6aiFaceD2Ev.exit
  %i.et = phi ptr [ %i.eu, %_ZN6aiFaceD2Ev.exit ], [ %i.es, %.preheader.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -16 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN6aiFaceD2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #16
  br label %_ZN6aiFaceD2Ev.exit

_ZN6aiFaceD2Ev.exit:                              ; preds = %.preheader, %bb.bo
  %i.ey = icmp eq ptr %i.eu, %i.en
  br i1 %i.ey, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN6aiFaceD2Ev.exit, %bb.bn
  %i.ez = or disjoint i64 %.idx, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ep, i64 noundef %i.ez) #16
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit, %bb.bm
  ret void

bb.bq:                                            ; preds = %bb.az
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #19
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Assimp30SplitLargeMeshesProcess_VertexC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp30SplitLargeMeshesProcess_VertexE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1000000, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6Assimp30SplitLargeMeshesProcess_Vertex8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %1, 128
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp30SplitLargeMeshesProcess_Vertex7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not41.not = icmp eq i32 %i.g, 0
  br i1 %.not41.not, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph44, label %bb.d, !llvm.loop !31

.lr.ph44:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit, label %bb.c

.critedge._crit_edge.loopexit:                    ; preds = %.critedge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre54 = load ptr, ptr %2, align 8
  %i.o = zext i32 %i.z to i64
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %bb.b, %.critedge._crit_edge.loopexit
  %i.p = phi ptr [ %.pre54, %.critedge._crit_edge.loopexit ], [ null, %bb.b ] ; 7 uses
  %i.q = phi ptr [ %.pre, %.critedge._crit_edge.loopexit ], [ null, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.o, %.critedge._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 4                   ; 4 uses
  %.not34 = icmp eq i64 %i.u, %.lcssa
  br i1 %.not34, label %bb.n, label %bb.g

bb.e:                                             ; preds = %.lr.ph44, %.critedge
  %indvars.iv51 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next52, %.critedge ] ; 3 uses
  %i.v = load ptr, ptr %i.j, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv51
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = trunc nuw i64 %indvars.iv51 to i32
  invoke void @_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.y, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.critedge unwind label %bb.f

.critedge:                                        ; preds = %bb.e
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.z = load i32, ptr %i.f, align 8              ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next52, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge._crit_edge.loopexit, !llvm.loop !32

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %.pre55 = load ptr, ptr %2, align 8
  br label %bb.r

bb.g:                                             ; preds = %.critedge._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.ae) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = trunc i64 %i.u to i32
  store i32 %i.ag, ptr %i.f, align 8
  %i.ah = icmp ugt i64 %i.u, 2305843009213693951
  %i.ai = ashr exact i64 %i.t, 1
  %i.aj = select i1 %i.ah, i64 -1, i64 %i.ai
  %i.ak = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #17
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.ak, ptr %i.ad, align 8
  %.not48 = icmp eq ptr %i.q, %i.p
  br i1 %.not48, label %._crit_edge, label %.lr.ph46

._crit_edge:                                      ; preds = %.lr.ph46, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void @_ZN6Assimp32SplitLargeMeshesProcess_Triangle10UpdateNodeEP6aiNodeRKSt6vectorISt4pairIP6aiMeshjESaIS7_EE(ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %._crit_edge, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph46:                                         ; preds = %bb.j, %.lr.ph46
  %i.ao = phi i64 [ %i.au, %.lr.ph46 ], [ 0, %bb.j ] ; 2 uses
  %.045 = phi i32 [ %i.at, %.lr.ph46 ], [ 0, %bb.j ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.ad, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8
  %i.at = add i32 %.045, 1                        ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = icmp ugt i64 %i.u, %i.au
  br i1 %i.av, label %.lr.ph46, label %._crit_edge, !llvm.loop !33

bb.l:                                             ; preds = %._crit_edge
  %i.aw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull @.str.7)
          to label %.loopexit unwind label %bb.k

bb.n:                                             ; preds = %.critedge._crit_edge
  %i.ax = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull @.str.8)
          to label %.loopexit unwind label %bb.k

.loopexit:                                        ; preds = %bb.m, %bb.o
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.p to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit: ; preds = %bb.d, %.loopexit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.k, %bb.f
  %i.bd = phi ptr [ %.pre55, %bb.f ], [ %i.p, %bb.k ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.an, %bb.k ]
  %.not.i.i.i36 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit37

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EED2Ev.exit37: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.0", align 8     ; 14 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::vector.10", align 8    ; 13 uses
  %6 = alloca %struct.aiString, align 4           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 21 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ugt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.dz

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6Assimp28ComputeVertexBoneWeightTableEPK6aiMesh(ptr noundef nonnull %2) ; 5 uses
  %i.h = load i32, ptr %i.b, align 4              ; 3 uses
  %i.i = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 -1, ptr %i.a, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not299 = icmp eq i32 %i.h, 0
  br i1 %.not299, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit unwind label %bb.i

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c
  %i.l = udiv i32 %i.h, %i.i
  %i.m = add i32 %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = udiv i32 %i.o, %i.m                      ; 2 uses
  %i.q = lshr i32 %i.p, 3
  %i.r = add i32 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ae = zext i32 %i.r to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not148 = icmp eq ptr %i.g, null               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.0118 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %.3121, %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit ] ; 2 uses
  %i.bu = load i32, ptr %i.d, align 8
  %.fr = freeze i32 %i.bu                         ; 9 uses
  %i.bv = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #17
          to label %bb.e unwind label %bb.j       ; 64 uses

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 27 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 224 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1272
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1312
  store ptr null, ptr %i.cb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.by, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.bz, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ca, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bv, i8 0, i64 12, i1 false)
  %i.cc = load i32, ptr %i.s, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  store i32 %i.cc, ptr %i.cd, align 8
  %i.ce = icmp eq ptr %i.bv, %2
  br i1 %i.ce, label %_ZN8aiStringaSERKS_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 236
  %i.cg = load i32, ptr %i.t, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.cg, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 240 ; 2 uses
  %i.ci = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr nonnull align 4 %i.u, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  store i8 0, ptr %i.cj, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.e, %bb.f
  %i.ck = load ptr, ptr %i.v, align 8
  %.not.i = icmp ne ptr %i.ck, null
  %i.cl = load i32, ptr %i.w, align 8             ; 2 uses
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = select i1 %.not.i, i1 %i.cm, i1 false
  br i1 %i.cn, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN8aiStringaSERKS_.exit
end_hunk_2
begin_hunk_3_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
  br i1 %.not.i162.not.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.ap

bb.ap:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit
  %i.gz = load i32, ptr %i.at, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bv, i64 180
  store i32 %i.gz, ptr %i.ha, align 4
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.aq unwind label %bb.am     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1:   ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hb, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1, %bb.aq
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  store ptr %i.hb, ptr %i.hc, align 8
  %i.hd = load ptr, ptr %i.au, align 8
  %.not.i162.not.2 = icmp eq ptr %i.hd, null
  br i1 %.not.i162.not.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.ar

bb.ar:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.he = load i32, ptr %i.av, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  store i32 %i.he, ptr %i.hf, align 8
  %i.hg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.as unwind label %bb.am     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2:   ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hg, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2, %bb.as
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  store ptr %i.hg, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.aw, align 8
  %.not.i162.not.3 = icmp eq ptr %i.hi, null
  br i1 %.not.i162.not.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.at

bb.at:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.hj = load i32, ptr %i.ax, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bv, i64 188
  store i32 %i.hj, ptr %i.hk, align 4
  %i.hl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.au unwind label %bb.am     ; 2 uses

bb.au:                                            ; preds = %bb.at
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3:   ; preds = %bb.au
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hl, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3, %bb.au
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bv, i64 136
  store ptr %i.hl, ptr %i.hm, align 8
  %i.hn = load ptr, ptr %i.ay, align 8
  %.not.i162.not.4 = icmp eq ptr %i.hn, null
  br i1 %.not.i162.not.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.av

bb.av:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.ho = load i32, ptr %i.az, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  store i32 %i.ho, ptr %i.hp, align 8
  %i.hq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.aw unwind label %bb.am     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4:   ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hq, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4, %bb.aw
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bv, i64 144
  store ptr %i.hq, ptr %i.hr, align 8
  %i.hs = load ptr, ptr %i.ba, align 8
  %.not.i162.not.5 = icmp eq ptr %i.hs, null
  br i1 %.not.i162.not.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.ht = load i32, ptr %i.bb, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bv, i64 196
  store i32 %i.ht, ptr %i.hu, align 4
  %i.hv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.ay unwind label %bb.am     ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5:   ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hv, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5, %bb.ay
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bv, i64 152
  store ptr %i.hv, ptr %i.hw, align 8
  %i.hx = load ptr, ptr %i.bc, align 8
  %.not.i162.not.6 = icmp eq ptr %i.hx, null
  br i1 %.not.i162.not.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.az

bb.az:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.hy = load i32, ptr %i.bd, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bv, i64 200
  store i32 %i.hy, ptr %i.hz, align 8
  %i.ia = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.ba unwind label %bb.am     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6:   ; preds = %bb.ba
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ia, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6, %bb.ba
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  store ptr %i.ia, ptr %i.ib, align 8
  %i.ic = load ptr, ptr %i.be, align 8
  %.not.i162.not.7 = icmp eq ptr %i.ic, null
  br i1 %.not.i162.not.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.id = load i32, ptr %i.bf, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bv, i64 204
  store i32 %i.id, ptr %i.ie, align 4
  %i.if = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.bc unwind label %bb.am     ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7:   ; preds = %bb.bc
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.if, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7, %bb.bc
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bv, i64 168
  store ptr %i.if, ptr %i.ig, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split

bb.bd:                                            ; preds = %.preheader313, %._crit_edge342
  %indvars.iv374 = phi i64 [ %i.gf, %.preheader313 ], [ %indvars.iv.next375, %._crit_edge342 ] ; 6 uses
  %i.ih = load i32, ptr %i.n, align 8
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp samesign ult i64 %indvars.iv374, %i.ii
  br i1 %i.ij, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd
  %i.ik = load ptr, ptr %i.af, align 8
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %indvars.iv374 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8            ; 5 uses
  %.not352 = icmp eq i32 %i.im, 0                 ; 2 uses
  br i1 %.not352, label %._crit_edge, label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.be
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.io = load ptr, ptr %i.in, align 8            ; 5 uses
  %i.ip = load ptr, ptr %4, align 8               ; 5 uses
  %wide.trip.count = zext i32 %i.im to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.iq = icmp ult i32 %i.im, 4
  br i1 %i.iq, label %.epil.preheader, label %.lr.ph333.new

.lr.ph333.new:                                    ; preds = %.lr.ph333
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.bg

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bg
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph333
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph333 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0129331.epil.init = phi i32 [ 0, %.lr.ph333 ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod501 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod501)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.bf ] ; 2 uses
  %.0129331.epil = phi i32 [ %.0129331.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.bf ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bf ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.epil
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = icmp eq i32 %i.iv, -1
  %i.ix = zext i1 %i.iw to i32
  %spec.select.epil = add i32 %.0129331.epil, %i.ix ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.bf, !llvm.loop !34

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.bf, %bb.be
  %.0129.lcssa = phi i32 [ 0, %bb.be ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.bf ]
  %i.iy = load i32, ptr %i.bw, align 4
  %i.iz = add i32 %i.iy, %.0129.lcssa
  %i.ja = icmp ugt i32 %i.iz, %.fr
  br i1 %i.ja, label %.thread, label %bb.bh

bb.bg:                                            ; preds = %bb.bg, %.lr.ph333.new
  %indvars.iv = phi i64 [ 0, %.lr.ph333.new ], [ %indvars.iv.next.3, %bb.bg ] ; 5 uses
  %.0129331 = phi i32 [ 0, %.lr.ph333.new ], [ %spec.select.3, %bb.bg ]
  %niter = phi i64 [ 0, %.lr.ph333.new ], [ %niter.next.3, %bb.bg ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = icmp eq i32 %i.jf, -1
  %i.jh = zext i1 %i.jg to i32
  %spec.select = add i32 %.0129331, %i.jh
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = icmp eq i32 %i.jn, -1
  %i.jp = zext i1 %i.jo to i32
  %spec.select.1 = add i32 %spec.select, %i.jp
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = icmp eq i32 %i.jv, -1
  %i.jx = zext i1 %i.jw to i32
  %spec.select.2 = add i32 %spec.select.1, %i.jx
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = icmp eq i32 %i.kd, -1
  %i.kf = zext i1 %i.ke to i32
  %spec.select.3 = add i32 %spec.select.2, %i.kf  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !35

bb.bh:                                            ; preds = %._crit_edge
  %i.kg = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.kh = load ptr, ptr %i.ah, align 8
  %.not.i164 = icmp eq ptr %i.kg, %i.kh
  br i1 %.not.i164, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.kg, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr null, ptr %i.ki, align 8
  %i.kj = load ptr, ptr %i.ag, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  store ptr %i.kk, ptr %i.ag, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.bj:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.kg)
          to label %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge unwind label %bb.bl

._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge: ; preds = %bb.bj
  %.pre = load ptr, ptr %i.ag, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge, %bb.bi
  %i.kl = phi ptr [ %.pre, %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge ], [ %i.kk, %bb.bi ] ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -16 ; 2 uses
  store i32 %i.im, ptr %i.km, align 8
  %i.kn = zext i32 %i.im to i64                   ; 2 uses
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ko) #17
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.kq = getelementptr inbounds i8, ptr %i.kl, i64 -8 ; 3 uses
  store ptr %i.kp, ptr %i.kq, align 8
  %i.kr = load i32, ptr %i.km, align 8
  %i.ks = load i32, ptr %i.bv, align 8
  %switch.tableidx = add i32 %i.kr, -1            ; 2 uses
  %i.kt = icmp ult i32 %switch.tableidx, 3
  br i1 %i.kt, label %switch.lookup, label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.bm:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

switch.lookup:                                    ; preds = %bb.bk
  %i.kw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE, i64 %i.kw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %switch.lookup
  %.sink491 = phi i32 [ %switch.ext, %switch.lookup ], [ 8, %bb.bk ]
  %i.kx = or i32 %i.ks, %.sink491
  store i32 %i.kx, ptr %i.bv, align 8
  br i1 %.not352, label %._crit_edge342, label %.lr.ph341

._crit_edge342:                                   ; preds = %bb.cs, %bb.bn
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %i.ky = load i32, ptr %i.bw, align 4
  %i.kz = icmp eq i32 %i.ky, %.fr
  br i1 %i.kz, label %.thread, label %bb.bd

.lr.ph341:                                        ; preds = %bb.bn, %bb.cs
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %bb.cs ], [ 0, %bb.bn ] ; 4 uses
  %i.la = load ptr, ptr %i.af, align 8
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %indvars.iv374
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv369
  %i.lf = load i32, ptr %i.le, align 4
  %i.lg = zext i32 %i.lf to i64                   ; 22 uses
  %i.lh = load ptr, ptr %4, align 8
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lg
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %.not147 = icmp eq i32 %i.lj, -1
  br i1 %.not147, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph341
  %i.lk = load ptr, ptr %i.kq, align 8
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv369
  store i32 %i.lj, ptr %i.ll, align 4
  br label %bb.cs

bb.bp:                                            ; preds = %.lr.ph341
  %i.lm = load ptr, ptr %i.x, align 8
  %i.ln = getelementptr inbounds nuw [12 x i8], ptr %i.lm, i64 %i.lg
  %i.lo = load ptr, ptr %i.by, align 8
  %i.lp = load i32, ptr %i.bw, align 4
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [12 x i8], ptr %i.lo, i64 %i.lq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lr, ptr noundef nonnull align 4 dereferenceable(12) %i.ln, i64 12, i1 false)
  %i.ls = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not.i166 = icmp ne ptr %i.ls, null
  %i.lt = load i32, ptr %i.b, align 4             ; 2 uses
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = select i1 %.not.i166, i1 %i.lu, i1 false
  br i1 %i.lv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %i.ls, i64 %i.lg
  %i.lx = load ptr, ptr %i.gc, align 8
  %i.ly = load i32, ptr %i.bw, align 4
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.lx, i64 %i.lz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ma, ptr noundef nonnull align 4 dereferenceable(12) %i.lw, i64 12, i1 false)
  %.pre386.pre = load i32, ptr %i.b, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pre386 = phi i32 [ %.pre386.pre, %bb.bq ], [ %i.lt, %bb.bp ] ; 2 uses
  %i.mb = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i167 = icmp eq ptr %i.mb, null
  %i.mc = load ptr, ptr %i.aa, align 8
  %.not1.i168 = icmp eq ptr %i.mc, null
  %or.cond.i169 = select i1 %.not.i167, i1 true, i1 %.not1.i168
  br i1 %or.cond.i169, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170:  ; preds = %bb.br
  %.not302 = icmp eq i32 %.pre386, 0
  br i1 %.not302, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread, label %bb.bs

bb.bs:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.mb, i64 %i.lg
  %i.me = load ptr, ptr %i.gd, align 8
  %i.mf = load i32, ptr %i.bw, align 4
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.mg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mh, ptr noundef nonnull align 4 dereferenceable(12) %i.md, i64 12, i1 false)
  %i.mi = load ptr, ptr %i.aa, align 8
  %i.mj = getelementptr inbounds nuw [12 x i8], ptr %i.mi, i64 %i.lg
  %i.mk = load ptr, ptr %i.ge, align 8
  %i.ml = load i32, ptr %i.bw, align 4
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %i.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mn, ptr noundef nonnull align 4 dereferenceable(12) %i.mj, i64 12, i1 false)
  %.pre385 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread: ; preds = %bb.br, %bb.bs
  %i.mo = phi i32 [ %.pre386, %bb.br ], [ %.pre385, %bb.bs ] ; 2 uses
  %i.mp = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i171 = icmp ne ptr %i.mp, null
  %i.mq = icmp ne i32 %i.mo, 0
  %i.mr = select i1 %.not.i171, i1 %i.mq, i1 false
  br i1 %i.mr, label %bb.bt, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1

bb.bt:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread
  %i.ms = getelementptr inbounds nuw [12 x i8], ptr %i.mp, i64 %i.lg
  %i.mt = load ptr, ptr %i.ga, align 8
  %i.mu = load i32, ptr %i.bw, align 4
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %i.mt, i64 %i.mv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mw, ptr noundef nonnull align 4 dereferenceable(12) %i.ms, i64 12, i1 false)
  %.pre387 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1

_ZNK6aiMesh16HasTextureCoordsEj.exit173.1:        ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread, %bb.bt
  %i.mx = phi i32 [ %i.mo, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread ], [ %.pre387, %bb.bt ] ; 2 uses
  %i.my = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i171.1 = icmp ne ptr %i.my, null
  %i.mz = icmp ne i32 %i.mx, 0
  %i.na = select i1 %.not.i171.1, i1 %i.mz, i1 false
  br i1 %i.na, label %bb.bu, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2

bb.bu:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.my, i64 %i.lg
  %i.nc = load ptr, ptr %i.gg, align 8
  %i.nd = load i32, ptr %i.bw, align 4
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.nc, i64 %i.ne
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nf, ptr noundef nonnull align 4 dereferenceable(12) %i.nb, i64 12, i1 false)
  %.pre388 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2

_ZNK6aiMesh16HasTextureCoordsEj.exit173.2:        ; preds = %bb.bu, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1
  %i.ng = phi i32 [ %.pre388, %bb.bu ], [ %i.mx, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1 ] ; 2 uses
  %i.nh = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i171.2 = icmp ne ptr %i.nh, null
  %i.ni = icmp ne i32 %i.ng, 0
  %i.nj = select i1 %.not.i171.2, i1 %i.ni, i1 false
  br i1 %i.nj, label %bb.bv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3

bb.bv:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2
  %i.nk = getelementptr inbounds nuw [12 x i8], ptr %i.nh, i64 %i.lg
  %i.nl = load ptr, ptr %i.gh, align 8
  %i.nm = load i32, ptr %i.bw, align 4
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.nl, i64 %i.nn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.no, ptr noundef nonnull align 4 dereferenceable(12) %i.nk, i64 12, i1 false)
  %.pre389 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3
end_hunk_3
begin_hunk_4_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qo, i64 %i.qq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qr, ptr noundef nonnull align 4 dereferenceable(16) %i.qn, i64 16, i1 false)
  %.pre398 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.4

_ZNK6aiMesh15HasVertexColorsEj.exit176.4:         ; preds = %bb.ce, %_ZNK6aiMesh15HasVertexColorsEj.exit176.3
  %i.qs = phi i32 [ %.pre398, %bb.ce ], [ %i.qj, %_ZNK6aiMesh15HasVertexColorsEj.exit176.3 ] ; 2 uses
  %i.qt = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i174.4 = icmp ne ptr %i.qt, null
  %i.qu = icmp ne i32 %i.qs, 0
  %i.qv = select i1 %.not.i174.4, i1 %i.qu, i1 false
  br i1 %i.qv, label %bb.cf, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.5

bb.cf:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.4
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.lg
  %i.qx = load ptr, ptr %i.gq, align 8
  %i.qy = load i32, ptr %i.bw, align 4
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.qx, i64 %i.qz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ra, ptr noundef nonnull align 4 dereferenceable(16) %i.qw, i64 16, i1 false)
  %.pre399 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.5

_ZNK6aiMesh15HasVertexColorsEj.exit176.5:         ; preds = %bb.cf, %_ZNK6aiMesh15HasVertexColorsEj.exit176.4
  %i.rb = phi i32 [ %.pre399, %bb.cf ], [ %i.qs, %_ZNK6aiMesh15HasVertexColorsEj.exit176.4 ] ; 2 uses
  %i.rc = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i174.5 = icmp ne ptr %i.rc, null
  %i.rd = icmp ne i32 %i.rb, 0
  %i.re = select i1 %.not.i174.5, i1 %i.rd, i1 false
  br i1 %i.re, label %bb.cg, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.6

bb.cg:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.5
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.rc, i64 %i.lg
  %i.rg = load ptr, ptr %i.gr, align 8
  %i.rh = load i32, ptr %i.bw, align 4
  %i.ri = zext i32 %i.rh to i64
  %i.rj = getelementptr inbounds nuw [16 x i8], ptr %i.rg, i64 %i.ri
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rj, ptr noundef nonnull align 4 dereferenceable(16) %i.rf, i64 16, i1 false)
  %.pre400 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.6

_ZNK6aiMesh15HasVertexColorsEj.exit176.6:         ; preds = %bb.cg, %_ZNK6aiMesh15HasVertexColorsEj.exit176.5
  %i.rk = phi i32 [ %.pre400, %bb.cg ], [ %i.rb, %_ZNK6aiMesh15HasVertexColorsEj.exit176.5 ] ; 2 uses
  %i.rl = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i174.6 = icmp ne ptr %i.rl, null
  %i.rm = icmp ne i32 %i.rk, 0
  %i.rn = select i1 %.not.i174.6, i1 %i.rm, i1 false
  br i1 %i.rn, label %bb.ch, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7

bb.ch:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.6
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %i.rl, i64 %i.lg
  %i.rp = load ptr, ptr %i.gs, align 8
  %i.rq = load i32, ptr %i.bw, align 4
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [16 x i8], ptr %i.rp, i64 %i.rr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rs, ptr noundef nonnull align 4 dereferenceable(16) %i.ro, i64 16, i1 false)
  %.pre401 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7

_ZNK6aiMesh15HasVertexColorsEj.exit176.7:         ; preds = %bb.ch, %_ZNK6aiMesh15HasVertexColorsEj.exit176.6
  %i.rt = phi i32 [ %.pre401, %bb.ch ], [ %i.rk, %_ZNK6aiMesh15HasVertexColorsEj.exit176.6 ]
  %i.ru = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i174.7 = icmp ne ptr %i.ru, null
  %i.rv = icmp ne i32 %i.rt, 0
  %i.rw = select i1 %.not.i174.7, i1 %i.rv, i1 false
  br i1 %i.rw, label %bb.ci, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread

bb.ci:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.7
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %i.ru, i64 %i.lg
  %i.ry = load ptr, ptr %i.gt, align 8
  %i.rz = load i32, ptr %i.bw, align 4
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %i.ry, i64 %i.sa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sb, ptr noundef nonnull align 4 dereferenceable(16) %i.rx, i64 16, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread

_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread:  ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170, %bb.ci, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7
  %i.sc = load i32, ptr %i.bw, align 4            ; 4 uses
  %i.sd = load ptr, ptr %i.kq, align 8
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv369
  store i32 %i.sc, ptr %i.se, align 4
  br i1 %.not148, label %.loopexit305, label %bb.cj

bb.cj:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread
  %i.sf = zext i32 %i.sc to i64
  %i.sg = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.sf ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8            ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 8 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = icmp eq ptr %i.sh, %i.sj
  br i1 %i.sk, label %.loopexit305, label %.lr.ph338

.lr.ph338:                                        ; preds = %bb.cj, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.sroa.0215.0337 = phi ptr [ %i.uk, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit ], [ %i.sh, %bb.cj ] ; 4 uses
  %i.sl = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.sm = load i32, ptr %.sroa.0215.0337, align 4
  %i.sn = zext i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sn
  %i.sp = load ptr, ptr %i.so, align 8            ; 2 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %.lr.ph338
  %i.sr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %bb.cl unwind label %bb.cm     ; 3 uses

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sr, i8 0, i64 24, i1 false)
  %i.ss = load i32, ptr %.sroa.0215.0337, align 4
  %i.st = zext i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.st
  store ptr %i.sr, ptr %i.su, align 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cn:                                            ; preds = %bb.cl, %.lr.ph338
  %.0115 = phi ptr [ %i.sr, %bb.cl ], [ %i.sp, %.lr.ph338 ] ; 4 uses
  %i.sw = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0215.0337, i64 4
  %i.sy = load float, ptr %i.sx, align 4          ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.0115, i64 8 ; 4 uses
  %i.ta = load ptr, ptr %i.sz, align 8            ; 6 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.0115, i64 16 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8
  %.not.i.i177 = icmp eq ptr %i.ta, %i.tc
  br i1 %.not.i.i177, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i32 %i.sw, ptr %i.ta, align 4
  %.sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  store float %i.sy, ptr %.sroa_idx208, align 4
  %i.td = load ptr, ptr %i.sz, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store ptr %i.te, ptr %i.sz, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

bb.cp:                                            ; preds = %bb.cn
  %i.tf = load ptr, ptr %.0115, align 8           ; 7 uses
  %i.tg = ptrtoint ptr %i.ta to i64               ; 2 uses
  %i.th = ptrtoint ptr %i.tf to i64               ; 3 uses
  %i.ti = sub i64 %i.tg, %i.th                    ; 4 uses
  %i.tj = icmp eq i64 %i.ti, 9223372036854775800
  br i1 %i.tj, label %bb.cq, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc178 unwind label %.loopexit.split-lp

.noexc178:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cp
  %i.tk = ashr exact i64 %i.ti, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.tk, i64 1)
  %i.tl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.tk ; 2 uses
  %i.tm = icmp ult i64 %i.tl, %i.tk
  %i.tn = call i64 @llvm.umin.i64(i64 %i.tl, i64 1152921504606846975)
  %i.to = select i1 %i.tm, i64 1152921504606846975, i64 %i.tn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.to, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.tp = shl nuw nsw i64 %i.to, 3
  %i.tq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tp) #17
          to label %.noexc179 unwind label %.loopexit306 ; 8 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.ti ; 2 uses
  store i32 %i.sw, ptr %i.tr, align 4
  %.sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store float %i.sy, ptr %.sroa_idx210, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.tf, %i.ta
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc179
  %i.ts = ptrtoaddr ptr %i.tq to i64
  %i.tt = add i64 %i.tg, -8
  %i.tu = sub i64 %i.tt, %i.th                    ; 2 uses
  %i.tv = lshr i64 %i.tu, 3
  %i.tw = add nuw nsw i64 %i.tv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.tu, 24
  %i.tx = sub i64 %i.ts, %i.th
  %diff.check = icmp ult i64 %i.tx, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader497, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.tw, 4611686018427387900     ; 3 uses
  %i.ty = shl i64 %n.vec, 3                       ; 2 uses
  %i.tz = getelementptr i8, ptr %i.tq, i64 %i.ty  ; 2 uses
  %i.ua = getelementptr i8, ptr %i.tf, i64 %i.ty
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ub = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.tq, i64 %i.ub ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.tf, i64 %i.ub ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.uc = getelementptr i8, ptr %next.gep494, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep494, align 4, !alias.scope !39, !noalias !36
  %wide.load495 = load <2 x i64>, ptr %i.uc, align 4, !alias.scope !39, !noalias !36
  %i.ud = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !36, !noalias !39
  store <2 x i64> %wide.load495, ptr %i.ud, align 4, !alias.scope !36, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ue = icmp eq i64 %index.next, %n.vec
  br i1 %i.ue, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader497

.lr.ph.i.i.i.i.i.i.preheader497:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.tq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.tz, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.tf, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ua, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader497, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.uh, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader497 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader497 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.uf = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !39, !noalias !36
  store i64 %i.uf, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !36, !noalias !39
  %i.ug = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ug, %i.ta
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc179
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.tq, %.noexc179 ], [ %i.tz, %middle.block ], [ %i.uh, %.lr.ph.i.i.i.i.i.i ]
  %i.ui = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.tf, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tf, i64 noundef %i.ti) #16
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.cr, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.tq, ptr %.0115, align 8
  store ptr %i.ui, ptr %i.sz, align 8
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.to
  store ptr %i.uj, ptr %i.tb, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.co
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0215.0337, i64 8 ; 2 uses
  %i.ul = load ptr, ptr %i.si, align 8
  %.not303 = icmp eq ptr %i.uk, %i.ul
  br i1 %.not303, label %.loopexit305.loopexit, label %.lr.ph338, !llvm.loop !43

.loopexit306:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp:                               ; preds = %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit305.loopexit:                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backEOS0_.exit
  %.pre402 = load i32, ptr %i.bw, align 4
  br label %.loopexit305

.loopexit305:                                     ; preds = %.loopexit305.loopexit, %bb.cj, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread
  %i.um = phi i32 [ %i.sc, %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread ], [ %.pre402, %.loopexit305.loopexit ], [ %i.sc, %bb.cj ]
  %i.un = load ptr, ptr %4, align 8
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.lg
  store i32 %i.um, ptr %i.uo, align 4
  %i.up = load i32, ptr %i.bw, align 4
  %i.uq = add i32 %i.up, 1
  store i32 %i.uq, ptr %i.bw, align 4
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit305, %bb.bo
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %i.kn
  br i1 %exitcond373.not, label %._crit_edge342, label %.lr.ph341, !llvm.loop !44

.thread:                                          ; preds = %._crit_edge342, %._crit_edge, %bb.bd
  %.3121.in = phi i64 [ %indvars.iv374, %bb.bd ], [ %indvars.iv374, %._crit_edge ], [ %indvars.iv.next375, %._crit_edge342 ]
  %.3121 = trunc i64 %.3121.in to i32             ; 2 uses
  %i.ur = load ptr, ptr %i.v, align 8
  %.not.i180 = icmp ne ptr %i.ur, null
  %i.us = load i32, ptr %i.w, align 8             ; 2 uses
  %i.ut = icmp ne i32 %i.us, 0
  %i.uu = select i1 %.not.i180, i1 %i.ut, i1 false
  br i1 %i.uu, label %.lr.ph346, label %.loopexit312

.lr.ph346:                                        ; preds = %.thread
  %i.uv = load ptr, ptr %i.bz, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bv, i64 216 ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.lr.ph346, %bb.cz
  %i.ux = phi i32 [ %i.us, %.lr.ph346 ], [ %i.wt, %bb.cz ]
  %indvars.iv377 = phi i64 [ 0, %.lr.ph346 ], [ %indvars.iv.next378, %bb.cz ] ; 3 uses
  %.0113343 = phi ptr [ %i.uv, %.lr.ph346 ], [ %.1114, %bb.cz ] ; 3 uses
  %i.uy = load ptr, ptr %i.bz, align 8
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %indvars.iv377
  %i.va = load ptr, ptr %i.uz, align 8            ; 7 uses
  %.not152 = icmp eq ptr %i.va, null
  br i1 %.not152, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.vb = load ptr, ptr %i.v, align 8
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv377
  %i.vd = load ptr, ptr %i.vc, align 8            ; 3 uses
  %i.ve = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #17
          to label %bb.cv unwind label %bb.cy     ; 13 uses

bb.cv:                                            ; preds = %bb.cu
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.ve, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.vf, align 4
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 1060
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vh, align 4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 1080
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vj, align 4
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 1100
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ve, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.vl, align 4
  %i.vm = getelementptr inbounds nuw i8, ptr %.0113343, i64 8
  store ptr %i.ve, ptr %.0113343, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.vn = load i32, ptr %i.vd, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ai, i8 0, i64 1024, i1 false)
  %spec.select.i181 = call i32 @llvm.umin.i32(i32 %i.vn, i32 1023) ; 3 uses
  store i32 %spec.select.i181, ptr %6, align 4
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  %i.vp = zext nneg i32 %spec.select.i181 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %i.vo, i64 %i.vp, i1 false)
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.vp
  store i8 0, ptr %i.vq, align 1
  store i32 %spec.select.i181, ptr %i.ve, align 4
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ve, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vr, ptr nonnull align 4 %i.ai, i64 %i.vp, i1 false)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vp
  store i8 0, ptr %i.vs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vd, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vf, ptr noundef nonnull align 8 dereferenceable(64) %i.vt, i64 64, i1 false)
  %i.vu = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = load ptr, ptr %i.va, align 8
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = ptrtoint ptr %i.vw to i64
  %i.vz = sub i64 %i.vx, %i.vy                    ; 2 uses
  %i.wa = ashr exact i64 %i.vz, 3                 ; 2 uses
  %i.wb = trunc i64 %i.wa to i32
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ve, i64 1028
  store i32 %i.wb, ptr %i.wc, align 4
  %i.wd = and i64 %i.wa, 4294967295               ; 2 uses
  %i.we = shl nuw nsw i64 %i.wd, 3                ; 2 uses
  %i.wf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.we) #17
          to label %bb.cw unwind label %bb.cy     ; 3 uses

bb.cw:                                            ; preds = %bb.cv
  %i.wg = icmp eq i64 %i.wd, 0
  br i1 %i.wg, label %.loopexit308, label %.loopexit308.loopexit

.loopexit308.loopexit:                            ; preds = %bb.cw
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wf, i8 0, i64 %i.we, i1 false)
  br label %.loopexit308

.loopexit308:                                     ; preds = %.loopexit308.loopexit, %bb.cw
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ve, i64 1048
  store ptr %i.wf, ptr %i.wh, align 8
  %i.wi = load ptr, ptr %i.va, align 8
  %i.wj = and i64 %i.vz, 34359738360
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wf, ptr nonnull align 4 %i.wi, i64 %i.wj, i1 false)
  %i.wk = load ptr, ptr %i.va, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %.loopexit308
  %i.wl = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.wm = load ptr, ptr %i.wl, align 8
  %i.wn = ptrtoint ptr %i.wm to i64
  %i.wo = ptrtoint ptr %i.wk to i64
  %i.wp = sub i64 %i.wn, %i.wo
  call void @_ZdlPvm(ptr noundef nonnull %i.wk, i64 noundef %i.wp) #16
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit:   ; preds = %.loopexit308, %bb.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef 24) #16
  %i.wq = load i32, ptr %i.uw, align 8
  %i.wr = add i32 %i.wq, 1
  store i32 %i.wr, ptr %i.uw, align 8
  %.pre403 = load i32, ptr %i.w, align 8
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cv, %bb.cu
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cz:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit, %bb.ct
  %i.wt = phi i32 [ %.pre403, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit ], [ %i.ux, %bb.ct ] ; 2 uses
  %.1114 = phi ptr [ %i.vm, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit ], [ %.0113343, %bb.ct ]
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %i.wu = zext i32 %i.wt to i64
  %i.wv = icmp samesign ult i64 %indvars.iv.next378, %i.wu
  br i1 %i.wv, label %bb.ct, label %.loopexit312, !llvm.loop !45

.loopexit312:                                     ; preds = %bb.cz, %.thread
  %i.ww = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.wx = load ptr, ptr %5, align 8               ; 2 uses
  %i.wy = ptrtoint ptr %i.ww to i64
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = sub i64 %i.wy, %i.wz                    ; 3 uses
  %i.xb = ashr exact i64 %i.xa, 4                 ; 4 uses
  %i.xc = icmp ugt i64 %i.xb, 1152921504606846975
  %i.xd = or disjoint i64 %i.xa, 8
  %i.xe = select i1 %i.xc, i64 -1, i64 %i.xd
  %i.xf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xe) #17
          to label %bb.da unwind label %.loopexit319 ; 2 uses

bb.da:                                            ; preds = %.loopexit312
  store i64 %i.xb, ptr %i.xf, align 16
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 4 uses
  %i.xh = icmp eq ptr %i.ww, %i.wx
  br i1 %i.xh, label %.loopexit311.thread, label %bb.db

.loopexit311.thread:                              ; preds = %bb.da
  %i.xi = getelementptr inbounds nuw i8, ptr %i.bv, i64 208
  store ptr %i.xg, ptr %i.xi, align 8
  %i.xj = trunc nuw nsw i64 %i.xb to i32
  store i32 %i.xj, ptr %i.bx, align 8
  br label %._crit_edge350

bb.db:                                            ; preds = %bb.da
  %i.xk = getelementptr inbounds i8, ptr %i.xg, i64 %i.xa
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %bb.db
  %i.xl = phi ptr [ %i.xg, %bb.db ], [ %i.xn, %bb.dc ] ; 3 uses
  store i32 0, ptr %i.xl, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store ptr null, ptr %i.xm, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 2 uses
  %i.xo = icmp eq ptr %i.xn, %i.xk
  br i1 %i.xo, label %.loopexit311, label %bb.dc

.loopexit311:                                     ; preds = %bb.dc
  %i.xp = getelementptr inbounds nuw i8, ptr %i.bv, i64 208 ; 2 uses
  store ptr %i.xg, ptr %i.xp, align 8
  %i.xq = trunc i64 %i.xb to i32                  ; 2 uses
  store i32 %i.xq, ptr %i.bx, align 8
  %.not355 = icmp eq i32 %i.xq, 0
  br i1 %.not355, label %._crit_edge350, label %.lr.ph349

._crit_edge350:                                   ; preds = %_ZN6aiFaceaSERKS_.exit, %.loopexit311.thread, %.loopexit311
  %i.xr = load ptr, ptr %i.aj, align 8            ; 6 uses
  %i.xs = load ptr, ptr %i.ak, align 8
  %.not.i183 = icmp eq ptr %i.xr, %i.xs
  br i1 %.not.i183, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge350
  store ptr %i.bv, ptr %i.xr, align 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store i32 %1, ptr %i.xt, align 8
  %i.xu = load ptr, ptr %i.aj, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store ptr %i.xv, ptr %i.aj, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

bb.de:                                            ; preds = %._crit_edge350
  %i.xw = load ptr, ptr %3, align 8               ; 5 uses
  %i.xx = ptrtoint ptr %i.xr to i64
  %i.xy = ptrtoint ptr %i.xw to i64
  %i.xz = sub i64 %i.xx, %i.xy                    ; 4 uses
  %i.ya = icmp eq i64 %i.xz, 9223372036854775792
  br i1 %i.ya, label %bb.df, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc185 unwind label %.loopexit.split-lp320

.noexc185:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.de
  %i.yb = ashr exact i64 %i.xz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.yb, i64 1)
  %i.yc = add nsw i64 %.sroa.speculated.i.i.i, %i.yb ; 2 uses
  %i.yd = icmp ult i64 %i.yc, %i.yb
  %i.ye = call i64 @llvm.umin.i64(i64 %i.yc, i64 576460752303423487)
  %i.yf = select i1 %i.yd, i64 576460752303423487, i64 %i.ye ; 3 uses
  %.not.i.i.i184 = icmp ne i64 %i.yf, 0
  call void @llvm.assume(i1 %.not.i.i.i184)
  %i.yg = shl nuw nsw i64 %i.yf, 4
  %i.yh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yg) #17
          to label %.noexc186 unwind label %.loopexit319 ; 5 uses

.noexc186:                                        ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 %i.xz ; 2 uses
  store ptr %i.bv, ptr %i.yi, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  store i32 %1, ptr %i.yj, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.xw, %i.xr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc186, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.yl, %.lr.ph.i.i.i.i.i ], [ %i.yh, %.noexc186 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.yk, %.lr.ph.i.i.i.i.i ], [ %i.xw, %.noexc186 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !46
  %i.yk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.yk, %i.xr
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc186
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.yh, %.noexc186 ], [ %i.yl, %.lr.ph.i.i.i.i.i ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.xw, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.xw, i64 noundef %i.xz) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.dg, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.yh, ptr %3, align 8
  store ptr %i.ym, ptr %i.aj, align 8
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.yh, i64 %i.yf
  store ptr %i.yn, ptr %i.ak, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit

.lr.ph349:                                        ; preds = %.loopexit311, %_ZN6aiFaceaSERKS_.exit
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %_ZN6aiFaceaSERKS_.exit ], [ 0, %.loopexit311 ] ; 3 uses
  %i.yo = load ptr, ptr %5, align 8               ; 2 uses
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.yo, i64 %indvars.iv381 ; 2 uses
  %i.yq = load ptr, ptr %i.xp, align 8            ; 2 uses
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %i.yq, i64 %indvars.iv381 ; 2 uses
  %i.ys = icmp eq ptr %i.yo, %i.yq
  br i1 %i.ys, label %_ZN6aiFaceaSERKS_.exit, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph349
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 8 ; 3 uses
  %i.yu = load ptr, ptr %i.yt, align 8            ; 2 uses
  %i.yv = icmp eq ptr %i.yu, null
  br i1 %i.yv, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_ZdaPv(ptr noundef nonnull %i.yu) #16
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.yw = load i32, ptr %i.yp, align 8            ; 3 uses
  store i32 %i.yw, ptr %i.yr, align 8
  %.not.i187 = icmp eq i32 %i.yw, 0
  br i1 %.not.i187, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.yx = zext i32 %i.yw to i64
  %i.yy = shl nuw nsw i64 %i.yx, 2                ; 2 uses
  %i.yz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yy) #17
          to label %.noexc188 unwind label %bb.dm ; 2 uses

.noexc188:                                        ; preds = %bb.dk
  store ptr %i.yz, ptr %i.yt, align 8
  %i.za = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.zb = load ptr, ptr %i.za, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yz, ptr align 4 %i.zb, i64 %i.yy, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit

bb.dl:                                            ; preds = %bb.dj
  store ptr null, ptr %i.yt, align 8
  br label %_ZN6aiFaceaSERKS_.exit

_ZN6aiFaceaSERKS_.exit:                           ; preds = %bb.dl, %.noexc188, %.lr.ph349
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %i.zc = load i32, ptr %i.bx, align 8
  %i.zd = zext i32 %i.zc to i64
  %i.ze = icmp samesign ult i64 %indvars.iv.next382, %i.zd
  br i1 %i.ze, label %.lr.ph349, label %._crit_edge350, !llvm.loop !50

bb.dm:                                            ; preds = %bb.dk
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.dd
  %i.zg = load i32, ptr %i.n, align 8
  %i.zh = icmp eq i32 %i.zg, %.3121
  %i.zi = load ptr, ptr %5, align 8               ; 3 uses
  %i.zj = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.zi, %i.zj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.zn, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i ], [ %i.zi, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.zl = load ptr, ptr %i.zk, align 8            ; 2 uses
  %i.zm = icmp eq ptr %i.zl, null
  br i1 %i.zm, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.zl) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i:            ; preds = %bb.dn, %.lr.ph.i.i.i
  %i.zn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i189 = icmp eq ptr %i.zn, %i.zj
  br i1 %.not.i.i.i189, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i:  ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit
  %i.zo = phi ptr [ %.pr.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.zi, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.zo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i
  %i.zp = load ptr, ptr %i.ah, align 8
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = ptrtoint ptr %i.zo to i64
  %i.zs = sub i64 %i.zq, %i.zr
  call void @_ZdlPvm(ptr noundef nonnull %i.zo, i64 noundef %i.zs) #16
  br label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit

_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit:            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %i.zh, label %bb.dq, label %bb.d

bb.dp:                                            ; preds = %.loopexit306, %.loopexit.split-lp, %.loopexit319, %.loopexit.split-lp320, %bb.cm, %bb.bl, %bb.bm, %bb.dm, %bb.cy, %bb.am, %bb.v
  %.pn153 = phi { ptr, i32 } [ %i.fd, %bb.v ], [ %i.gu, %bb.am ], [ %i.ws, %bb.cy ], [ %i.zf, %bb.dm ], [ %i.sv, %bb.cm ], [ %i.ku, %bb.bl ], [ %i.kv, %bb.bm ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp320 ], [ %lpad.loopexit321, %.loopexit319 ], [ %lpad.loopexit, %.loopexit306 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorI6aiFaceSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.dx

bb.dq:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit
  br i1 %.not148, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.zt = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.zu = load i64, ptr %i.zt, align 8            ; 2 uses
  %.idx = mul i64 %i.zu, 24                       ; 2 uses
  %i.zv = icmp eq i64 %i.zu, 0
  br i1 %i.zv, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.dr
  %i.zw = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit
  %i.zx = phi ptr [ %i.zy, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit ], [ %i.zw, %.preheader.preheader ] ; 2 uses
  %i.zy = getelementptr inbounds i8, ptr %i.zx, i64 -24 ; 3 uses
  %i.zz = load ptr, ptr %i.zy, align 8            ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.zz, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, label %bb.ds

bb.ds:                                            ; preds = %.preheader
  %i.aaa = getelementptr inbounds i8, ptr %i.zx, i64 -8
  %i.aab = load ptr, ptr %i.aaa, align 8
  %i.aac = ptrtoint ptr %i.aab to i64
  %i.aad = ptrtoint ptr %i.zz to i64
  %i.aae = sub i64 %i.aac, %i.aad
  call void @_ZdlPvm(ptr noundef nonnull %i.zz, i64 noundef %i.aae) #16
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit:        ; preds = %.preheader, %bb.ds
  %i.aaf = icmp eq ptr %i.zy, %i.g
  br i1 %i.aaf, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, %bb.dr
  %i.aag = add i64 %.idx, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.zt, i64 noundef %i.aag) #16
  br label %bb.dt

bb.dt:                                            ; preds = %.loopexit, %bb.dq
  %i.aah = icmp eq ptr %2, null
  br i1 %i.aah, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %2) #15
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 1320) #16
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.aai = load ptr, ptr %4, align 8              ; 3 uses
  %.not.i.i.i191 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i.i191, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aaj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aak = load ptr, ptr %i.aaj, align 8
  %i.aal = ptrtoint ptr %i.aak to i64
  %i.aam = ptrtoint ptr %i.aai to i64
  %i.aan = sub i64 %i.aal, %i.aam
  call void @_ZdlPvm(ptr noundef nonnull %i.aai, i64 noundef %i.aan) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit207

bb.dx:                                            ; preds = %bb.j, %bb.dp, %bb.i
  %.pn153.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.i ], [ %.pn153, %bb.dp ], [ %i.cs, %bb.j ]
  %i.aao = load ptr, ptr %4, align 8              ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIjSaIjEED2Ev.exit193, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aaq = load ptr, ptr %i.aap, align 8
  %i.aar = ptrtoint ptr %i.aaq to i64
  %i.aas = ptrtoint ptr %i.aao to i64
  %i.aat = sub i64 %i.aar, %i.aas
  call void @_ZdlPvm(ptr noundef nonnull %i.aao, i64 noundef %i.aat) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit193

_ZNSt6vectorIjSaIjEED2Ev.exit193:                 ; preds = %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn153.pn.pn

bb.dz:                                            ; preds = %bb.a
  %i.aau = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aav = load ptr, ptr %i.aau, align 8          ; 6 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aax = load ptr, ptr %i.aaw, align 8
  %.not.i194 = icmp eq ptr %i.aav, %i.aax
  br i1 %.not.i194, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store ptr %2, ptr %i.aav, align 8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  store i32 %1, ptr %i.aay, align 8
  %i.aaz = load ptr, ptr %i.aau, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  store ptr %i.aba, ptr %i.aau, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit207

bb.eb:                                            ; preds = %bb.dz
  %i.abb = load ptr, ptr %3, align 8              ; 5 uses
  %i.abc = ptrtoint ptr %i.aav to i64
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = sub i64 %i.abc, %i.abd                 ; 4 uses
  %i.abf = icmp eq i64 %i.abe, 9223372036854775792
  br i1 %i.abf, label %bb.ec, label %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195

bb.ec:                                            ; preds = %bb.eb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195: ; preds = %bb.eb
  %i.abg = ashr exact i64 %i.abe, 4               ; 3 uses
  %.sroa.speculated.i.i.i196 = tail call i64 @llvm.umax.i64(i64 %i.abg, i64 1)
  %i.abh = add nsw i64 %.sroa.speculated.i.i.i196, %i.abg ; 2 uses
  %i.abi = icmp ult i64 %i.abh, %i.abg
  %i.abj = tail call i64 @llvm.umin.i64(i64 %i.abh, i64 576460752303423487)
  %i.abk = select i1 %i.abi, i64 576460752303423487, i64 %i.abj ; 3 uses
  %.not.i.i.i197 = icmp ne i64 %i.abk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i197)
  %i.abl = shl nuw nsw i64 %i.abk, 4
  %i.abm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abl) #17 ; 5 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.abe ; 2 uses
  store ptr %2, ptr %i.abn, align 8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  store i32 %1, ptr %i.abo, align 8
  %.not10.i.i.i.i.i198 = icmp eq ptr %i.abb, %i.aav
  br i1 %.not10.i.i.i.i.i198, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203, label %.lr.ph.i.i.i.i.i199

.lr.ph.i.i.i.i.i199:                              ; preds = %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195, %.lr.ph.i.i.i.i.i199
  %.012.i.i.i.i.i200 = phi ptr [ %i.abq, %.lr.ph.i.i.i.i.i199 ], [ %i.abm, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195 ] ; 2 uses
  %.0911.i.i.i.i.i201 = phi ptr [ %i.abp, %.lr.ph.i.i.i.i.i199 ], [ %i.abb, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i200, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i201, i64 16, i1 false), !alias.scope !52
  %i.abp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i201, i64 16 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i200, i64 16 ; 2 uses
  %.not.i.i.i.i.i202 = icmp eq ptr %i.abp, %i.aav
  br i1 %.not.i.i.i.i.i202, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203, label %.lr.ph.i.i.i.i.i199, !llvm.loop !16

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203: ; preds = %.lr.ph.i.i.i.i.i199, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195
  %.0.lcssa.i.i.i.i.i204 = phi ptr [ %i.abm, %_ZNKSt6vectorISt4pairIP6aiMeshjESaIS3_EE12_M_check_lenEmPKc.exit.i.i195 ], [ %i.abq, %.lr.ph.i.i.i.i.i199 ]
  %i.abr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i204, i64 16
  %.not.i34.i.i205 = icmp eq ptr %i.abb, null
  br i1 %.not.i34.i.i205, label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i206, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203
  tail call void @_ZdlPvm(ptr noundef nonnull %i.abb, i64 noundef %i.abe) #16
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i206

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i206: ; preds = %bb.ed, %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i203
  store ptr %i.abm, ptr %3, align 8
  store ptr %i.abr, ptr %i.aau, align 8
  %i.abs = getelementptr inbounds nuw [16 x i8], ptr %i.abm, i64 %i.abk
  store ptr %i.abs, ptr %i.aaw, align 8
  br label %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit207

_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE12emplace_backIJRS2_RjEEERS3_DpOT_.exit207: ; preds = %_ZNSt6vectorISt4pairIP6aiMeshjESaIS3_EE17_M_realloc_insertIJRS2_RjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i206, %bb.ea, %_ZNSt6vectorIjSaIjEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp30SplitLargeMeshesProcess_Vertex15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((24, 28)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i32 noundef 1000000)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.a, ptr %i.b, align 8
  ret void
}

declare noundef ptr @_ZN6Assimp28ComputeVertexBoneWeightTableEPK6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = tail call noundef ptr @_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %i.d, ptr noundef %i.k) ; 3 uses
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.e, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split, %bb.d
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIP6aiFaceEvT_S2_.exitthread-pre-split ], [ %i.o, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #16
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, %bb.f
  store ptr %i.n, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.z, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %1
  store ptr %i.aa, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit:    ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #16
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp32SplitLargeMeshesProcess_TriangleD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp30SplitLargeMeshesProcess_VertexD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10aiAnimMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1200) dereferenceable(1200) %0) unnamed_addr #0 comdat align 2 {
end_hunk_4
begin_hunk_5_@_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_:bb.a
  %.05.i.i = phi ptr [ %i.q, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %2, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.f, %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.j, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #19
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit unwind label %bb.e ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.t)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27 unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.y, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.c, %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !51

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #16
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, %bb.d
  store ptr %i.p, ptr %0, align 8
  store ptr %i.u, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ad, ptr %i.z, align 8
  ret void

bb.e:                                             ; preds = %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #15 ; 0 uses
  %i.ah = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN6aiFaceD2Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #16
  br label %_ZN6aiFaceD2Ev.exit.thread

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ak) #15 ; 0 uses
  %.not4.i.i29 = icmp eq ptr %i.p, %i.t
  br i1 %.not4.i.i29, label %_ZN6aiFaceD2Ev.exit.thread, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %bb.g, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32
  %.05.i.i31 = phi ptr [ %i.ap, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32 ], [ %i.p, %bb.g ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i31, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i30
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #16
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32:            ; preds = %bb.h, %.lr.ph.i.i30
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i31, i64 16
  %.not.i.i33 = icmp eq ptr %.05.i.i31, %i.s
  br i1 %.not.i.i33, label %_ZN6aiFaceD2Ev.exit.thread, label %.lr.ph.i.i30, !llvm.loop !51

bb.i:                                             ; preds = %_ZN6aiFaceD2Ev.exit.thread
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZN6aiFaceD2Ev.exit.thread:                       ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i32, %bb.e, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #16
  invoke void @__cxa_rethrow() #18
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.aq

bb.k:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #19
  unreachable

bb.l:                                             ; preds = %_ZN6aiFaceD2Ev.exit.thread
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !4, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !4, !10, !9}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!14 = distinct !{!14, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!15 = distinct !{!15, !14, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !4}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!38 = distinct !{!38, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !4, !9, !10}
!42 = distinct !{!42, !4, !9}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aISt4pairIP6aiMeshjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!56 = distinct !{!56, !4}
!57 = distinct !{!57, !4}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = distinct !{!59, !4}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = distinct !{!61, !4, !9, !10}
!62 = distinct !{!62, !4, !10, !9}
!63 = distinct !{!63, !4, !9, !10}
!64 = distinct !{!64, !4, !10, !9}
!65 = distinct !{!65, !4, !9, !10}
!66 = distinct !{!66, !4, !10, !9}
!67 = distinct !{!67, !4, !9, !10}
!68 = distinct !{!68, !4, !10, !9}
!69 = distinct !{!69, !4}
end_hunk_5
