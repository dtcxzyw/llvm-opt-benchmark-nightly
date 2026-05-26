inline.NumInlined: 607
inline.NumDeleted: 343
begin_hunk_0_@_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE:bb.a
  %i.fp = icmp eq i32 %.fr, 0                     ; 16 uses
  %i.fq = load ptr, ptr %i.ax, align 8
  %.not.i163.not = icmp eq ptr %i.fq, null
  br i1 %.not.i163.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ab

_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split

_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader:   ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader, %.loopexit316, %.loopexit316.1, %.loopexit316.2, %.loopexit316.3, %.loopexit316.4, %.loopexit316.5, %.loopexit316.6, %.loopexit316.7
  %i.fs = mul nuw nsw i64 %i.ew, 12               ; 9 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cr, i64 112 ; 10 uses
  %i.fu = add nsw i64 %i.fs, -12                  ; 2 uses
  %i.fv = urem i64 %i.fu, 12
  %i.fw = sub nuw nsw i64 %i.fu, %i.fv
  %i.fx = add nsw i64 %i.fw, 12                   ; 8 uses
  %i.fy = load ptr, ptr %i.ay, align 8
  %.not.i164.not = icmp eq ptr %i.fy, null
  br i1 %.not.i164.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.as

bb.aa:                                            ; preds = %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.ab:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader
  %i.ga = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #15
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.fp, label %.loopexit316, label %.loopexit316.loopexit

.loopexit316.loopexit:                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ga, i8 0, i64 %i.fo, i1 false)
  br label %.loopexit316

.loopexit316:                                     ; preds = %.loopexit316.loopexit, %bb.ac
  store ptr %i.ga, ptr %i.fn, align 8
  %i.gb = load ptr, ptr %i.bh, align 8
  %.not.i163.not.1 = icmp eq ptr %i.gb, null
  br i1 %.not.i163.not.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ad

bb.ad:                                            ; preds = %.loopexit316
  %i.gc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #15
          to label %bb.ae unwind label %bb.aa     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.fp, label %.loopexit316.1, label %.loopexit316.loopexit.1

.loopexit316.loopexit.1:                          ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gc, i8 0, i64 %i.fo, i1 false)
  br label %.loopexit316.1

.loopexit316.1:                                   ; preds = %.loopexit316.loopexit.1, %bb.ae
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store ptr %i.gc, ptr %i.gd, align 8
  %i.ge = load ptr, ptr %i.bi, align 8
  %.not.i163.not.2 = icmp eq ptr %i.ge, null
  br i1 %.not.i163.not.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.af

bb.af:                                            ; preds = %.loopexit316.1
  %i.gf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #15
          to label %bb.ag unwind label %bb.aa     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %i.fp, label %.loopexit316.2, label %.loopexit316.loopexit.2

.loopexit316.loopexit.2:                          ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gf, i8 0, i64 %i.fo, i1 false)
  br label %.loopexit316.2

.loopexit316.2:                                   ; preds = %.loopexit316.loopexit.2, %bb.ag
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  store ptr %i.gf, ptr %i.gg, align 8
  %i.gh = load ptr, ptr %i.bj, align 8
  %.not.i163.not.3 = icmp eq ptr %i.gh, null
  br i1 %.not.i163.not.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ah

bb.ah:                                            ; preds = %.loopexit316.2
  %i.gi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #15
          to label %bb.ai unwind label %bb.aa     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fp, label %.loopexit316.3, label %.loopexit316.loopexit.3

.loopexit316.loopexit.3:                          ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gi, i8 0, i64 %i.fo, i1 false)
  br label %.loopexit316.3

.loopexit316.3:                                   ; preds = %.loopexit316.loopexit.3, %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  store ptr %i.gi, ptr %i.gj, align 8
  %i.gk = load ptr, ptr %i.bk, align 8
  %.not.i163.not.4 = icmp eq ptr %i.gk, null
  br i1 %.not.i163.not.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.aj

bb.aj:                                            ; preds = %.loopexit316.3
  %i.gl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #15
          to label %bb.ak unwind label %bb.aa     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.fp, label %.loopexit316.4, label %.loopexit316.loopexit.4

.loopexit316.loopexit.4:                          ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gl, i8 0, i64 %i.fo, i1 false)
  br label %.loopexit316.4

.loopexit316.4:                                   ; preds = %.loopexit316.loopexit.4, %bb.ak
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  store ptr %i.gl, ptr %i.gm, align 8
  %i.gn = load ptr, ptr %i.bl, align 8
  %.not.i163.not.5 = icmp eq ptr %i.gn, null
  br i1 %.not.i163.not.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.al

bb.al:                                            ; preds = %.loopexit316.4
  %i.go = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #15
          to label %bb.am unwind label %bb.aa     ; 2 uses

bb.am:                                            ; preds = %bb.al
  br i1 %i.fp, label %.loopexit316.5, label %.loopexit316.loopexit.5

.loopexit316.loopexit.5:                          ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.go, i8 0, i64 %i.fo, i1 false)
  br label %.loopexit316.5

.loopexit316.5:                                   ; preds = %.loopexit316.loopexit.5, %bb.am
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  store ptr %i.go, ptr %i.gp, align 8
  %i.gq = load ptr, ptr %i.bm, align 8
  %.not.i163.not.6 = icmp eq ptr %i.gq, null
  br i1 %.not.i163.not.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.an

bb.an:                                            ; preds = %.loopexit316.5
  %i.gr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #15
          to label %bb.ao unwind label %bb.aa     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  br i1 %i.fp, label %.loopexit316.6, label %.loopexit316.loopexit.6

.loopexit316.loopexit.6:                          ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gr, i8 0, i64 %i.fo, i1 false)
  br label %.loopexit316.6

.loopexit316.6:                                   ; preds = %.loopexit316.loopexit.6, %bb.ao
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  store ptr %i.gr, ptr %i.gs, align 8
  %i.gt = load ptr, ptr %i.bn, align 8
  %.not.i163.not.7 = icmp eq ptr %i.gt, null
  br i1 %.not.i163.not.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ap

bb.ap:                                            ; preds = %.loopexit316.6
  %i.gu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #15
          to label %bb.aq unwind label %bb.aa     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.fp, label %.loopexit316.7, label %.loopexit316.loopexit.7

.loopexit316.loopexit.7:                          ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gu, i8 0, i64 %i.fo, i1 false)
  br label %.loopexit316.7

.loopexit316.7:                                   ; preds = %.loopexit316.loopexit.7, %bb.aq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  store ptr %i.gu, ptr %i.gv, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split: ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, %_ZNK6aiMesh15HasVertexColorsEj.exit, %_ZNK6aiMesh15HasVertexColorsEj.exit.1, %_ZNK6aiMesh15HasVertexColorsEj.exit.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split
  %i.gw = phi ptr [ %i.fr, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split ], [ %i.ft, %_ZNK6aiMesh15HasVertexColorsEj.exit.7 ], [ %i.ft, %_ZNK6aiMesh15HasVertexColorsEj.exit.6 ], [ %i.ft, %_ZNK6aiMesh15HasVertexColorsEj.exit.5 ], [ %i.ft, %_ZNK6aiMesh15HasVertexColorsEj.exit.4 ], [ %i.ft, %_ZNK6aiMesh15HasVertexColorsEj.exit.3 ], [ %i.ft, %_ZNK6aiMesh15HasVertexColorsEj.exit.2 ], [ %i.ft, %_ZNK6aiMesh15HasVertexColorsEj.exit.1 ], [ %i.ft, %_ZNK6aiMesh15HasVertexColorsEj.exit ], [ %i.ft, %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader ]
  %i.gx = phi ptr [ %i.fm, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split ], [ %i.fn, %_ZNK6aiMesh15HasVertexColorsEj.exit.7 ], [ %i.fn, %_ZNK6aiMesh15HasVertexColorsEj.exit.6 ], [ %i.fn, %_ZNK6aiMesh15HasVertexColorsEj.exit.5 ], [ %i.fn, %_ZNK6aiMesh15HasVertexColorsEj.exit.4 ], [ %i.fn, %_ZNK6aiMesh15HasVertexColorsEj.exit.3 ], [ %i.fn, %_ZNK6aiMesh15HasVertexColorsEj.exit.2 ], [ %i.fn, %_ZNK6aiMesh15HasVertexColorsEj.exit.1 ], [ %i.fn, %_ZNK6aiMesh15HasVertexColorsEj.exit ], [ %i.fn, %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader ]
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ba)
          to label %.preheader319 unwind label %.loopexit324

.preheader319:                                    ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.hb = zext i32 %.0115 to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %i.he = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cr, i64 144
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cr, i64 152
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cr, i64 160
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cr, i64 168
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  br label %bb.bi

bb.ar:                                            ; preds = %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.as:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cr, i64 176
  %i.hs = load i32, ptr %i.az, align 4
  store i32 %i.hs, ptr %i.hr, align 4
  %i.ht = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #15
          to label %bb.at unwind label %bb.ar     ; 2 uses

bb.at:                                            ; preds = %bb.as
  br i1 %i.fp, label %_ZNK6aiMesh15HasVertexColorsEj.exit, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit:     ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ht, i8 0, i64 %i.fx, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit:              ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit, %bb.at
  store ptr %i.ht, ptr %i.ft, align 8
  %i.hu = load ptr, ptr %i.bo, align 8
  %.not.i164.not.1 = icmp eq ptr %i.hu, null
  br i1 %.not.i164.not.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.au

bb.au:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit
  %i.hv = load i32, ptr %i.bp, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cr, i64 180
  store i32 %i.hv, ptr %i.hw, align 4
  %i.hx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #15
          to label %bb.av unwind label %bb.ar     ; 2 uses

bb.av:                                            ; preds = %bb.au
  br i1 %i.fp, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1:   ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hx, i8 0, i64 %i.fx, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1, %bb.av
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
  store ptr %i.hx, ptr %i.hy, align 8
  %i.hz = load ptr, ptr %i.bq, align 8
  %.not.i164.not.2 = icmp eq ptr %i.hz, null
  br i1 %.not.i164.not.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.aw

bb.aw:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.ia = load i32, ptr %i.br, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.cr, i64 184
  store i32 %i.ia, ptr %i.ib, align 4
  %i.ic = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #15
          to label %bb.ax unwind label %bb.ar     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fp, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2:   ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ic, i8 0, i64 %i.fx, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2, %bb.ax
  %i.id = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  store ptr %i.ic, ptr %i.id, align 8
  %i.ie = load ptr, ptr %i.bs, align 8
  %.not.i164.not.3 = icmp eq ptr %i.ie, null
  br i1 %.not.i164.not.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.ay

bb.ay:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.if = load i32, ptr %i.bt, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.cr, i64 188
  store i32 %i.if, ptr %i.ig, align 4
  %i.ih = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #15
          to label %bb.az unwind label %bb.ar     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  br i1 %i.fp, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3:   ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ih, i8 0, i64 %i.fx, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3, %bb.az
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  store ptr %i.ih, ptr %i.ii, align 8
  %i.ij = load ptr, ptr %i.bu, align 8
  %.not.i164.not.4 = icmp eq ptr %i.ij, null
  br i1 %.not.i164.not.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.ba

bb.ba:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.ik = load i32, ptr %i.bv, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.cr, i64 192
  store i32 %i.ik, ptr %i.il, align 4
  %i.im = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #15
          to label %bb.bb unwind label %bb.ar     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.fp, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4:   ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.im, i8 0, i64 %i.fx, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4, %bb.bb
  %i.in = getelementptr inbounds nuw i8, ptr %i.cr, i64 144
  store ptr %i.im, ptr %i.in, align 8
  %i.io = load ptr, ptr %i.bw, align 8
  %.not.i164.not.5 = icmp eq ptr %i.io, null
  br i1 %.not.i164.not.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.bc

bb.bc:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.ip = load i32, ptr %i.bx, align 4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.cr, i64 196
  store i32 %i.ip, ptr %i.iq, align 4
  %i.ir = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #15
          to label %bb.bd unwind label %bb.ar     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.fp, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5:   ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ir, i8 0, i64 %i.fx, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5, %bb.bd
  %i.is = getelementptr inbounds nuw i8, ptr %i.cr, i64 152
  store ptr %i.ir, ptr %i.is, align 8
  %i.it = load ptr, ptr %i.by, align 8
  %.not.i164.not.6 = icmp eq ptr %i.it, null
  br i1 %.not.i164.not.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.be

bb.be:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.iu = load i32, ptr %i.bz, align 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.cr, i64 200
  store i32 %i.iu, ptr %i.iv, align 4
  %i.iw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #15
          to label %bb.bf unwind label %bb.ar     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  br i1 %i.fp, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6:   ; preds = %bb.bf
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iw, i8 0, i64 %i.fx, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6, %bb.bf
  %i.ix = getelementptr inbounds nuw i8, ptr %i.cr, i64 160
  store ptr %i.iw, ptr %i.ix, align 8
  %i.iy = load ptr, ptr %i.ca, align 8
  %.not.i164.not.7 = icmp eq ptr %i.iy, null
  br i1 %.not.i164.not.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.bg

bb.bg:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.iz = load i32, ptr %i.cb, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cr, i64 204
  store i32 %i.iz, ptr %i.ja, align 4
  %i.jb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fs) #15
          to label %bb.bh unwind label %bb.ar     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.fp, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7:   ; preds = %bb.bh
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jb, i8 0, i64 %i.fx, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7, %bb.bh
  %i.jc = getelementptr inbounds nuw i8, ptr %i.cr, i64 168
  store ptr %i.jb, ptr %i.jc, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split

bb.bi:                                            ; preds = %.preheader319, %._crit_edge345
  %indvars.iv377 = phi i64 [ %i.hb, %.preheader319 ], [ %indvars.iv.next378, %._crit_edge345 ] ; 6 uses
  %i.jd = load i32, ptr %i.aj, align 8
  %i.je = zext i32 %i.jd to i64
  %i.jf = icmp samesign ult i64 %indvars.iv377, %i.je
  br i1 %i.jf, label %bb.bj, label %.thread

bb.bj:                                            ; preds = %bb.bi
  %i.jg = load ptr, ptr %i.bb, align 8
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %indvars.iv377 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8            ; 5 uses
  %.not355 = icmp eq i32 %i.ji, 0                 ; 2 uses
  br i1 %.not355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8            ; 5 uses
  %i.jl = load ptr, ptr %4, align 8               ; 5 uses
  %wide.trip.count = zext i32 %i.ji to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.jm = icmp ult i32 %i.ji, 4
  br i1 %i.jm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.bl

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bl
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0127335.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod511 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod511)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.bk ] ; 2 uses
  %.0127335.epil = phi i32 [ %.0127335.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.bk ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bk ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.epil
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = icmp eq i32 %i.jr, -1
  %i.jt = zext i1 %i.js to i32
  %spec.select.epil = add i32 %.0127335.epil, %i.jt ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.bk, !llvm.loop !13

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.bk, %bb.bj
  %.0127.lcssa = phi i32 [ 0, %bb.bj ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.bk ]
  %i.ju = load i32, ptr %i.cs, align 4
  %i.jv = add i32 %i.ju, %.0127.lcssa
  %i.jw = icmp ugt i32 %i.jv, %.fr
  br i1 %i.jw, label %.thread, label %bb.bm

bb.bl:                                            ; preds = %bb.bl, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.bl ] ; 5 uses
  %.0127335 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.bl ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.bl ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = icmp eq i32 %i.kb, -1
  %i.kd = zext i1 %i.kc to i32
  %spec.select = add i32 %.0127335, %i.kd
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = icmp eq i32 %i.kj, -1
  %i.kl = zext i1 %i.kk to i32
  %spec.select.1 = add i32 %spec.select, %i.kl
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = icmp eq i32 %i.kr, -1
  %i.kt = zext i1 %i.ks to i32
  %spec.select.2 = add i32 %spec.select.1, %i.kt
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4
  %i.la = icmp eq i32 %i.kz, -1
  %i.lb = zext i1 %i.la to i32
  %spec.select.3 = add i32 %spec.select.2, %i.lb  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.bl, !llvm.loop !14

bb.bm:                                            ; preds = %._crit_edge
  %i.lc = load ptr, ptr %i.bc, align 8            ; 4 uses
  %i.ld = load ptr, ptr %i.bd, align 8
  %.not.i166 = icmp eq ptr %i.lc, %i.ld
  br i1 %.not.i166, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.lc, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store ptr null, ptr %i.le, align 8
  %i.lf = load ptr, ptr %i.bc, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  store ptr %i.lg, ptr %i.bc, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.bo:                                            ; preds = %bb.bm
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.lc)
          to label %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge unwind label %bb.bq

._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge: ; preds = %bb.bo
  %.pre = load ptr, ptr %i.bc, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge, %bb.bn
  %i.lh = phi ptr [ %.pre, %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge ], [ %i.lg, %bb.bn ] ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -16 ; 2 uses
  store i32 %i.ji, ptr %i.li, align 8
  %i.lj = zext i32 %i.ji to i64                   ; 2 uses
  %i.lk = shl nuw nsw i64 %i.lj, 2
  %i.ll = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lk) #15
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.lm = getelementptr inbounds i8, ptr %i.lh, i64 -8 ; 3 uses
  store ptr %i.ll, ptr %i.lm, align 8
  %i.ln = load i32, ptr %i.li, align 8
  %i.lo = load i32, ptr %i.cr, align 8
  %switch.tableidx = add i32 %i.ln, -1            ; 2 uses
  %i.lp = icmp ult i32 %switch.tableidx, 3
  br i1 %i.lp, label %switch.lookup, label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.br:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

switch.lookup:                                    ; preds = %bb.bp
  %i.ls = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE, i64 %i.ls
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %switch.lookup
  %.sink501 = phi i32 [ %switch.load, %switch.lookup ], [ 8, %bb.bp ]
  %i.lt = or i32 %i.lo, %.sink501
  store i32 %i.lt, ptr %i.cr, align 8
  br i1 %.not355, label %._crit_edge345, label %.lr.ph344

._crit_edge345:                                   ; preds = %bb.cx, %bb.bs
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %i.lu = load i32, ptr %i.cs, align 4
  %i.lv = icmp eq i32 %i.lu, %.fr
  br i1 %i.lv, label %.thread, label %bb.bi

.lr.ph344:                                        ; preds = %bb.bs, %bb.cx
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %bb.cx ], [ 0, %bb.bs ] ; 4 uses
  %i.lw = load ptr, ptr %i.bb, align 8
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.lw, i64 %indvars.iv377
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv372
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = zext i32 %i.mb to i64                   ; 22 uses
  %i.md = load ptr, ptr %4, align 8
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mc
  %i.mf = load i32, ptr %i.me, align 4            ; 2 uses
  %.not147 = icmp eq i32 %i.mf, -1
  br i1 %.not147, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph344
  %i.mg = load ptr, ptr %i.lm, align 8
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv372
  store i32 %i.mf, ptr %i.mh, align 4
  br label %bb.cx

bb.bu:                                            ; preds = %.lr.ph344
  %i.mi = load ptr, ptr %i.at, align 8
  %i.mj = getelementptr inbounds nuw [12 x i8], ptr %i.mi, i64 %i.mc
  %i.mk = load ptr, ptr %i.cu, align 8
  %i.ml = load i32, ptr %i.cs, align 4
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %i.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mn, ptr noundef nonnull align 4 dereferenceable(12) %i.mj, i64 12, i1 false)
  %i.mo = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i168 = icmp ne ptr %i.mo, null
  %i.mp = load i32, ptr %i.a, align 4             ; 2 uses
  %i.mq = icmp ne i32 %i.mp, 0
  %i.mr = select i1 %.not.i168, i1 %i.mq, i1 false
  br i1 %i.mr, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ms = getelementptr inbounds nuw [12 x i8], ptr %i.mo, i64 %i.mc
  %i.mt = load ptr, ptr %i.gy, align 8
  %i.mu = load i32, ptr %i.cs, align 4
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %i.mt, i64 %i.mv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mw, ptr noundef nonnull align 4 dereferenceable(12) %i.ms, i64 12, i1 false)
  %.pre389.pre = load i32, ptr %i.a, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pre389 = phi i32 [ %.pre389.pre, %bb.bv ], [ %i.mp, %bb.bu ] ; 2 uses
  %i.mx = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i169 = icmp eq ptr %i.mx, null
  %i.my = load ptr, ptr %i.aw, align 8
  %.not1.i170 = icmp eq ptr %i.my, null
  %or.cond.i171 = select i1 %.not.i169, i1 true, i1 %.not1.i170
  br i1 %or.cond.i171, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172:  ; preds = %bb.bw
  %.not309 = icmp eq i32 %.pre389, 0
  br i1 %.not309, label %_ZNK6aiMesh15HasVertexColorsEj.exit178.7.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172
  %i.mz = getelementptr inbounds nuw [12 x i8], ptr %i.mx, i64 %i.mc
  %i.na = load ptr, ptr %i.gz, align 8
  %i.nb = load i32, ptr %i.cs, align 4
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %i.na, i64 %i.nc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nd, ptr noundef nonnull align 4 dereferenceable(12) %i.mz, i64 12, i1 false)
  %i.ne = load ptr, ptr %i.aw, align 8
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.ne, i64 %i.mc
  %i.ng = load ptr, ptr %i.ha, align 8
  %i.nh = load i32, ptr %i.cs, align 4
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [12 x i8], ptr %i.ng, i64 %i.ni
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nj, ptr noundef nonnull align 4 dereferenceable(12) %i.nf, i64 12, i1 false)
  %.pre388 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread: ; preds = %bb.bw, %bb.bx
  %i.nk = phi i32 [ %.pre389, %bb.bw ], [ %.pre388, %bb.bx ] ; 2 uses
  %i.nl = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i173 = icmp ne ptr %i.nl, null
  %i.nm = icmp ne i32 %i.nk, 0
  %i.nn = select i1 %.not.i173, i1 %i.nm, i1 false
  br i1 %i.nn, label %bb.by, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

bb.by:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.nl, i64 %i.mc
  %i.np = load ptr, ptr %i.gw, align 8
  %i.nq = load i32, ptr %i.cs, align 4
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [12 x i8], ptr %i.np, i64 %i.nr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ns, ptr noundef nonnull align 4 dereferenceable(12) %i.no, i64 12, i1 false)
  %.pre390 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1

_ZNK6aiMesh16HasTextureCoordsEj.exit175.1:        ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread, %bb.by
  %i.nt = phi i32 [ %i.nk, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit172.thread ], [ %.pre390, %bb.by ] ; 2 uses
  %i.nu = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not.i173.1 = icmp ne ptr %i.nu, null
  %i.nv = icmp ne i32 %i.nt, 0
  %i.nw = select i1 %.not.i173.1, i1 %i.nv, i1 false
  br i1 %i.nw, label %bb.bz, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

bb.bz:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.mc
  %i.ny = load ptr, ptr %i.hc, align 8
  %i.nz = load i32, ptr %i.cs, align 4
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [12 x i8], ptr %i.ny, i64 %i.oa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ob, ptr noundef nonnull align 4 dereferenceable(12) %i.nx, i64 12, i1 false)
  %.pre391 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2

_ZNK6aiMesh16HasTextureCoordsEj.exit175.2:        ; preds = %bb.bz, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1
  %i.oc = phi i32 [ %.pre391, %bb.bz ], [ %i.nt, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.1 ] ; 2 uses
  %i.od = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i173.2 = icmp ne ptr %i.od, null
  %i.oe = icmp ne i32 %i.oc, 0
  %i.of = select i1 %.not.i173.2, i1 %i.oe, i1 false
  br i1 %i.of, label %bb.ca, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

bb.ca:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.od, i64 %i.mc
  %i.oh = load ptr, ptr %i.hd, align 8
  %i.oi = load i32, ptr %i.cs, align 4
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [12 x i8], ptr %i.oh, i64 %i.oj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ok, ptr noundef nonnull align 4 dereferenceable(12) %i.og, i64 12, i1 false)
  %.pre392 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3

_ZNK6aiMesh16HasTextureCoordsEj.exit175.3:        ; preds = %bb.ca, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2
  %i.ol = phi i32 [ %.pre392, %bb.ca ], [ %i.oc, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.2 ] ; 2 uses
  %i.om = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not.i173.3 = icmp ne ptr %i.om, null
  %i.on = icmp ne i32 %i.ol, 0
  %i.oo = select i1 %.not.i173.3, i1 %i.on, i1 false
  br i1 %i.oo, label %bb.cb, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

bb.cb:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.op = getelementptr inbounds nuw [12 x i8], ptr %i.om, i64 %i.mc
  %i.oq = load ptr, ptr %i.he, align 8
  %i.or = load i32, ptr %i.cs, align 4
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw [12 x i8], ptr %i.oq, i64 %i.os
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ot, ptr noundef nonnull align 4 dereferenceable(12) %i.op, i64 12, i1 false)
  %.pre393 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4

_ZNK6aiMesh16HasTextureCoordsEj.exit175.4:        ; preds = %bb.cb, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3
  %i.ou = phi i32 [ %.pre393, %bb.cb ], [ %i.ol, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.3 ] ; 2 uses
  %i.ov = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not.i173.4 = icmp ne ptr %i.ov, null
  %i.ow = icmp ne i32 %i.ou, 0
  %i.ox = select i1 %.not.i173.4, i1 %i.ow, i1 false
  br i1 %i.ox, label %bb.cc, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5

bb.cc:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4
  %i.oy = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.mc
  %i.oz = load ptr, ptr %i.hf, align 8
  %i.pa = load i32, ptr %i.cs, align 4
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %i.pb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pc, ptr noundef nonnull align 4 dereferenceable(12) %i.oy, i64 12, i1 false)
  %.pre394 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5

_ZNK6aiMesh16HasTextureCoordsEj.exit175.5:        ; preds = %bb.cc, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4
  %i.pd = phi i32 [ %.pre394, %bb.cc ], [ %i.ou, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.4 ] ; 2 uses
  %i.pe = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not.i173.5 = icmp ne ptr %i.pe, null
  %i.pf = icmp ne i32 %i.pd, 0
  %i.pg = select i1 %.not.i173.5, i1 %i.pf, i1 false
  br i1 %i.pg, label %bb.cd, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6

bb.cd:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5
  %i.ph = getelementptr inbounds nuw [12 x i8], ptr %i.pe, i64 %i.mc
  %i.pi = load ptr, ptr %i.hg, align 8
  %i.pj = load i32, ptr %i.cs, align 4
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [12 x i8], ptr %i.pi, i64 %i.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pl, ptr noundef nonnull align 4 dereferenceable(12) %i.ph, i64 12, i1 false)
  %.pre395 = load i32, ptr %i.a, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6

_ZNK6aiMesh16HasTextureCoordsEj.exit175.6:        ; preds = %bb.cd, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5
  %i.pm = phi i32 [ %.pre395, %bb.cd ], [ %i.pd, %_ZNK6aiMesh16HasTextureCoordsEj.exit175.5 ] ; 2 uses
  %i.pn = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not.i173.6 = icmp ne ptr %i.pn, null
  %i.po = icmp ne i32 %i.pm, 0
  %i.pp = select i1 %.not.i173.6, i1 %i.po, i1 false
  br i1 %i.pp, label %bb.ce, label %_ZNK6aiMesh16HasTextureCoordsEj.exit175.7

bb.ce:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit175.6
  %i.pq = getelementptr inbounds nuw [12 x i8], ptr %i.pn, i64 %i.mc
  %i.pr = load ptr, ptr %i.hh, align 8
  %i.ps = load i32, ptr %i.cs, align 4
  %i.pt = zext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [12 x i8], ptr %i.pr, i64 %i.pt
end_hunk_0
