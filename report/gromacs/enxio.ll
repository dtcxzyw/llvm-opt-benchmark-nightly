Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/enxio?download=true
inline.NumInlined: 229
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL10do_eheaderP9ener_filePiP10t_enxframeiPbS4_:bb.a
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gu, i8 0, i64 72, i1 false)
  %i.gv = load ptr, ptr %i.ge, align 8, !tbaa !25
  %i.gw = getelementptr [80 x i8], ptr %i.gv, i64 %indvars.iv.i226 ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 80
  store i32 0, ptr %i.gx, align 8, !tbaa !54
  %i.gy = getelementptr i8, ptr %i.gw, i64 84
  store i32 1, ptr %i.gy, align 4, !tbaa !55
  %i.gz = getelementptr i8, ptr %i.gw, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gz, i8 0, i64 72, i1 false)
  %i.ha = load ptr, ptr %i.ge, align 8, !tbaa !25
  %i.hb = getelementptr [80 x i8], ptr %i.ha, i64 %indvars.iv.i226 ; 3 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 160
  store i32 0, ptr %i.hc, align 8, !tbaa !54
  %i.hd = getelementptr i8, ptr %i.hb, i64 164
  store i32 1, ptr %i.hd, align 4, !tbaa !55
  %i.he = getelementptr i8, ptr %i.hb, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.he, i8 0, i64 72, i1 false)
  %indvars.iv.next.i227.2 = add nsw i64 %indvars.iv.i226, 3 ; 2 uses
  %i.hf = load ptr, ptr %i.ge, align 8, !tbaa !25
  %i.hg = getelementptr inbounds [80 x i8], ptr %i.hf, i64 %indvars.iv.next.i227.2 ; 3 uses
  store i32 0, ptr %i.hg, align 8, !tbaa !54
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store i32 1, ptr %i.hh, align 4, !tbaa !55
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hi, i8 0, i64 72, i1 false)
  %indvars.iv.next.i227.3 = add nsw i64 %indvars.iv.i226, 4
  %exitcond.not.i228.3 = icmp eq i64 %indvars.iv.next.i227.2, 0
  br i1 %exitcond.not.i228.3, label %._crit_edge.i223, label %.lr.ph.i225, !llvm.loop !1

._crit_edge.i223:                                 ; preds = %.lr.ph.i225.prol.loopexit, %.lr.ph.i225, %bb.ca
  store i32 1, ptr %i.gb, align 8, !tbaa !24
  %.pre259 = load ptr, ptr %i.fu, align 8, !tbaa !19
  br label %_Z22add_subblocks_enxblockP10t_enxblocki.exit229

bb.cb:                                            ; preds = %bb.by
  %i.hj = load i32, ptr %i.ga, align 4, !tbaa !52
  %.not200 = icmp eq i32 %i.hj, 1
  br i1 %.not200, label %bb.ck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(61) @.str.9, i8 noundef zeroext 2)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.58, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 673) #23
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cc
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.ch:                                            ; preds = %bb.cd
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ce
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #22
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pn205 = phi { ptr, i32 } [ %i.hm, %bb.ci ], [ %i.hl, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.hn = load ptr, ptr %12, align 8, !tbaa !66   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.cj
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !67
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %bb.cg
  %.pn205.pn = phi { ptr, i32 } [ %i.hk, %bb.cg ], [ %.pn205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %.pn205, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.cv

bb.ck:                                            ; preds = %bb.cb
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !25
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !55
  %.not201 = icmp eq i32 %i.hv, 1
  br i1 %.not201, label %_Z22add_subblocks_enxblockP10t_enxblocki.exit229, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 1 dereferenceable(61) @.str.9, i8 noundef zeroext 2)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.58, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 677) #23
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  unreachable

bb.cp:                                            ; preds = %bb.cl
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.cq:                                            ; preds = %bb.cm
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cn
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #22
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn202 = phi { ptr, i32 } [ %i.hy, %bb.cr ], [ %i.hx, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.hz = load ptr, ptr %15, align 8, !tbaa !66   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.cs
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !67
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.cp
  %.pn202.pn = phi { ptr, i32 } [ %i.hw, %bb.cp ], [ %.pn202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %.pn202, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.cv

_Z22add_subblocks_enxblockP10t_enxblocki.exit229: ; preds = %._crit_edge.i223, %bb.bz, %bb.ck
  %i.ie = phi ptr [ %.pre259, %._crit_edge.i223 ], [ %i.fy, %bb.bz ], [ %i.fy, %bb.ck ]
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %indvars.iv251
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !25
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !54
  store i32 %i.ii, ptr %i.f, align 4, !tbaa !57
  %i.ij = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.ik = call noundef zeroext i1 @_Z15gmx_fio_doe_intP8t_fileioPiPKcS3_i(ptr noundef %i.ij, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.9, i32 noundef 682)
  br i1 %i.ik, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_Z22add_subblocks_enxblockP10t_enxblocki.exit229
  store i8 0, ptr %5, align 1, !tbaa !82
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %_Z22add_subblocks_enxblockP10t_enxblocki.exit229
  %i.il = load ptr, ptr %i.fu, align 8, !tbaa !19
  %i.im = getelementptr inbounds nuw [24 x i8], ptr %i.il, i64 %indvars.iv251 ; 2 uses
  %i.in = trunc i64 %indvars.iv251 to i32
  %i.io = sub i32 %i.in, %.0187
  store i32 %i.io, ptr %i.im, align 8, !tbaa !51
  %i.ip = load i32, ptr %i.f, align 4, !tbaa !57
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !25 ; 2 uses
  store i32 %i.ip, ptr %i.ir, align 8, !tbaa !54
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i32 1, ptr %i.is, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.df

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %.pn205.pn.pn = phi { ptr, i32 } [ %.pn205.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %.pn202.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.dq

bb.cw:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.it = load ptr, ptr %i.fu, align 8, !tbaa !19
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %indvars.iv251 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !52
  store i32 %i.iw, ptr %i.g, align 4, !tbaa !57
  %i.ix = load i8, ptr %5, align 1, !tbaa !82, !range !83, !noundef !84
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.iz = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.ja = call noundef zeroext i1 @_Z15gmx_fio_doe_intP8t_fileioPiPKcS3_i(ptr noundef %i.iz, ptr noundef nonnull %i.iu, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.9, i32 noundef 696) ; 2 uses
  %i.jb = zext i1 %i.ja to i8
  store i8 %i.jb, ptr %5, align 1, !tbaa !82
  br i1 %i.ja, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jc = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.jd = call noundef zeroext i1 @_Z15gmx_fio_doe_intP8t_fileioPiPKcS3_i(ptr noundef %i.jc, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.9, i32 noundef 697)
  %i.je = zext i1 %i.jd to i8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cw, %bb.cy, %bb.cx
  %i.jf = phi i8 [ 0, %bb.cx ], [ %i.je, %bb.cy ], [ 0, %bb.cw ]
  store i8 %i.jf, ptr %5, align 1, !tbaa !82
  %i.jg = load i32, ptr %i.g, align 4, !tbaa !57  ; 5 uses
  %i.jh = load ptr, ptr %i.fu, align 8, !tbaa !19
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %indvars.iv251 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i32 %i.jg, ptr %i.jj, align 4, !tbaa !52
  br i1 %i.k, label %bb.da, label %_Z22add_subblocks_enxblockP10t_enxblocki.exit242

bb.da:                                            ; preds = %bb.cz
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !24
  %i.jm = icmp sgt i32 %i.jg, %i.jl
  br i1 %i.jm, label %bb.db, label %_Z22add_subblocks_enxblockP10t_enxblocki.exit242

bb.db:                                            ; preds = %bb.da
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 7 uses
  %i.jo = sext i32 %i.jg to i64                   ; 4 uses
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !53
  %i.jq = call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 327, ptr noundef %i.jp, i64 noundef range(i64 -2147483648, 2147483648) %i.jo, i64 noundef 80)
  store ptr %i.jq, ptr %i.jn, align 8, !tbaa !53
  %i.jr = load i32, ptr %i.jk, align 8, !tbaa !24 ; 2 uses
  %i.js = icmp slt i32 %i.jr, %i.jg
  br i1 %i.js, label %.lr.ph.preheader.i237, label %._crit_edge.i236

.lr.ph.preheader.i237:                            ; preds = %bb.db
  %i.jt = sext i32 %i.jr to i64                   ; 4 uses
  %i.ju = sub nsw i64 %i.jo, %i.jt
  %xtraiter294 = and i64 %i.ju, 3                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %.lr.ph.i238.prol.loopexit, label %.lr.ph.i238.prol

.lr.ph.i238.prol:                                 ; preds = %.lr.ph.preheader.i237, %.lr.ph.i238.prol
  %indvars.iv.i239.prol = phi i64 [ %indvars.iv.next.i240.prol, %.lr.ph.i238.prol ], [ %i.jt, %.lr.ph.preheader.i237 ] ; 2 uses
  %prol.iter296 = phi i64 [ %prol.iter296.next, %.lr.ph.i238.prol ], [ 0, %.lr.ph.preheader.i237 ]
  %i.jv = load ptr, ptr %i.jn, align 8, !tbaa !25
  %i.jw = getelementptr inbounds [80 x i8], ptr %i.jv, i64 %indvars.iv.i239.prol ; 3 uses
  store i32 0, ptr %i.jw, align 8, !tbaa !54
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  store i32 1, ptr %i.jx, align 4, !tbaa !55
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jy, i8 0, i64 72, i1 false)
  %indvars.iv.next.i240.prol = add nsw i64 %indvars.iv.i239.prol, 1 ; 2 uses
  %prol.iter296.next = add i64 %prol.iter296, 1   ; 2 uses
  %prol.iter296.cmp.not = icmp eq i64 %prol.iter296.next, %xtraiter294
  br i1 %prol.iter296.cmp.not, label %.lr.ph.i238.prol.loopexit, label %.lr.ph.i238.prol, !llvm.loop !115

.lr.ph.i238.prol.loopexit:                        ; preds = %.lr.ph.i238.prol, %.lr.ph.preheader.i237
  %indvars.iv.i239.unr = phi i64 [ %i.jt, %.lr.ph.preheader.i237 ], [ %indvars.iv.next.i240.prol, %.lr.ph.i238.prol ]
  %i.jz = sub nsw i64 %i.jt, %i.jo
  %i.ka = icmp ugt i64 %i.jz, -4
  br i1 %i.ka, label %._crit_edge.i236, label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %.lr.ph.i238.prol.loopexit, %.lr.ph.i238
  %indvars.iv.i239 = phi i64 [ %indvars.iv.next.i240.3, %.lr.ph.i238 ], [ %indvars.iv.i239.unr, %.lr.ph.i238.prol.loopexit ] ; 5 uses
  %i.kb = load ptr, ptr %i.jn, align 8, !tbaa !25
  %i.kc = getelementptr inbounds [80 x i8], ptr %i.kb, i64 %indvars.iv.i239 ; 3 uses
  store i32 0, ptr %i.kc, align 8, !tbaa !54
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  store i32 1, ptr %i.kd, align 4, !tbaa !55
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ke, i8 0, i64 72, i1 false)
  %i.kf = load ptr, ptr %i.jn, align 8, !tbaa !25
  %i.kg = getelementptr [80 x i8], ptr %i.kf, i64 %indvars.iv.i239 ; 3 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 80
  store i32 0, ptr %i.kh, align 8, !tbaa !54
  %i.ki = getelementptr i8, ptr %i.kg, i64 84
  store i32 1, ptr %i.ki, align 4, !tbaa !55
  %i.kj = getelementptr i8, ptr %i.kg, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kj, i8 0, i64 72, i1 false)
  %i.kk = load ptr, ptr %i.jn, align 8, !tbaa !25
  %i.kl = getelementptr [80 x i8], ptr %i.kk, i64 %indvars.iv.i239 ; 3 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 160
  store i32 0, ptr %i.km, align 8, !tbaa !54
  %i.kn = getelementptr i8, ptr %i.kl, i64 164
  store i32 1, ptr %i.kn, align 4, !tbaa !55
  %i.ko = getelementptr i8, ptr %i.kl, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ko, i8 0, i64 72, i1 false)
  %i.kp = load ptr, ptr %i.jn, align 8, !tbaa !25
  %i.kq = getelementptr [80 x i8], ptr %i.kp, i64 %indvars.iv.i239 ; 3 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 240
  store i32 0, ptr %i.kr, align 8, !tbaa !54
  %i.ks = getelementptr i8, ptr %i.kq, i64 244
  store i32 1, ptr %i.ks, align 4, !tbaa !55
  %i.kt = getelementptr i8, ptr %i.kq, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kt, i8 0, i64 72, i1 false)
  %indvars.iv.next.i240.3 = add nsw i64 %indvars.iv.i239, 4 ; 2 uses
  %exitcond.not.i241.3 = icmp eq i64 %indvars.iv.next.i240.3, %i.jo
  br i1 %exitcond.not.i241.3, label %._crit_edge.i236, label %.lr.ph.i238, !llvm.loop !1

._crit_edge.i236:                                 ; preds = %.lr.ph.i238.prol.loopexit, %.lr.ph.i238, %bb.db
  store i32 %i.jg, ptr %i.jk, align 8, !tbaa !24
  br label %_Z22add_subblocks_enxblockP10t_enxblocki.exit242

_Z22add_subblocks_enxblockP10t_enxblocki.exit242: ; preds = %._crit_edge.i236, %bb.da, %bb.cz
  %i.ku = load i32, ptr %i.g, align 4, !tbaa !57
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_Z22add_subblocks_enxblockP10t_enxblocki.exit242
  %.pre258 = load i8, ptr %5, align 1, !tbaa !82, !range !83
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.de
  %i.kw = phi i8 [ %.pre258, %.lr.ph.preheader ], [ %i.ll, %bb.de ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.de ] ; 2 uses
  %i.kx = load ptr, ptr %i.fu, align 8, !tbaa !19
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %indvars.iv251
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !25
  %i.lb = getelementptr inbounds nuw [80 x i8], ptr %i.la, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !55
  store i32 %i.ld, ptr %i.h, align 4, !tbaa !57
  %i.le = trunc nuw i8 %i.kw to i1
  br i1 %i.le, label %bb.dc, label %.critedge213

bb.dc:                                            ; preds = %.lr.ph
  %i.lf = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.lg = call noundef zeroext i1 @_Z15gmx_fio_doe_intP8t_fileioPiPKcS3_i(ptr noundef %i.lf, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.9, i32 noundef 711) ; 2 uses
  %i.lh = zext i1 %i.lg to i8
  store i8 %i.lh, ptr %5, align 1, !tbaa !82
  br i1 %i.lg, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.lj = call noundef zeroext i1 @_Z15gmx_fio_doe_intP8t_fileioPiPKcS3_i(ptr noundef %i.li, ptr noundef nonnull %i.lb, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.9, i32 noundef 712)
  %i.lk = zext i1 %i.lj to i8
  br label %bb.de

.critedge213:                                     ; preds = %.lr.ph
  store i8 0, ptr %5, align 1, !tbaa !82
  br label %bb.de

bb.de:                                            ; preds = %.critedge213, %bb.dd, %bb.dc
  %i.ll = phi i8 [ 0, %bb.dc ], [ %i.lk, %bb.dd ], [ 0, %.critedge213 ] ; 2 uses
  store i8 %i.ll, ptr %5, align 1, !tbaa !82
  %i.lm = load i32, ptr %i.h, align 4, !tbaa !57
  store i32 %i.lm, ptr %i.lc, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ln = load i32, ptr %i.g, align 4, !tbaa !57
  %i.lo = sext i32 %i.ln to i64
  %i.lp = icmp slt i64 %indvars.iv.next, %i.lo
  br i1 %i.lp, label %.lr.ph, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %bb.de, %_Z22add_subblocks_enxblockP10t_enxblocki.exit242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %bb.df

bb.df:                                            ; preds = %bb.cu, %._crit_edge
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %i.lq = load i32, ptr %i.cb, align 8, !tbaa !49
  %i.lr = trunc nuw i64 %indvars.iv.next252 to i32
  %i.ls = icmp sgt i32 %i.lq, %i.lr
  br i1 %i.ls, label %bb.bx, label %._crit_edge249, !llvm.loop !117

._crit_edge249:                                   ; preds = %bb.df, %bb.bw
  %i.lt = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.lv = call noundef zeroext i1 @_Z15gmx_fio_doe_intP8t_fileioPiPKcS3_i(ptr noundef %i.lt, ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.9, i32 noundef 718)
  br i1 %i.lv, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge249
  store i8 0, ptr %5, align 1, !tbaa !82
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %._crit_edge249
  %i.lw = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.lx = call noundef zeroext i1 @_Z15gmx_fio_doe_intP8t_fileioPiPKcS3_i(ptr noundef %i.lw, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.9, i32 noundef 724)
  br i1 %i.lx, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i8 0, ptr %5, align 1, !tbaa !82
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ly = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.lz = call noundef zeroext i1 @_Z15gmx_fio_doe_intP8t_fileioPiPKcS3_i(ptr noundef %i.ly, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.9, i32 noundef 730)
  br i1 %i.lz, label %bb.dk, label %.thread288

.thread288:                                       ; preds = %bb.dj
  store i8 0, ptr %5, align 1, !tbaa !82
  br label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  %.pre261 = load i8, ptr %5, align 1, !tbaa !82, !range !83
  %i.ma = trunc nuw i8 %.pre261 to i1
  br i1 %i.ma, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.mb = load i32, ptr %1, align 4, !tbaa !57
  %i.mc = icmp eq i32 %i.mb, 1
  %i.md = icmp slt i32 %3, 0
  %or.cond7 = and i1 %i.md, %i.mc
  br i1 %or.cond7, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !69, !range !83, !noundef !84
end_hunk_0
