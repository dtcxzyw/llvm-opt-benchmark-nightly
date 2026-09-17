Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.03?download=true
inline.NumInlined: 1332
inline.NumDeleted: 266
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_CsbNLsQi0JuJ4_5tgrepNtB4_3Cli17build_search_opts:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.n ], [ %i.cl, %bb.i ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #22
          to label %bb.cd unwind label %bb.cc

bb.i:                                             ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !range !10, !noundef !5
  %.not39 = icmp eq i64 %i.cn, -1
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm)
          to label %bb.p unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  store i64 -1, ptr %i.w, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.cp = load <4 x i8>, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.cr = load i8, ptr %i.cq, align 8, !range !14, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 849
  %i.ct = load i8, ptr %i.cs, align 1, !range !14, !noundef !5
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 850
  %i.cv = load i8, ptr %i.cu, align 2, !range !14, !noundef !5
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 844
  %i.cx = load i8, ptr %i.cw, align 4, !range !14, !noundef !5
  %i.cy = load <2 x i64>, ptr %1, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.da = load i8, ptr %i.cz, align 2, !range !14, !noundef !5 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 869
  %i.dc = load i8, ptr %i.db, align 1, !range !14, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 906
  %i.de = load i8, ptr %i.dd, align 2, !range !14
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 907
  %i.dg = load i8, ptr %i.df, align 1, !range !14
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 870
  %i.di = load i8, ptr %i.dh, align 2, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj)
          to label %bb.s unwind label %bb.r

bb.n:                                             ; preds = %bb.q, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.q ], [ %i.dk, %bb.o ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #22
          to label %bb.h unwind label %bb.cc

bb.o:                                             ; preds = %bb.k
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.m

bb.q:                                             ; preds = %bb.t, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.t ], [ %i.dl, %bb.r ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #22
          to label %bb.n unwind label %bb.cc

bb.r:                                             ; preds = %bb.m
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.w, %bb.u
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.dn, %bb.u ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #22
          to label %bb.q unwind label %bb.cc

bb.u:                                             ; preds = %bb.s
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 854
  %i.dp = load i8, ptr %i.do, align 2, !range !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.z, %bb.x
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.z ], [ %i.dr, %bb.x ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #22
          to label %bb.t unwind label %bb.cc

bb.x:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.ac, %bb.aa
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ac ], [ %i.dt, %bb.aa ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #22
          to label %bb.w unwind label %bb.cc

bb.aa:                                            ; preds = %bb.y
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %bb.af, %bb.ad
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.af ], [ %i.dv, %bb.ad ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #22
          to label %bb.z unwind label %bb.cc

bb.ad:                                            ; preds = %bb.ab
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.ak, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.ak ], [ %i.dx, %bb.ag ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #22
          to label %bb.ac unwind label %bb.cc

bb.ag:                                            ; preds = %bb.ae
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 845
  %i.dz = load i8, ptr %i.dy, align 1, !range !14, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 851
  %i.eb = load i8, ptr %i.ea, align 1, !range !14, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load <2 x i64>, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ef = load <2 x i64>, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eh = load <2 x i64>, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 867
  %i.ej = load i8, ptr %i.ei, align 1, !range !14, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 868
  %i.el = load i8, ptr %i.ek, align 4, !range !14, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 846
  %i.en = load i8, ptr %i.em, align 2, !range !14, !noundef !5
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 847
  %i.ep = load i8, ptr %i.eo, align 1, !range !14 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 853
  %i.er = load i8, ptr %i.eq, align 1, !range !14, !noundef !5
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 860
  %i.et = load i8, ptr %i.es, align 4, !range !14, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 862
  %i.ev = load i8, ptr %i.eu, align 2, !range !14, !noundef !5
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 861
  %i.ey = load i8, ptr %i.ex, align 1, !range !14, !noundef !5
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 882
  %i.fa = load i8, ptr %i.ez, align 2, !range !14
  %4 = or i8 %i.ey, %i.da
  %5 = icmp ne i8 %4, 0
  %i.fb = or i8 %i.fa, %i.ac
  %i.fc = icmp ne i8 %i.fb, 0
  %or.cond23 = select i1 %5, i1 true, i1 %i.fc
  br i1 %or.cond23, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = invoke noundef zeroext i1 @_RNvNtCsbNLsQi0JuJ4_5tgrep6output10atty_check()
          to label %bb.am unwind label %bb.al

bb.ak:                                            ; preds = %bb.ar, %bb.al
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ar ], [ %i.fe, %bb.al ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #22
          to label %bb.af unwind label %bb.cc

bb.al:                                            ; preds = %bb.aj
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %bb.aj
  %i.ff = xor i1 %i.fd, true
  %i.fg = zext i1 %i.ff to i8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai, %bb.ah
  %.sroa.034.0 = phi i8 [ 1, %bb.ah ], [ %i.fg, %bb.am ], [ 0, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.fh = load <2 x i64>, ptr %3, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 66
  %i.fj = load i8, ptr %i.fi, align 2, !range !14, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fl = load i64, ptr %i.fk, align 8, !range !9, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 873
  %i.fp = load i8, ptr %i.fo, align 1, !range !14, !noundef !5
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 874
  %i.fr = load i8, ptr %i.fq, align 2, !range !14, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 897
  %i.ft = load i8, ptr %i.fs, align 1, !range !14, !noundef !5
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 876
  %i.fv = load i8, ptr %i.fu, align 4, !range !14, !noundef !5
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 879
  %i.fx = load i8, ptr %i.fw, align 1, !range !14, !noundef !5
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 67
  %i.fz = load i8, ptr %i.fy, align 1, !range !18, !noundef !5
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gb = load <2 x i64>, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gd = load <2 x i64>, ptr %i.gc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !range !10, !noundef !5
  %.not40 = icmp eq i64 %i.gf, -1
  br i1 %.not40, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ge)
          to label %bb.at unwind label %bb.as

bb.ap:                                            ; preds = %bb.an
  store i64 -1, ptr %i.o, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.gh = load i8, ptr %i.gg, align 8, !range !14, !noundef !5
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 881
  %i.gj = load i8, ptr %i.gi, align 1, !range !14, !noundef !5
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 882
  %i.gl = load i8, ptr %i.gk, align 2, !range !14, !noundef !5
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 884
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.go = load <2 x i64>, ptr %i.gn, align 8
  %i.gp = load <4 x i8>, ptr %i.gm, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 889
  %i.gr = load i8, ptr %i.gq, align 1, !range !14, !noundef !5
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.av, label %bb.au

bb.ar:                                            ; preds = %bb.az, %bb.as
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.az ], [ %i.gt, %bb.as ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6output11PathDisplayEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #22
          to label %bb.ak unwind label %bb.cc

bb.as:                                            ; preds = %bb.ao
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aq

bb.au:                                            ; preds = %bb.aq
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !range !10, !noundef !5
  %.not41 = icmp eq i64 %i.gv, -1
  br i1 %.not41, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %bb.aq
  store i64 -1, ptr %i.n, align 8
  br label %bb.bd

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu)
          to label %bb.bc unwind label %bb.ba

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !419
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.ba

.noexc:                                           ; preds = %bb.ax
  %i.gw = load i64, ptr %i.c, align 8, !range !16, !noalias !419, !noundef !5
  %i.gx = trunc nuw i64 %i.gw to i1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !range !17, !noalias !419, !noundef !5 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gx, label %bb.ay, label %_RNCNvMs_CsbNLsQi0JuJ4_5tgrepNtB6_3Cli17build_search_opts0B6_.exit, !prof !15

bb.ay:                                            ; preds = %.noexc
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !419
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.gz, i64 %i.hb) #26
          to label %.noexc61 unwind label %bb.ba

.noexc61:                                         ; preds = %bb.ay
  unreachable

_RNCNvMs_CsbNLsQi0JuJ4_5tgrepNtB6_3Cli17build_search_opts0B6_.exit: ; preds = %.noexc
  %i.hc = load ptr, ptr %i.ha, align 8, !noalias !419, !nonnull !5, !noundef !5 ; 2 uses
  %i.hd = icmp samesign ugt i64 %i.gz, 1
  call void @llvm.assume(i1 %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !419
  store i16 11565, ptr %i.hc, align 1, !noalias !419
  br label %bb.bb

bb.az:                                            ; preds = %bb.bh, %bb.ba
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bh ], [ %i.he, %bb.ba ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #22
          to label %bb.ar unwind label %bb.cc

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bb:                                            ; preds = %_RNCNvMs_CsbNLsQi0JuJ4_5tgrepNtB6_3Cli17build_search_opts0B6_.exit, %bb.bc
  %.sroa.6.0 = phi i64 [ 2, %_RNCNvMs_CsbNLsQi0JuJ4_5tgrepNtB6_3Cli17build_search_opts0B6_.exit ], [ %.sroa.576.0.copyload, %bb.bc ]
  %.sroa.5.0 = phi ptr [ %i.hc, %_RNCNvMs_CsbNLsQi0JuJ4_5tgrepNtB6_3Cli17build_search_opts0B6_.exit ], [ %.sroa.4.0.copyload, %bb.bc ]
  %.sroa.0.077 = phi i64 [ %i.gz, %_RNCNvMs_CsbNLsQi0JuJ4_5tgrepNtB6_3Cli17build_search_opts0B6_.exit ], [ %.sroa.075.0.copyload, %bb.bc ]
  store i64 %.sroa.0.077, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aw
  %.sroa.075.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.576.0.copyload = load i64, ptr %.sroa.576.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bb

bb.bd:                                            ; preds = %bb.bb, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !range !10, !noundef !5
  %.not42 = icmp eq i64 %i.hg, -1
  br i1 %.not42, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hf)
          to label %bb.bk unwind label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !420
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc64 unwind label %bb.bi

.noexc64:                                         ; preds = %bb.bf
  %i.hh = load i64, ptr %i.b, align 8, !range !16, !noalias !420, !noundef !5
  %i.hi = trunc nuw i64 %i.hh to i1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !range !17, !noalias !420, !noundef !5 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.hi, label %bb.bg, label %_RNCNvMs_CsbNLsQi0JuJ4_5tgrepNtB6_3Cli17build_search_optss_0B6_.exit, !prof !15

bb.bg:                                            ; preds = %.noexc64
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !420
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.hk, i64 %i.hm) #26
          to label %.noexc65 unwind label %bb.bi

end_hunk_0
