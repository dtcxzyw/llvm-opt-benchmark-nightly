Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/ldb_cmd?download=true
inline.NumInlined: 11498
inline.NumDeleted: 3305
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN7rocksdb21ReduceDBLevelsCommand17GetOldNumOfLevelsERNS_7OptionsEPi:bb.a
bb.x:                                             ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE9push_backERKS1_.exit
  %i.ej = load i8, ptr %0, align 8, !tbaa !200
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.ah, label %bb.aj

bb.y:                                             ; preds = %bb.a
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.z:                                             ; preds = %bb.c
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb15WriteControllerD2Ev.exit103

bb.aa:                                            ; preds = %bb.d
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #36
  br label %bb.at

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb16MutableDBOptionsD2Ev.exit89

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %18, align 8, !tbaa !100  ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.br
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ac
  %i.es = load i64, ptr %i.br, align 8, !tbaa !101
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  %i.eu = load ptr, ptr %17, align 8, !tbaa !100  ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.bp
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.ew = load i64, ptr %i.bp, align 8, !tbaa !101
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  call void @_ZN7rocksdb11FileOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %15) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !100 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZN7rocksdb16MutableDBOptionsD2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !101
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #38
  br label %_ZN7rocksdb16MutableDBOptionsD2Ev.exit89

_ZN7rocksdb16MutableDBOptionsD2Ev.exit89:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.ab ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %bb.as

bb.ad:                                            ; preds = %_ZN7rocksdb16MutableDBOptionsD2Ev.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.t
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %21) #36
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn42 = phi { ptr, i32 } [ %i.ff, %bb.ae ], [ %i.fe, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.ar

bb.ag:                                            ; preds = %bb.w, %bb.v, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE9push_backERKS1_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.ah:                                            ; preds = %bb.x
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1880
  %i.fj = invoke noundef ptr @_ZNK7rocksdb15ColumnFamilySet10GetDefaultEv(ptr noundef nonnull align 8 dereferenceable(593) %i.fi)
          to label %.preheader unwind label %bb.ai ; 2 uses

.preheader:                                       ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1832
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !1881 ; 4 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1882
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2776
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1946 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.fl to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.fl, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check153 = icmp ult i32 %i.fl, 17
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fr = and i64 %wide.trip.count, 15            ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  %i.ft = select i1 %i.fs, i64 16, i64 %i.fr      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.ft    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.go, %vector.body ]
  %vec.phi154 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.gp, %vector.body ]
  %vec.phi155 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.gq, %vector.body ]
  %vec.phi156 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.gr, %vector.body ]
  %vec.ind157 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next175, %vector.body ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %step.add158 = add <4 x i32> %vec.ind157, splat (i32 4)
  %step.add.2159 = add <4 x i32> %vec.ind157, splat (i32 8)
  %step.add.3160 = add <4 x i32> %vec.ind157, splat (i32 12)
  %wide.gep = getelementptr inbounds nuw [24 x i8], ptr %i.fq, <4 x i64> %vec.ind ; 2 uses
  %wide.gep161 = getelementptr inbounds nuw [24 x i8], ptr %i.fq, <4 x i64> %step.add ; 2 uses
  %wide.gep162 = getelementptr inbounds nuw [24 x i8], ptr %i.fq, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep163 = getelementptr inbounds nuw [24 x i8], ptr %i.fq, <4 x i64> %step.add.3 ; 2 uses
  %wide.gep164 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.gep165 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep161, i64 8
  %wide.gep166 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep162, i64 8
  %wide.gep167 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep163, i64 8
  %wide.masked.gather = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep164, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1949
  %wide.masked.gather168 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep165, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1949
  %wide.masked.gather169 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep166, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1949
  %wide.masked.gather170 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep167, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1949
  %wide.masked.gather171 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1950
  %wide.masked.gather172 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep161, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1950
  %wide.masked.gather173 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep162, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1950
  %wide.masked.gather174 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep163, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1950
  %i.fu = ptrtoint <4 x ptr> %wide.masked.gather to <4 x i64>
  %i.fv = ptrtoint <4 x ptr> %wide.masked.gather168 to <4 x i64>
  %i.fw = ptrtoint <4 x ptr> %wide.masked.gather169 to <4 x i64>
  %i.fx = ptrtoint <4 x ptr> %wide.masked.gather170 to <4 x i64>
  %i.fy = ptrtoint <4 x ptr> %wide.masked.gather171 to <4 x i64>
  %i.fz = ptrtoint <4 x ptr> %wide.masked.gather172 to <4 x i64>
  %i.ga = ptrtoint <4 x ptr> %wide.masked.gather173 to <4 x i64>
  %i.gb = ptrtoint <4 x ptr> %wide.masked.gather174 to <4 x i64>
  %i.gc = sub <4 x i64> %i.fu, %i.fy
  %i.gd = sub <4 x i64> %i.fv, %i.fz
  %i.ge = sub <4 x i64> %i.fw, %i.ga
  %i.gf = sub <4 x i64> %i.fx, %i.gb
  %i.gg = and <4 x i64> %i.gc, splat (i64 34359738360)
  %i.gh = and <4 x i64> %i.gd, splat (i64 34359738360)
  %i.gi = and <4 x i64> %i.ge, splat (i64 34359738360)
  %i.gj = and <4 x i64> %i.gf, splat (i64 34359738360)
  %i.gk = icmp eq <4 x i64> %i.gg, zeroinitializer
  %i.gl = icmp eq <4 x i64> %i.gh, zeroinitializer
  %i.gm = icmp eq <4 x i64> %i.gi, zeroinitializer
  %i.gn = icmp eq <4 x i64> %i.gj, zeroinitializer
  %i.go = select <4 x i1> %i.gk, <4 x i32> %vec.phi, <4 x i32> %vec.ind157 ; 2 uses
  %i.gp = select <4 x i1> %i.gl, <4 x i32> %vec.phi154, <4 x i32> %step.add158 ; 2 uses
  %i.gq = select <4 x i1> %i.gm, <4 x i32> %vec.phi155, <4 x i32> %step.add.2159 ; 2 uses
  %i.gr = select <4 x i1> %i.gn, <4 x i32> %vec.phi156, <4 x i32> %step.add.3160 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next175 = add <4 x i32> %vec.ind157, splat (i32 16)
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1876

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.go, <4 x i32> %i.gp)
  %rdx.minmax176 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %rdx.minmax, <4 x i32> %i.gq)
  %rdx.minmax177 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %rdx.minmax176, <4 x i32> %i.gr)
  %i.gt = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax177) ; 2 uses
  %.not196 = icmp eq i32 %i.gt, -2147483648
  %i.gu = select i1 %.not196, i32 -1, i32 %i.gt   ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ft, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1951

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %bc.merge.rdx = phi i32 [ %i.gu, %vec.epilog.iter.check ], [ -1, %vector.main.loop.iter.check ] ; 2 uses
  %i.gv = and i64 %wide.trip.count, 3             ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  %i.gx = select i1 %i.gw, i64 4, i64 %i.gv
  %n.vec178 = sub nsw i64 %wide.trip.count, %i.gx ; 2 uses
  %22 = icmp eq i32 %bc.merge.rdx, -1
  %23 = select i1 %22, i32 -2147483648, i32 %bc.merge.rdx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %23, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat180 = shufflevector <4 x i64> %broadcast.splatinsert179, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat180, <i64 0, i64 1, i64 2, i64 3>
  %i.gy = trunc i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert181 = insertelement <4 x i32> poison, i32 %i.gy, i64 0
  %broadcast.splat182 = shufflevector <4 x i32> %broadcast.splatinsert181, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction183 = add <4 x i32> %broadcast.splat182, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next192, %vec.epilog.vector.body ]
  %vec.ind185 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next193, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi186 = phi <4 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.he, %vec.epilog.vector.body ]
  %vec.ind187 = phi <4 x i32> [ %induction183, %vec.epilog.ph ], [ %vec.ind.next194, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep188 = getelementptr inbounds nuw [24 x i8], ptr %i.fq, <4 x i64> %vec.ind185 ; 2 uses
  %wide.gep189 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep188, i64 8
  %wide.masked.gather190 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep189, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1949
  %wide.masked.gather191 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep188, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !1950
  %i.gz = ptrtoint <4 x ptr> %wide.masked.gather190 to <4 x i64>
  %i.ha = ptrtoint <4 x ptr> %wide.masked.gather191 to <4 x i64>
  %i.hb = sub <4 x i64> %i.gz, %i.ha
  %i.hc = and <4 x i64> %i.hb, splat (i64 34359738360)
  %i.hd = icmp eq <4 x i64> %i.hc, zeroinitializer
  %i.he = select <4 x i1> %i.hd, <4 x i32> %vec.phi186, <4 x i32> %vec.ind187 ; 2 uses
  %index.next192 = add nuw i64 %index184, 4       ; 2 uses
  %vec.ind.next193 = add nuw nsw <4 x i64> %vec.ind185, splat (i64 4)
  %vec.ind.next194 = add <4 x i32> %vec.ind187, splat (i32 4)
  %i.hf = icmp eq i64 %index.next192, %n.vec178
  br i1 %i.hf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1877

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hg = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.he) ; 2 uses
  %.not197 = icmp eq i32 %i.hg, -2147483648
  %i.hh = select i1 %.not197, i32 -1, i32 %i.hg
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec178, %vec.epilog.middle.block ]
  %.020110.ph = phi i32 [ -1, %iter.check ], [ %i.gu, %vec.epilog.iter.check ], [ %i.hh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph
  %i.hi = add nsw i32 %spec.select, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.020.lcssa = phi i32 [ 0, %.preheader ], [ %i.hi, %._crit_edge.loopexit ]
  store i32 %.020.lcssa, ptr %3, align 4, !tbaa !134
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !114 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i100, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.020110 = phi i32 [ %spec.select, %vec.epilog.scalar.ph ], [ %.020110.ph, %vec.epilog.scalar.ph.preheader ]
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %indvars.iv ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !1949
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !1950
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = and i64 %i.hs, 34359738360
  %.not = icmp eq i64 %i.ht, 0
  %i.hu = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %.not, i32 %.020110, i32 %i.hu ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1878

bb.aj:                                            ; preds = %._crit_edge, %bb.x
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.hv) #36
  %i.hw = load ptr, ptr %20, align 8, !tbaa !100  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZN7rocksdb22ColumnFamilyDescriptorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90: ; preds = %bb.aj
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !101
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #38
  br label %_ZN7rocksdb22ColumnFamilyDescriptorD2Ev.exit

_ZN7rocksdb22ColumnFamilyDescriptorD2Ev.exit:     ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.ib = load ptr, ptr %19, align 8, !tbaa !323  ; 3 uses
  %i.ic = load ptr, ptr %i.ec, align 8, !tbaa !338 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ib, %i.ic
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb22ColumnFamilyDescriptorD2Ev.exit, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ij, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i ], [ %i.ib, %_ZN7rocksdb22ColumnFamilyDescriptorD2Ev.exit ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.id) #36
  %i.ie = load ptr, ptr %.05.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !101
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #38
  br label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 1008 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.ij, %i.ic
  br i1 %.not.i.i.i93, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !323
  br label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN7rocksdb22ColumnFamilyDescriptorD2Ev.exit
  %i.ik = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ib, %_ZN7rocksdb22ColumnFamilyDescriptorD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i
  %i.il = load ptr, ptr %i.ee, align 8, !tbaa !339
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.io) #38
  br label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @_ZN7rocksdb10VersionSetD1Ev(ptr noundef nonnull align 8 dead_on_return(874) dereferenceable(874) %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @_ZN7rocksdb18WriteBufferManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(154) dereferenceable(160) %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.ip = load ptr, ptr %i.u, align 8, !tbaa !515 ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i94, label %_ZN7rocksdb15WriteControllerD2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb11RateLimiterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb11RateLimiterEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !127
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(12) %i.ip) #36, !inline_history !22
  br label %_ZN7rocksdb15WriteControllerD2Ev.exit

_ZN7rocksdb15WriteControllerD2Ev.exit:            ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb11RateLimiterEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !133 ; 8 uses
  %.not.i.i95 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i95, label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit99, label %bb.al

bb.al:                                            ; preds = %_ZN7rocksdb15WriteControllerD2Ev.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 4 uses
  %i.iw = load atomic i64, ptr %i.iv acquire, align 8 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 4294967297
  %i.iy = trunc i64 %i.iw to i32                  ; 2 uses
  br i1 %i.ix, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.iv, align 8, !tbaa !136
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  store i32 0, ptr %i.iz, align 4, !tbaa !137
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !127
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #36, !inline_history !16
  %i.jd = load ptr, ptr %i.iu, align 8, !tbaa !127
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #36, !inline_history !16
  br label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit99

bb.an:                                            ; preds = %bb.al
  %i.jg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i96 = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i.i96, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jh = add nsw i32 %i.iy, -1
  store i32 %i.jh, ptr %i.iv, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i97

bb.ap:                                            ; preds = %bb.an
  %i.ji = atomicrmw volatile add ptr %i.iv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i97

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i97: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i98 = phi i32 [ %i.iy, %bb.ao ], [ %i.ji, %bb.ap ]
  %i.jj = icmp eq i32 %.0.i.i.i.i98, 1
  br i1 %i.jj, label %bb.aq, label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit99, !prof !97

end_hunk_0
