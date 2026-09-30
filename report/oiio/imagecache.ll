Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagecache?download=true
inline.NumInlined: 13633
inline.NumDeleted: 4658
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a
  %i.wi = load ptr, ptr %30, align 8, !tbaa !138  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %bb.cj
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !139
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %bb.ci
  %.pn225 = phi { ptr, i32 } [ %i.wg, %bb.ci ], [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.wh, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #5
  br label %bb.fx

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i404, %bb.bf
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wp = load ptr, ptr %31, align 8, !tbaa !138  ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.wr = icmp eq ptr %i.wp, %i.wq
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %bb.cl
  %i.ws = load i64, ptr %i.wq, align 8, !tbaa !139
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.wt) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463, %bb.ck
  %.pn227 = phi { ptr, i32 } [ %i.wn, %bb.ck ], [ %i.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463 ], [ %i.wo, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #5
  br label %bb.fx

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i413, %bb.bh
  %i.wv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ww = load ptr, ptr %32, align 8, !tbaa !138  ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.wy = icmp eq ptr %i.ww, %i.wx
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %bb.cn
  %i.wz = load i64, ptr %i.wx, align 8, !tbaa !139
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.xa) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466, %bb.cm
  %.pn229 = phi { ptr, i32 } [ %i.wu, %bb.cm ], [ %i.wv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466 ], [ %i.wv, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #5
  br label %bb.fx

bb.co:                                            ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i423, %bb.bk
  %i.xc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xd = load ptr, ptr %33, align 8, !tbaa !138  ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %bb.cp
  %i.xg = load i64, ptr %i.xe, align 8, !tbaa !139
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xh) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.co
  %.pn231 = phi { ptr, i32 } [ %i.xb, %bb.co ], [ %i.xc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ], [ %i.xc, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #5
  br label %bb.fx

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

bb.cr:                                            ; preds = %bb.bl
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xk = load ptr, ptr %34, align 8, !tbaa !138  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.cr
  %i.xn = load i64, ptr %i.xl, align 8, !tbaa !139
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xo) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472, %bb.cq
  %.pn233 = phi { ptr, i32 } [ %i.xi, %bb.cq ], [ %i.xj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ], [ %i.xj, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #5
  br label %bb.fx

bb.cs:                                            ; preds = %bb.bo
  %i.xp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  br label %bb.fx

bb.ct:                                            ; preds = %bb.bp
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

bb.cu:                                            ; preds = %bb.bq
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xs = load ptr, ptr %38, align 8, !tbaa !138  ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.xu = icmp eq ptr %i.xs, %i.xt
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %bb.cu
  %i.xv = load i64, ptr %i.xt, align 8, !tbaa !139
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475, %bb.ct
  %.pn235 = phi { ptr, i32 } [ %i.xq, %bb.ct ], [ %i.xr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475 ], [ %i.xr, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #5
  br label %bb.fx

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

bb.cw:                                            ; preds = %bb.bs
  %i.xy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xz = load ptr, ptr %39, align 8, !tbaa !138  ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.yb = icmp eq ptr %i.xz, %i.ya
  br i1 %i.yb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478: ; preds = %bb.cw
  %i.yc = load i64, ptr %i.ya, align 8, !tbaa !139
  %i.yd = add i64 %i.yc, 1
  call void @_ZdlPvm(ptr noundef %i.xz, i64 noundef %i.yd) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478, %bb.cv
  %.pn237 = phi { ptr, i32 } [ %i.xx, %bb.cv ], [ %i.xy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478 ], [ %i.xy, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #5
  br label %bb.fx

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

bb.cy:                                            ; preds = %bb.bu
  %i.yf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yg = load ptr, ptr %40, align 8, !tbaa !138  ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.yi = icmp eq ptr %i.yg, %i.yh
  br i1 %i.yi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481: ; preds = %bb.cy
  %i.yj = load i64, ptr %i.yh, align 8, !tbaa !139
  %i.yk = add i64 %i.yj, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yk) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481, %bb.cx
  %.pn239 = phi { ptr, i32 } [ %i.ye, %bb.cx ], [ %i.yf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481 ], [ %i.yf, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #5
  br label %bb.fx

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.134, i64 19)
          to label %bb.da unwind label %bb.ap

bb.da:                                            ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %i.yl = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !622 ; 2 uses
  %i.yn = fcmp ogt double %i.ym, 1.000000e-03
  %i.yo = icmp sgt i32 %2, 2                      ; 13 uses
  %or.cond = or i1 %i.yo, %i.yn
  br i1 %or.cond, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #5
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, double noundef %i.ym, i32 noundef 1)
          to label %bb.dc unwind label %bb.de

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.135, i64 24, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.yp = load ptr, ptr %41, align 8, !tbaa !138  ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.yr = icmp eq ptr %i.yp, %i.yq
  br i1 %i.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484: ; preds = %bb.dd
  %i.ys = load i64, ptr %i.yq, align 8, !tbaa !139
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.yt) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #5
  br label %bb.dg

bb.de:                                            ; preds = %bb.db
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

bb.df:                                            ; preds = %bb.dc
  %i.yv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yw = load ptr, ptr %41, align 8, !tbaa !138  ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.yy = icmp eq ptr %i.yw, %i.yx
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487: ; preds = %bb.df
  %i.yz = load i64, ptr %i.yx, align 8, !tbaa !139
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.za) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487, %bb.de
  %.pn241 = phi { ptr, i32 } [ %i.yu, %bb.de ], [ %i.yv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487 ], [ %i.yv, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #5
  br label %bb.fx

bb.dg:                                            ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486
  %i.zb = load double, ptr %i.ag, align 8, !tbaa !623 ; 2 uses
  %i.zc = fcmp ogt double %i.zb, 1.000000e-03
  %or.cond3 = or i1 %i.yo, %i.zc
  br i1 %or.cond3, label %bb.dh, label %bb.ea

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #5
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, double noundef %i.zb, i32 noundef 1)
          to label %bb.di unwind label %bb.dq

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.136, i64 22, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.dj unwind label %bb.dr

bb.dj:                                            ; preds = %bb.di
  %i.zd = load ptr, ptr %42, align 8, !tbaa !138  ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.zf = icmp eq ptr %i.zd, %i.ze
  br i1 %i.zf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490: ; preds = %bb.dj
  %i.zg = load i64, ptr %i.ze, align 8, !tbaa !139
  %i.zh = add i64 %i.zg, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zh) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #5
  %i.zi = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i493 = icmp eq i8 %i.zi, 0
  br i1 %.0.in.i.not.i2.i.i493, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit505, label %.preheader.i.i494

.preheader.i.i494:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492, %.preheader.i.i494.backedge
  %.sroa.0.1.i.i496 = phi i32 [ %.sroa.0.2.i.i500, %.preheader.i.i494.backedge ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492 ] ; 5 uses
  %.not.i.i.i497 = icmp sgt i32 %.sroa.0.1.i.i496, 16
  br i1 %.not.i.i.i497, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.preheader.i.i494
  %i.zj = icmp sgt i32 %.sroa.0.1.i.i496, 0
  br i1 %i.zj, label %.lr.ph.i.i.i.i502, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498

.lr.ph.i.i.i.i502:                                ; preds = %bb.dk, %.lr.ph.i.i.i.i502
  %.03.i.i.i.i503 = phi i32 [ %i.zk, %.lr.ph.i.i.i.i502 ], [ 0, %bb.dk ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !472
  %i.zk = add nuw nsw i32 %.03.i.i.i.i503, 1      ; 2 uses
  %exitcond.not.i.i.i.i504 = icmp eq i32 %i.zk, %.sroa.0.1.i.i496
  br i1 %exitcond.not.i.i.i.i504, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498, label %.lr.ph.i.i.i.i502, !llvm.loop !9

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498:      ; preds = %.lr.ph.i.i.i.i502, %bb.dk
  %i.zl = shl nsw i32 %.sroa.0.1.i.i496, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499

bb.dl:                                            ; preds = %.preheader.i.i494
  %i.zm = call noundef i32 @sched_yield() #5      ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499: ; preds = %bb.dl, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498
  %.sroa.0.2.i.i500 = phi i32 [ %.sroa.0.1.i.i496, %bb.dl ], [ %i.zl, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498 ]
  %i.zn = load volatile i8, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, align 1, !tbaa !473, !range !395, !noundef !326
  %i.zo = trunc nuw i8 %i.zn to i1
  br i1 %i.zo, label %.preheader.i.i494.backedge, label %bb.dm

.preheader.i.i494.backedge:                       ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499, %bb.dm
  br label %.preheader.i.i494, !llvm.loop !10

bb.dm:                                            ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499
  %i.zp = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i501 = icmp eq i8 %i.zp, 0
  br i1 %.0.in.i.not.i.i.i501, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit505, label %.preheader.i.i494.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit505: ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.zq = load ptr, ptr %i.at, align 16, !tbaa !561
  %i.zr = load ptr, ptr %i.ar, align 8, !tbaa !563
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = sub i64 %i.zs, %i.zt
  %i.zv = ashr exact i64 %i.zu, 3                 ; 3 uses
  store i64 %i.zv, ptr %i.l, align 8, !tbaa !288
  %i.zw = icmp ugt i64 %i.zv, 1
  %or.cond5 = or i1 %i.yo, %i.zw
  br i1 %or.cond5, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit505
  %i.zx = load double, ptr %i.ag, align 8, !tbaa !623
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.zv, i64 1)
  %i.zy = uitofp i64 %.sroa.speculated to double
  %i.zz = fdiv double %i.zx, %i.zy
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #5
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, double noundef %i.zz, i32 noundef 1)
          to label %bb.do unwind label %bb.ds

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.137, i64 40, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %i.aaa = load ptr, ptr %43, align 8, !tbaa !138 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.aac = icmp eq ptr %i.aaa, %i.aab
  br i1 %i.aac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506: ; preds = %bb.dp
  %i.aad = load i64, ptr %i.aab, align 8, !tbaa !139
  %i.aae = add i64 %i.aad, 1
  call void @_ZdlPvm(ptr noundef %i.aaa, i64 noundef %i.aae) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #5
  br label %bb.du

bb.dq:                                            ; preds = %bb.dh
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

bb.dr:                                            ; preds = %bb.di
  %i.aag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aah = load ptr, ptr %42, align 8, !tbaa !138 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.aaj = icmp eq ptr %i.aah, %i.aai
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %bb.dr
  %i.aak = load i64, ptr %i.aai, align 8, !tbaa !139
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aal) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509, %bb.dq
  %.pn243 = phi { ptr, i32 } [ %i.aaf, %bb.dq ], [ %i.aag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509 ], [ %i.aag, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #5
  br label %bb.fx

bb.ds:                                            ; preds = %bb.dn
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

bb.dt:                                            ; preds = %bb.do
  %i.aan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aao = load ptr, ptr %43, align 8, !tbaa !138 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.aaq = icmp eq ptr %i.aao, %i.aap
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc567:                                        ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i
  %.not7.i.i.i.i = icmp eq ptr %i.agl, %i.agb
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i564

.lr.ph.i.i.i.i564:                                ; preds = %.noexc567, %.noexc568
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.ahp, %.noexc568 ], [ %i.agl, %.noexc567 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.0.08.i.i.i.i, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc568 unwind label %.loopexit1179

.noexc568:                                        ; preds = %.lr.ph.i.i.i.i564
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i565 = icmp eq ptr %i.ahp, %i.agb
  br i1 %.not.i.i.i.i565, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i564, !llvm.loop !1420

bb.gl:                                            ; preds = %.noexc566
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_(ptr %i.agc, ptr %i.agb, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit unwind label %.loopexit.split-lp1180.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit: ; preds = %.noexc568, %bb.gl, %.noexc567
  %i.ahq = load ptr, ptr %i.fd, align 8, !tbaa !614 ; 2 uses
  %i.ahr = load ptr, ptr %17, align 8, !tbaa !616 ; 3 uses
  %.not1326 = icmp eq ptr %i.ahq, %i.ahr
  br i1 %.not1326, label %._crit_edge1242, label %.lr.ph1241

.lr.ph1241:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  %i.ahs = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.aht = ptrtoint ptr %i.ahq to i64
  %i.ahu = ptrtoint ptr %i.ahr to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  %i.ahw = ashr exact i64 %i.ahv, 3
  br label %bb.gm

._crit_edge1242:                                  ; preds = %bb.gv, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  %i.ahx = uitofp i64 %.0 to double
  %i.ahy = fmul nnan double %i.ahx, f0x3F50000000000000
  %i.ahz = fmul nnan double %i.ahy, f0x3F50000000000000
  store double %i.ahz, ptr %i.r, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #5
  %i.aia = uitofp i64 %.0149 to double
  %i.aib = fmul nnan double %i.aia, f0x3F50000000000000
  %i.aic = fmul nnan double %i.aib, f0x3F50000000000000
  store double %i.aic, ptr %i.s, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #5
  %i.aid = extractelement <2 x double> %i.ff, i64 0
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, double noundef %i.aid, i32 noundef 1)
          to label %bb.gy unwind label %bb.ha

bb.gm:                                            ; preds = %.lr.ph1241, %bb.gv
  %.02021239 = phi i64 [ 0, %.lr.ph1241 ], [ %i.ajd, %bb.gv ] ; 3 uses
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.ahr, i64 %.02021239 ; 3 uses
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !491 ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 166
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !289
  %.not1155 = icmp eq i16 %i.aih, 0
  br i1 %.not1155, label %bb.gn, label %bb.gv

bb.gn:                                            ; preds = %bb.gm
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 25
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !259, !range !395, !noundef !326
  %i.aik = trunc nuw i8 %i.aij to i1
  br i1 %i.aik, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aif, i64 80
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 88
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !321
  %i.aio = load ptr, ptr %i.ail, align 8, !tbaa !320
  %i.aip = ptrtoint ptr %i.ain to i64
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = sub i64 %i.aip, %i.aiq
  %i.ais = and i64 %i.air, 549755813760
  %i.ait = icmp eq i64 %i.ais, 0
  br i1 %i.ait, label %bb.gp, label %bb.gs

bb.gp:                                            ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #5
  %i.aiu = load ptr, ptr %i.aie, align 8, !tbaa !491
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aiv, align 8, !tbaa !207
  store ptr %.sroa.0.0.copyload.i, ptr %51, align 8
  invoke void @_ZN3fmt3v125printIJRA7_KcN11OpenImageIO4v3_17ustringEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.152, i64 10, ptr noundef nonnull align 1 dereferenceable(7) @.str.153, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #5
  br label %bb.gv

bb.gr:                                            ; preds = %bb.gp
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #5
  br label %.body

bb.gs:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #5
  %i.aix = trunc i64 %.02021239 to i32
  %i.aiy = add i32 %i.aix, 1
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr noundef nonnull align 64 dereferenceable(25240) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.aie, i32 noundef %i.aiy, i1 noundef zeroext true)
          to label %bb.gt unwind label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.154, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.gu unwind label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.aiz = load ptr, ptr %52, align 8, !tbaa !138 ; 2 uses
  %i.aja = icmp eq ptr %i.aiz, %i.ahs
  br i1 %i.aja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570: ; preds = %bb.gu
  %i.ajb = load i64, ptr %i.ahs, align 8, !tbaa !139
  %i.ajc = add i64 %i.ajb, 1
  call void @_ZdlPvm(ptr noundef %i.aiz, i64 noundef %i.ajc) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #5
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %bb.gq
  %i.ajd = add nuw i64 %.02021239, 1              ; 2 uses
  %i.aje = icmp ult i64 %i.ajd, %i.ahw
  br i1 %i.aje, label %bb.gm, label %._crit_edge1242, !llvm.loop !1421

bb.gw:                                            ; preds = %bb.gs
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

bb.gx:                                            ; preds = %bb.gt
  %i.ajg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajh = load ptr, ptr %52, align 8, !tbaa !138 ; 2 uses
  %i.aji = icmp eq ptr %i.ajh, %i.ahs
  br i1 %i.aji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573: ; preds = %bb.gx
  %i.ajj = load i64, ptr %i.ahs, align 8, !tbaa !139
  %i.ajk = add i64 %i.ajj, 1
  call void @_ZdlPvm(ptr noundef %i.ajh, i64 noundef %i.ajk) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573, %bb.gw
  %.pn284 = phi { ptr, i32 } [ %i.ajf, %bb.gw ], [ %i.ajg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573 ], [ %i.ajg, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #5
  br label %.body

bb.gy:                                            ; preds = %._crit_edge1242
  invoke void @_ZN3fmt3v125printIJRmS2_dS2_dNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.155, i64 52, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %53)
          to label %bb.gz unwind label %bb.hb

bb.gz:                                            ; preds = %bb.gy
  %i.ajl = load ptr, ptr %53, align 8, !tbaa !138 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.ajn = icmp eq ptr %i.ajl, %i.ajm
  br i1 %i.ajn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576: ; preds = %bb.gz
  %i.ajo = load i64, ptr %i.ajm, align 8, !tbaa !139
  %i.ajp = add i64 %i.ajo, 1
  call void @_ZdlPvm(ptr noundef %i.ajl, i64 noundef %i.ajp) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  br label %.thread1137

bb.ha:                                            ; preds = %._crit_edge1242
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

bb.hb:                                            ; preds = %bb.gy
  %i.ajr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajs = load ptr, ptr %53, align 8, !tbaa !138 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.aju = icmp eq ptr %i.ajs, %i.ajt
  br i1 %i.aju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %bb.hb
  %i.ajv = load i64, ptr %i.ajt, align 8, !tbaa !139
  %i.ajw = add i64 %i.ajv, 1
  call void @_ZdlPvm(ptr noundef %i.ajs, i64 noundef %i.ajw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581: ; preds = %bb.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579, %bb.ha
  %.pn266 = phi { ptr, i32 } [ %i.ajq, %bb.ha ], [ %i.ajr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579 ], [ %i.ajr, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  br label %.body

.thread1137:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i558, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, %bb.fy
  %i.ajx = load i64, ptr %i.g, align 8, !tbaa !288
  %i.ajy = icmp ne i64 %i.ajx, 0
  %or.cond20 = or i1 %i.yo, %i.ajy
  br i1 %or.cond20, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %.thread1137
  invoke void @_ZN3fmt3v125printIJRmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.156, i64 43, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.hd unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.hd:                                            ; preds = %bb.hc, %.thread1137
  %i.ajz = load i64, ptr %i.e, align 8, !tbaa !288
  %.not268 = icmp eq i64 %i.ajz, 0
  br i1 %.not268, label %bb.he, label %bb.hh

bb.he:                                            ; preds = %bb.hd
  %i.aka = load i64, ptr %i.f, align 8, !tbaa !288
  %.not269 = icmp eq i64 %i.aka, 0
  br i1 %.not269, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.akb = load i8, ptr %i.ou, align 1, !tbaa !460, !range !395, !noundef !326
  %i.akc = trunc nuw i8 %i.akb to i1
  %or.cond22 = or i1 %i.yo, %i.akc
  br i1 %or.cond22, label %bb.hh, label %bb.hi

bb.hg:                                            ; preds = %bb.he
  br i1 %i.yo, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg, %bb.hf, %bb.hd
  invoke void @_ZN3fmt3v125printIJRmS2_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.157, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.hi unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.hi:                                            ; preds = %bb.hh, %bb.hf, %bb.hg
  %i.akd = load i64, ptr %i.h, align 8, !tbaa !288 ; 2 uses
  %i.ake = icmp ne i64 %i.akd, 0
  %or.cond25 = or i1 %i.yo, %i.ake
  br i1 %or.cond25, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #5
  %i.akf = icmp eq i64 %i.akd, 1
  %i.akg = select i1 %i.akf, ptr @.str.159, ptr @.str.160
  store ptr %i.akg, ptr %i.t, align 8, !tbaa !207
  invoke void @_ZN3fmt3v125printIJRmPKcEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.158, i64 38, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.hk unwind label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.akh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  br label %.body

bb.hm:                                            ; preds = %bb.hi, %bb.hk
  %i.aki = load ptr, ptr %i.fd, align 8, !tbaa !614 ; 8 uses
  %i.akj = load ptr, ptr %17, align 8, !tbaa !616 ; 15 uses
  %i.akk = ptrtoint ptr %i.aki to i64
  %i.akl = ptrtoint ptr %i.akj to i64             ; 2 uses
  %i.akm = sub i64 %i.akk, %i.akl                 ; 2 uses
  %i.akn = ashr exact i64 %i.akm, 3               ; 2 uses
  %i.ako = icmp ugt i64 %i.akn, 49
  %or.cond28 = or i1 %i.yo, %i.ako
  br i1 %or.cond28, label %bb.hn, label %bb.mr

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #5
  %.not.i.i582 = icmp eq ptr %i.akj, %i.aki
  br i1 %.not.i.i582, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.akp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.akn, i1 true)
  %i.akq = shl nuw nsw i64 %i.akp, 1
  %i.akr = xor i64 %i.akq, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.akj, ptr %i.aki, i64 noundef %i.akr, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_117bytesread_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc587 unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

.noexc587:                                        ; preds = %bb.ho
  %i.aks = icmp sgt i64 %i.akm, 128
  br i1 %i.aks, label %.preheader1674, label %.preheader.i

.preheader1674:                                   ; preds = %.noexc587, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705
  %.sroa.013.027.i703.idx = phi i64 [ %.sroa.013.027.i703.add, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705 ], [ 8, %.noexc587 ] ; 3 uses
  %.pn26.i704 = phi ptr [ %.sroa.013.027.i703.ptr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705 ], [ %i.akj, %.noexc587 ]
  %.sroa.013.027.i703.ptr = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.sroa.013.027.i703.idx ; 7 uses
  %i.akt = load ptr, ptr %.sroa.013.027.i703.ptr, align 8, !tbaa !491 ; 4 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 192 ; 2 uses
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !596 ; 2 uses
  %i.akw = load ptr, ptr %i.akj, align 8, !tbaa !491
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 192
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !596
  %i.akz = icmp ugt i64 %i.akv, %i.aky
  store ptr null, ptr %.sroa.013.027.i703.ptr, align 8, !tbaa !491
  br i1 %i.akz, label %.lr.ph.i.i.i.i.i.preheader.i710, label %bb.ht

.lr.ph.i.i.i.i.i.preheader.i710:                  ; preds = %.preheader1674
  %i.ala = lshr exact i64 %.sroa.013.027.i703.idx, 3
  %i.alb = getelementptr inbounds nuw i8, ptr %.pn26.i704, i64 16
  br label %.lr.ph.i.i.i.i.i.i711

.lr.ph.i.i.i.i.i.i711:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716, %.lr.ph.i.i.i.i.i.preheader.i710
  %.010.i.i.i.i.i.i712 = phi i64 [ %i.ali, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716 ], [ %i.ala, %.lr.ph.i.i.i.i.i.preheader.i710 ] ; 2 uses
  %.069.i.i.i.i.i.i713 = phi ptr [ %i.ald, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716 ], [ %i.alb, %.lr.ph.i.i.i.i.i.preheader.i710 ]
  %.078.i.i.i.i.i.i714 = phi ptr [ %i.alc, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716 ], [ %.sroa.013.027.i703.ptr, %.lr.ph.i.i.i.i.i.preheader.i710 ]
  %i.alc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i714, i64 -8 ; 3 uses
  %i.ald = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i713, i64 -8 ; 3 uses
  %i.ale = load ptr, ptr %i.alc, align 8, !tbaa !491
  store ptr null, ptr %i.alc, align 8, !tbaa !491
  %i.alf = load ptr, ptr %i.ald, align 8, !tbaa !491 ; 4 uses
  store ptr %i.ale, ptr %i.ald, align 8, !tbaa !491
  %.not.i.i.i.i.i.i.i.i715 = icmp eq ptr %i.alf, null
  br i1 %.not.i.i.i.i.i.i.i.i715, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716, label %bb.hp

bb.hp:                                            ; preds = %.lr.ph.i.i.i.i.i.i711
  %i.alg = atomicrmw sub ptr %i.alf, i32 1 seq_cst, align 4
  %i.alh = icmp eq i32 %i.alg, 1
  br i1 %i.alh, label %bb.hq, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.alf) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.alf, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716: ; preds = %bb.hq, %bb.hp, %.lr.ph.i.i.i.i.i.i711
  %i.ali = add nsw i64 %.010.i.i.i.i.i.i712, -1
  %i.alj = icmp sgt i64 %.010.i.i.i.i.i.i712, 1
  br i1 %i.alj, label %.lr.ph.i.i.i.i.i.i711, label %.loopexit.i708, !llvm.loop !22

.loopexit.i708:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716
  %i.alk = load ptr, ptr %i.akj, align 8, !tbaa !491 ; 4 uses
  store ptr %i.akt, ptr %i.akj, align 8, !tbaa !491
  %.not.i.i.i709 = icmp eq ptr %i.alk, null
  br i1 %.not.i.i.i709, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705, label %bb.hr

bb.hr:                                            ; preds = %.loopexit.i708
  %i.all = atomicrmw sub ptr %i.alk, i32 1 seq_cst, align 4
  %i.alm = icmp eq i32 %i.all, 1
  br i1 %i.alm, label %bb.hs, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

bb.hs:                                            ; preds = %bb.hr
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.alk) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.alk, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

bb.ht:                                            ; preds = %.preheader1674
  %.sroa.0.0.i9041249 = getelementptr inbounds i8, ptr %.sroa.013.027.i703.ptr, i64 -8 ; 2 uses
  %i.aln = load ptr, ptr %.sroa.0.0.i9041249, align 8, !tbaa !491 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 192
  %i.alp = load i64, ptr %i.alo, align 8, !tbaa !596
  %i.alq = icmp ugt i64 %i.akv, %i.alp
  br i1 %i.alq, label %.lr.ph1253, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge.thread

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge.thread: ; preds = %bb.ht
  store ptr %i.akt, ptr %.sroa.013.027.i703.ptr, align 8, !tbaa !491
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

.lr.ph1253:                                       ; preds = %bb.ht, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913
  %i.alr = phi ptr [ %i.alw, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913 ], [ %i.aln, %bb.ht ]
  %.sroa.0.0.i9041251 = phi ptr [ %.sroa.0.0.i904, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913 ], [ %.sroa.0.0.i9041249, %bb.ht ] ; 5 uses
  %.sroa.08.0.i9031250 = phi ptr [ %.sroa.0.0.i9041251, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913 ], [ %.sroa.013.027.i703.ptr, %bb.ht ] ; 2 uses
  store ptr null, ptr %.sroa.0.0.i9041251, align 8, !tbaa !491
  %i.als = load ptr, ptr %.sroa.08.0.i9031250, align 8, !tbaa !491 ; 4 uses
  store ptr %i.alr, ptr %.sroa.08.0.i9031250, align 8, !tbaa !491
  %.not.i.i.i912 = icmp eq ptr %i.als, null
  br i1 %.not.i.i.i912, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913, label %bb.hu

bb.hu:                                            ; preds = %.lr.ph1253
  %i.alt = atomicrmw sub ptr %i.als, i32 1 seq_cst, align 4
  %i.alu = icmp eq i32 %i.alt, 1
  br i1 %i.alu, label %bb.hv, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.als) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.als, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913: ; preds = %bb.hv, %bb.hu, %.lr.ph1253
  %.sroa.0.0.i904 = getelementptr inbounds i8, ptr %.sroa.0.0.i9041251, i64 -8 ; 2 uses
  %i.alv = load i64, ptr %i.aku, align 8, !tbaa !596
  %i.alw = load ptr, ptr %.sroa.0.0.i904, align 8, !tbaa !491 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 192
  %i.aly = load i64, ptr %i.alx, align 8, !tbaa !596
  %i.alz = icmp ugt i64 %i.alv, %i.aly
  br i1 %i.alz, label %.lr.ph1253, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge, !llvm.loop !24

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913
  %.pre1346 = load ptr, ptr %.sroa.0.0.i9041251, align 8, !tbaa !491 ; 4 uses
  store ptr %i.akt, ptr %.sroa.0.0.i9041251, align 8, !tbaa !491
  %.not.i.i1.i908 = icmp eq ptr %.pre1346, null
  br i1 %.not.i.i1.i908, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705, label %bb.hw

bb.hw:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge
  %i.ama = atomicrmw sub ptr %.pre1346, i32 1 seq_cst, align 4
  %i.amb = icmp eq i32 %i.ama, 1
  br i1 %i.amb, label %bb.hx, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

bb.hx:                                            ; preds = %bb.hw
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pre1346) #5
  call void @_ZdlPvm(ptr noundef nonnull %.pre1346, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge.thread, %bb.hw, %bb.hx, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge, %bb.hs, %bb.hr, %.loopexit.i708
  %.sroa.013.027.i703.add = add nuw nsw i64 %.sroa.013.027.i703.idx, 8 ; 2 uses
  %.not.i707 = icmp eq i64 %.sroa.013.027.i703.add, 128
  br i1 %.not.i707, label %.noexc588, label %.preheader1674, !llvm.loop !23

.noexc588:                                        ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705
  %i.amc = getelementptr inbounds nuw i8, ptr %i.akj, i64 128 ; 2 uses
  %.not7.i.i.i.i583 = icmp eq ptr %i.amc, %i.aki
  br i1 %.not7.i.i.i.i583, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, label %.lr.ph.i.i.i.i584

.lr.ph.i.i.i.i584:                                ; preds = %.noexc588, %.noexc589
  %.sroa.0.08.i.i.i.i585 = phi ptr [ %i.amv, %.noexc589 ], [ %i.amc, %.noexc588 ] ; 6 uses
  %i.amd = load ptr, ptr %.sroa.0.08.i.i.i.i585, align 8, !tbaa !491 ; 3 uses
  store ptr null, ptr %.sroa.0.08.i.i.i.i585, align 8, !tbaa !491
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 192 ; 2 uses
  %.sroa.0.0.i1255 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i585, i64 -8 ; 2 uses
  %i.amf = load i64, ptr %i.ame, align 8, !tbaa !596
  %i.amg = load ptr, ptr %.sroa.0.0.i1255, align 8, !tbaa !491 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 192
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !596
  %i.amj = icmp ugt i64 %i.amf, %i.ami
  br i1 %i.amj, label %.lr.ph1258, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge.thread

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge.thread: ; preds = %.lr.ph.i.i.i.i584
  store ptr %i.amd, ptr %.sroa.0.08.i.i.i.i585, align 8, !tbaa !491
  br label %.noexc589

.lr.ph1258:                                       ; preds = %.lr.ph.i.i.i.i584, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i
  %i.amk = phi ptr [ %i.amp, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i ], [ %i.amg, %.lr.ph.i.i.i.i584 ]
  %.sroa.0.0.i1257 = phi ptr [ %.sroa.0.0.i, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i ], [ %.sroa.0.0.i1255, %.lr.ph.i.i.i.i584 ] ; 5 uses
  %.sroa.08.0.i1256 = phi ptr [ %.sroa.0.0.i1257, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i ], [ %.sroa.0.08.i.i.i.i585, %.lr.ph.i.i.i.i584 ] ; 2 uses
  store ptr null, ptr %.sroa.0.0.i1257, align 8, !tbaa !491
  %i.aml = load ptr, ptr %.sroa.08.0.i1256, align 8, !tbaa !491 ; 4 uses
  store ptr %i.amk, ptr %.sroa.08.0.i1256, align 8, !tbaa !491
  %.not.i.i.i696 = icmp eq ptr %i.aml, null
  br i1 %.not.i.i.i696, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph1258
  %i.amm = atomicrmw sub ptr %i.aml, i32 1 seq_cst, align 4
  %i.amn = icmp eq i32 %i.amm, 1
  br i1 %i.amn, label %bb.hz, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i

bb.hz:                                            ; preds = %bb.hy
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.aml) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.aml, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i: ; preds = %bb.hz, %bb.hy, %.lr.ph1258
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1257, i64 -8 ; 2 uses
  %i.amo = load i64, ptr %i.ame, align 8, !tbaa !596
  %i.amp = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !491 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 192
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !596
  %i.ams = icmp ugt i64 %i.amo, %i.amr
  br i1 %i.ams, label %.lr.ph1258, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge, !llvm.loop !24

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i
  %.pre1347 = load ptr, ptr %.sroa.0.0.i1257, align 8, !tbaa !491 ; 4 uses
  store ptr %i.amd, ptr %.sroa.0.0.i1257, align 8, !tbaa !491
  %.not.i.i1.i694 = icmp eq ptr %.pre1347, null
  br i1 %.not.i.i1.i694, label %.noexc589, label %bb.ia

end_hunk_1
